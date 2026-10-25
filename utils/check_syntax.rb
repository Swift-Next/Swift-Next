#!/usr/bin/env ruby
# Static checks complement, but do not replace, Sublime's native syntax tests.
require 'yaml'

errors = []
Dir.glob('**/*.sublime-syntax').each do |path|
  document = YAML.load(File.read(path).sub('%YAML 1.2', '%YAML 1.1'))
  variables = document.fetch('variables', {})
  contexts = document.fetch('contexts')
  expand = lambda do |pattern, stack = []|
    pattern.gsub(/\{\{([^}]+)\}\}/) do
      name = Regexp.last_match(1)
      raise "undefined or recursive variable #{name}" if !variables.key?(name) || stack.include?(name)
      expand.call(variables.fetch(name), stack + [name])
    end
  end
  walk = lambda do |value|
    case value
    when Array
      seen_pattern = false
      value.each do |rule|
        if rule.is_a?(Hash)
          if rule.keys.any? { |key| key.start_with?('meta_') || key == 'clear_scopes' }
            raise 'meta patterns must precede match/include patterns' if seen_pattern
          else
            seen_pattern = true
          end
        end
        walk.call(rule)
      end
    when Hash
      if value.key?('match')
        pattern = expand.call(value.fetch('match'))
        if pattern.include?('(?<!') || pattern.include?('(?<=')
          errors << "#{path}: lookbehind requires the legacy regex engine: #{value.fetch('match')}"
        end
        # Sublime treats numeric backreferences in popping rules as captures
        # from the opener. Substitute a sample hash delimiter for compilation.
        pattern = pattern.gsub(/\\[1-9]/, '#') if value['pop']
        # Ruby uses \u{...} for Unicode code points; Sublime uses \x{...}.
        pattern = pattern.gsub(/\\x\{([0-9a-fA-F]+)\}/) { '\\u{' + Regexp.last_match(1) + '}' }
        begin
          Regexp.new(pattern)
        rescue RegexpError => error
          errors << "#{path}: #{error.message}: #{value.fetch('match')}"
        end
      end
      if value.key?('escape')
        pattern = expand.call(value.fetch('escape')).gsub(/\\[1-9]/, '#')
        if pattern.include?('(?<!') || pattern.include?('(?<=')
          errors << "#{path}: embed escape requires the legacy regex engine: #{value.fetch('escape')}"
        end
        begin
          Regexp.new(pattern)
        rescue RegexpError => error
          errors << "#{path}: invalid embed escape #{value.fetch('escape')}"
        end
      end
      if value.key?('include')
        name = value.fetch('include')
        unless name.start_with?('scope:', 'Packages/') || name.end_with?('.sublime-syntax') || contexts.key?(name)
          errors << "#{path}: undefined context #{name}"
        end
      end
      %w[push set embed].each do |action|
        targets = value[action]
        if targets.is_a?(String)
          errors << "#{path}: undefined context #{targets}" unless targets.start_with?('scope:', 'Packages/') || contexts.key?(targets)
        elsif targets.is_a?(Array) && targets.all? { |item| item.is_a?(String) }
          targets.each { |name| errors << "#{path}: undefined context #{name}" unless contexts.key?(name) }
        end
      end
      value.each_value { |child| walk.call(child) if child.is_a?(Hash) || child.is_a?(Array) }
    end
  end
  begin
    walk.call(contexts)
  rescue StandardError => error
    errors << "#{path}: #{error.message}"
  end
  puts "#{path}: checked #{contexts.size} contexts"
end
abort errors.join("\n") unless errors.empty?
puts 'Static syntax checks passed.'
