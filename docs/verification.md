# Verification

## Review follow-up — 2026-10-25

Verified the review fix with `/Applications/Text.app` (Sublime Text build 4214),
using a temporary package snapshot matching the working grammar and fixtures.
All 198 native assertions passed: modern Swift 177, strings 20, accessors 1;
the legacy grammar corpus also parsed without errors.

The native `incompatible_syntax_patterns` check reported no incompatible
patterns in `Swift.sublime-syntax`. Both positive and negative lookbehinds
have been removed. Contextual members and escaped identifiers are consumed
before contextual keyword rules; bare regex entry uses expression prefixes
and one-shot contexts while preserving parentheses, brackets, and case scopes.
Regression fixtures cover contextual identifiers, regex arguments, tuples,
arrays, dictionaries, case patterns, division, and parsing after regex literals.

The static validator now rejects either kind of lookbehind so the existing
CI validation step prevents their reintroduction. Local static validation and
`git diff --check` also passed. Remote CI results below describe the earlier
commit, not this follow-up.

## Original verification — 2026-10-20

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

Native scope assertions establish parser behavior, not visual theme appearance, Swift semantic analysis, or execution of every SwiftPM command. Fixtures contain independent examples and deliberately invalid legacy strings; they are not one compilable Swift module. The stable/development GitHub Actions workflow also passed remotely on builds 4215 and 4214 respectively: [CI run](https://github.com/RaffeYang/Swift-Next/actions/runs/39423951182). This checkout has not been published or permanently installed into the editor.

## References

- [Sublime Text syntax definitions](https://www.sublimetext.com/docs/syntax.html)
- [Community syntax guide](https://docs.sublimetext.io/guide/extensibility/syntaxdefs.html)
- [Swift 6.4 language and library changes](https://www.swift.org/blog/swift-6.4-released/)
- [Swift 6.4.1 release](https://forums.swift.org/t/announcing-swift-6-4-1/90029)
