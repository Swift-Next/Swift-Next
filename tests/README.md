# Syntax tests

The `syntax_test_*.swift` files use Sublime Text's native syntax assertion format. They test highlighting, not Swift compilation; independent examples and deliberately invalid legacy string examples are intentional.

- `syntax_test_modern_swift.swift`: modern syntax, contextual identifiers, nested constructs and parsing recovery.
- `syntax_test_review_regressions.swift`: function types after attributes, composite ownership types, contextual loop variables, and regex expressions in closures and ternaries.
- `syntax_test_accessors.swift`: calls named `set` inside closures.
- `syntax_test_strings.swift`: existing string scope assertions.
- `syntax_test_grammar.swift`: legacy grammar corpus used as a parser smoke test; it has no scope assertions.

Run `ruby utils/test_check_syntax.rb` and `ruby utils/check_syntax.rb` first. The validator expands variables and checks both match and embed escape patterns without launching the editor. It also rejects lookbehind assertions in either kind of pattern, which require the legacy regex engine.

## Run in Sublime Text 4

1. Place the checkout in `Packages/Swift Next` (a symlink also works).
2. Open `Swift.sublime-syntax`.
3. Select **Tools → Build System → Syntax Tests**, then **Tools → Build**.
4. Expect no failed assertions. To run one fixture, open it and use the same build system.

CI uses `SublimeText/syntax-test-action` to run the same native engine on the current stable and development builds. Fixtures must start with `syntax_test_` so the standalone runner discovers them.

To verify fast-engine compatibility in Sublime's console, run `import sublime_api; sublime_api.incompatible_syntax_patterns("Packages/Swift Next/Swift.sublime-syntax")`. Repeat for `Packages/Swift Next/Standard Library/Swift - Standard Library.sublime-syntax`. Both results must be empty lists. This native check detects engine incompatibilities beyond the static validator's lookbehind guard.

For performance checks, open the grammar corpus, assign this package's Swift syntax, and run **Syntax: Profile** from the command palette. Timing depends on the editor build and hardware; do not use Swift compiler timing as a syntax-highlighting benchmark.
