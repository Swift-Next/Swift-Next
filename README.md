
<h1 align="center">Swift Next</h1>
<h3 align="center">Modern Swift syntax for Sublime Text 4</h3>

<p align="center">
    <img src="https://img.shields.io/badge/Swift%20-6.4.1-orange.svg"></img>
    <img src="https://img.shields.io/badge/Sublime%20Text-4+-green.svg"></img>
</p>

This fork maintains the Swift Next syntax package for modern Swift, targeting **Swift 6.4 / 6.4.1**. The original grammar and Xcode-style symbol-list integration were created by [@aerobounce](https://github.com/aerobounce); this fork builds on that work and the [Swift-Next community fork](https://github.com/Swift-Next/Swift-Next).

## Features

- Swift 5.7–6.4 syntax additions: macro declarations and expansions, parameter packs, primary associated types, `package` access, ownership modifiers, noncopyable and nonescapable conformances, typed throws, `sending`, and isolation options.
- Swift 6.4 module selectors (`Module::name`), optional `some` / `any` types, `borrow` / `mutate` accessors, and modern built-in attributes including `@diagnose`.
- Bare and extended regex literals, character classes, escapes, quantifiers, and multiline extended patterns.
- Raw strings with matching hash delimiters and interpolation, without treating string contents as comments.
- Modern library symbols including `Task`, clocks, `Regex`, `InlineArray`, spans, `UniqueArray`, `UniqueBox`, `Ref`, `MutableRef`, and `Iterable`.
- Documentation comments, `MARK:` / `TODO:` / `FIXME:`, and Xcode-style symbol lists.

This is a syntax-highlighting package, not a Swift compiler or language server. Standard-library highlighting is name-based; it does not resolve shadowed names. Existing historical symbol lists are retained for compatibility. Language features that require compiler flags still require those flags in your toolchain.

<img width="610" src="https://user-images.githubusercontent.com/10491362/174356891-ca7d6254-3a94-4a66-a65e-9a6ce261d0e4.png">
<img width="600" src="https://user-images.githubusercontent.com/10491362/174356902-3461b350-bfed-41fa-89e1-7a5d58a29362.png">

## Compatibility

- Sublime Text 4 (syntax format version 2).
- `.swift` and `.swiftinterface` files.
- Latest language target checked against the [Swift 6.4 release announcement](https://www.swift.org/blog/swift-6.4-released/) and [Swift 6.4.1 release notes](https://forums.swift.org/t/announcing-swift-6-4-1/90029).
- Swift 5.6-era highlighting is retained. Deprecated syntax is not the focus of ongoing maintenance.

See [CHANGELOG.md](CHANGELOG.md) for changes and [tests/README.md](tests/README.md) for verification instructions.

## Install

### Package Control

The community package is named **Swift Next**. Package Control installs the published community package; it does not automatically include unmerged changes from this personal fork. Use manual installation below to use this fork.

### This fork

1. Open **Preferences → Browse Packages…** in Sublime Text.
2. Clone or copy this repository into a directory named `Swift Next` directly inside `Packages` (alongside `User`, not inside it).
3. Avoid loading another Swift Next copy at the same time. Disable/remove the Package Control copy if replacing it with this checkout.
4. Select **View → Syntax → Swift** for Swift files. Reopen the file if its previous syntax assignment was cached.

## Build and run

The build system uses the `swift` executable from your environment. It does not install a toolchain or force a language mode.

- **Swift** runs the current file; paths containing spaces are passed as one argument.
- **Package: Build / Test / Resolve / Update / Clean** run SwiftPM in the project folder. Open the package root as a Sublime project folder first.

## Development

**Editing Environment**

- Sublime Text 4
- [PackageDev](https://github.com/SublimeText/PackageDev)
- [SublimeLinter-contrib-sublime-syntax](https://github.com/FichteFoll/SublimeLinter-contrib-sublime-syntax)
- [LSP-yaml](https://github.com/sublimelsp/LSP-yaml)
- [LSP-json](https://github.com/sublimelsp/LSP-json)
- Formatted with LSP-yaml and LSP-json

**Validation**

Run `ruby utils/check_syntax.rb` from the repository root for YAML, context-reference, meta-pattern ordering, and regex compilation checks. Ruby's regex engine differs from Sublime's, so this is a preliminary check; native scope assertions remain the authoritative check. See [tests/README.md](tests/README.md) to run them in Sublime Text. GitHub Actions runs native tests against stable and development Sublime builds.

**Tips**

> Minimize multiple words into a regex pattern

```sh
$ grex --no-anchors --capture-groups ...
```

## References

> If you are to create a syntax definition file for the first time without deep regex background like me, here's everything you need.

**Sublime Text**

- [Sublime Text — Syntax Definitions](https://www.sublimetext.com/docs/syntax.html)
- [Sublime Text — Scope Naming](https://www.sublimetext.com/docs/scope_naming.html)
- [Sublime Text Community Documentation](https://docs.sublimetext.io/)
- [sublimehq/Packages](https://github.com/sublimehq/Packages)
- [sublimehq/Packages — Syntax Development Tips/Advice #757](https://github.com/sublimehq/Packages/issues/757)

**Regular Expression**

- [regex101](https://regex101.com/)
- [Oniguruma syntax (operator) configuration](https://github.com/kkos/oniguruma/blob/master/doc/SYNTAX.md)

**Swift**

- [apple/swift](https://github.com/apple/swift)
- [The Swift Programming Language](https://docs.swift.org/swift-book/ReferenceManual/zzSummaryOfTheGrammar.html)
- [Swift Standard Library](https://developer.apple.com/documentation/swift/swift_standard_library)
- `.swiftinterface` files in: `/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/swift`
- [DougGregor/swift-concurrency-objc](https://github.com/DougGregor/swift-concurrency-objc)
- [textmate/swift.tmbundle](https://github.com/textmate/swift.tmbundle)
- [wbond/swift-for-sublime](https://github.com/wbond/swift-for-sublime) (`floating-point-literal` and `string-literal` are modified version of this package 🙏)
- [GregoryBL/SwiftSyntax](https://github.com/GregoryBL/SwiftSyntax)

## Other Fundamental Packages for Swift

- [LSP-SourceKit](https://github.com/sublimelsp/LSP-SourceKit)
- [Swift Format](https://github.com/aerobounce/Sublime-Swift-Format)

## License

- MIT
