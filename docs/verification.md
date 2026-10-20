# Verification

Verified on 2026-10-20 with the installed Sublime Text runtime, build 4214.

## Native syntax assertions

| Fixture | Assertions | Failures |
| --- | ---: | ---: |
| `tests/syntax_test_modern_swift.swift` | 141 | 0 |
| `tests/syntax_test_strings.swift` | 20 | 0 |
| `tests/syntax_test_accessors.swift` | 1 | 0 |
| `tests/syntax_test_grammar.swift` | 0 (legacy parsing corpus) | 0 |
| Total | 162 | 0 |

Tests ran against a fixed temporary package snapshot. Fixture headers pointed to the snapshot's syntax resource; the delivered grammar and symbol definitions were otherwise unchanged. Temporary editor package links and the test bridge were removed after each run.

The new fixtures cover declarations, macros, contextual identifiers, packs, typed throws, optional opaque/existential types, ownership, isolation, unsafe expressions, modern library names, module selectors, regex/division boundaries, raw delimiter counts, and nested string interpolation. The nested raw-string regression was reproduced before its fix.

## Other checks

- `ruby utils/check_syntax.rb`: passed for both syntax files; checks YAML, variable expansion, context references, meta-pattern order, match patterns and embed escape patterns.
- Validator negative checks: missing context, invalid escape regex, and misplaced meta pattern were rejected; a valid minimal syntax was accepted.
- `Swift.sublime-build`: valid JSON, argument-array commands, five SwiftPM variants.
- All `.tmPreferences` files: valid property lists.
- `git diff --check`: passed.
- Independent review: nested interpolation issue corrected; revised context stack reviewed without further important findings.

## Boundaries

Native scope assertions establish parser behavior, not visual theme appearance, Swift semantic analysis, or execution of every SwiftPM command. Fixtures contain independent examples and deliberately invalid legacy strings; they are not one compilable Swift module. The new stable/development GitHub Actions workflow is configured but has not been run remotely. This checkout has not been published or permanently installed into the editor.

## References

- [Sublime Text syntax definitions](https://www.sublimetext.com/docs/syntax.html)
- [Community syntax guide](https://docs.sublimetext.io/guide/extensibility/syntaxdefs.html)
- [Swift 6.4 language and library changes](https://www.swift.org/blog/swift-6.4-released/)
- [Swift 6.4.1 release](https://forums.swift.org/t/announcing-swift-6-4-1/90029)
