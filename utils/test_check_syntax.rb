#!/usr/bin/env ruby
# Exercise the validator in isolated packages, including embedded escape rules.
require 'open3'
require 'rbconfig'
require 'tmpdir'
require 'yaml'

validator = File.expand_path('check_syntax.rb', __dir__)
cases = {
  'fast match and escape' => ['word', 'end', {}, true],
  'negative lookbehind in match' => ['(?<!x)word', 'end', {}, false],
  'positive lookbehind in match' => ['(?<=x)word', 'end', {}, false],
  'negative lookbehind in escape' => ['word', '(?<!x)end', {}, false],
  'positive lookbehind in escape' => ['word', '(?<=x)end', {}, false],
  'lookbehind through a variable' => ['word', '{{end}}', {'end' => '(?<=x)end'}, false]
}

cases.each do |name, (match, escape, variables, expected_success)|
  Dir.mktmpdir('swift-syntax-validator-') do |dir|
    document = {
      'variables' => variables,
      'contexts' => {
        'main' => [{'match' => match, 'embed' => 'content', 'escape' => escape}],
        'content' => []
      }
    }
    File.write(File.join(dir, 'Test.sublime-syntax'), YAML.dump(document))
    output, status = Open3.capture2e(RbConfig.ruby, validator, chdir: dir)
    unless status.success? == expected_success && (expected_success || output.include?('legacy regex engine'))
      abort "#{name}: unexpected validator result\n#{output}"
    end
  end
end
puts "Validator regression checks passed (#{cases.size} cases)."
