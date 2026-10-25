// SYNTAX TEST "Swift.sublime-syntax"
// Modern Swift syntax and regression coverage. These are highlighting fixtures, not a compilable module.

    package struct PackageModel {}
//  ^^^^^^^ storage.modifier.access-level.package.swift
//                 ^^^^^^^^^^^^ entity.name.struct.swift

    @freestanding(expression)
//   ^^^^^^^^^^^^ support.function.annotation.swift
    macro stringify<T>(_ value: T) -> String = #externalMacro(module: "Macros", type: "StringifyMacro")
//  ^^^^^ keyword.declaration.macro.swift
//        ^^^^^^^^^ entity.name.function.swift
//                                              ^^^^^^^^^^^^^ entity.name.function.macro.swift

    let value = #stringify(1 + 2)
//               ^^^^^^^^^ entity.name.function.macro.swift

    let checked = #expect(value == 3)
//                 ^^^^^^ entity.name.function.macro.swift

    func take(_ value: consuming Token, other: borrowing Token) -> sending Token {}
//                     ^^^^^^^^^ storage.modifier.ownership.swift
//                                             ^^^^^^^^^ storage.modifier.ownership.swift
//                                                                 ^^^^^^^ storage.modifier.sending.swift

    borrowing func inspect() {}
//  ^^^^^^^^^ storage.modifier.ownership.swift

    consuming func close() {}
//  ^^^^^^^^^ storage.modifier.ownership.swift

    nonisolated(unsafe) var cache = 0
//  ^^^^^^^^^^^ storage.modifier.actor-isolation.nonisolated.swift
//              ^^^^^^ constant.language.actor-isolation.swift

    nonisolated(nonsending) func work() async {}
//              ^^^^^^^^^^ constant.language.actor-isolation.swift

    func fail() throws(ParseError) -> Int { throw ParseError.bad }
//              ^^^^^^ keyword.declaration.throws.swift
//                     ^^^^^^^^^^ meta.throws.swift
//                                    ^^^ support.type.struct.standard-library.swift

    func eachValue<each T>(_ values: repeat each T) -> (repeat each T) {}
//                 ^^^^ storage.modifier.pack.swift
//                                   ^^^^^^ keyword.operator.pack-expansion.swift

    protocol Container<Element>: Sequence {}
//                     ^^^^^^^ variable.parameter.type.swift

    struct Token: ~Copyable {}
//                ^ keyword.operator.suppressed-conformance.swift
//                 ^^^^^^^^ support.type.protocol.standard-library.swift

    func token<T: ~Copyable>(_ x: borrowing T) {}
//                ^ keyword.operator.suppressed-conformance.swift

    typealias Buffer = InlineArray<4, UInt8>
//                     ^^^^^^^^^^^ support.type.struct.standard-library.swift
//                                 ^ constant.numeric.value.swift

    let pattern = /[a-z]+\d*/
//                ^^ string.regexp.swift
//                       ^^ constant.character.escape.regexp.swift

    let extended = #/ a/b [/#] /#
//                   ^^^^ string.regexp.swift

    let nested = /[/]/
//                ^^^ string.regexp.swift

    let division = left / right / count
//                      ^ keyword.operator.arithmetic.swift - string

    let assignment = 12; assignment /= 2
//                                  ^^ keyword.operator.arithmetic.swift - string

    let text = "#expect /regex/ consuming"
//                              ^^^^^^^^^ string.quoted.double.swift - storage.modifier

    // #expect /regex/ consuming
//                     ^^^^^^^^^ comment.line - storage.modifier

    let consuming = 1
//      ^^^^^^^^^ variable.other.constant.swift - storage.modifier

    let package = 1
//      ^^^^^^^ variable.other.constant.swift - storage.modifier

    object.borrowing()
//         ^^^^^^^^^ variable.function.swift - storage.modifier

    let selected = ModuleA::getValue()
//                          ^^^^^^^^ variable.function.swift

    let optional: some Rocket? = makeRocket()
//                ^^^^ storage.modifier.opaque.swift

    let existential: any Rocket? = nil
//                   ^^^ storage.modifier.existential.swift

    @concurrent func background() async {}
//   ^^^^^^^^^^ support.function.annotation.swift

    @c(MyLibrary_work) @implementation func work() {}
//   ^ support.function.annotation.swift
//                      ^^^^^^^^^^^^^^ support.function.annotation.swift

    @diagnose(DeprecatedDeclaration, as: ignored, reason: "legacy") func legacy() {}
//   ^^^^^^^^ support.function.annotation.swift
//                                       ^^^^^^^ constant.language.attribute-option.swift

    @attached(member, names: named(init)) macro Model() = #externalMacro(module: "M", type: "M")
//   ^^^^^^^^ support.function.annotation.swift

    @inline(always) func fast() {}
//          ^^^^^^ constant.language.attribute-option.swift

    @safe @unsafe func boundary() {}
//   ^^^^ support.function.annotation.swift
//         ^^^^^^ support.function.annotation.swift

    struct Storage {
        var value: Int {
            borrow { return stored }
//          ^^^^^^ keyword.declaration.borrow.swift
            mutate { return &stored }
//          ^^^^^^ keyword.declaration.mutate.swift
        }
    }

    struct Storage { var value: Int { yielding borrow { yield stored }; yielding mutate { yield &stored } } }
//                                    ^^^^^^^^ storage.modifier.yielding.swift
//                                                      ^^^^^ keyword.control.flow.yield.swift

    #if hasFeature(StrictConcurrency) && compiler(>=6.4)
//      ^^^^^^^^^^ support.function.preprocessor.platform-condition.swift
    let task: Task<Void, Never>
//            ^^^^ support.type.struct.standard-library.swift
    #endif

    @available(visionOS 2.0, *) func spatial() {}
//             ^^^^^^^^ constant.language.preprocessor.platform-name.swift

    let span: Span<Int>
//            ^^^^ support.type.struct.standard-library.swift

    let unique: UniqueArray<Token>
//              ^^^^^^^^^^^ support.type.struct.standard-library.swift

    let reference: MutableRef<Token>
//                 ^^^^^^^^^^ support.type.struct.standard-library.swift

    func iterate<T: Iterable>(_ values: T) {}
//                  ^^^^^^^^ support.type.protocol.standard-library.swift

    await withTaskCancellationShield { await cleanup() }
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.standard-library.swift

    let clock: ContinuousClock
//             ^^^^^^^^^^^^^^^ support.type.struct.standard-library.swift

    let expression = if ready { 1 } else { 0 }
//                   ^^ keyword.control.conditional.if.swift

    let expression = switch state { case .ready: true; default: false }
//                   ^^^^^^ keyword.control.conditional.switch.swift

    let transferred = consume token
//                    ^^^^^^^ keyword.operator.ownership.swift

    let duplicate = copy token
//                  ^^^^ keyword.operator.ownership.swift

    package final class Service {}
//  ^^^^^^^ storage.modifier.access-level.package.swift

    package(set) var count = 0
//  ^^^^^^^ storage.modifier.access-level.package.swift

    public macro make<T>() -> T = #externalMacro(module: "M", type: "M")
//         ^^^^^ keyword.declaration.macro.swift

    func pack<each T, each U>(_ value: repeat each T) {}
//            ^^^^ storage.modifier.pack.swift

    func map<T: Sequence<Int>>(_ value: T) {}
//              ^^^^^^^^ support.type.protocol.standard-library.swift
//                       ^^^ support.type.struct.standard-library.swift

    func transform<T>(_ value: T) where T: ~Copyable {}
//                                         ^ keyword.operator.suppressed-conformance.swift

    struct S { var value: Int { set(newValue) { update(newValue) }; get { 1 } } }
//                              ^^^ keyword.declaration.set.swift

    struct S { var value = 0 { didSet(oldValue) { update(oldValue) } } }
//                             ^^^^^^ keyword.declaration.didSet.swift

    let opaque:some Collection<Int> = values
//             ^^^^ storage.modifier.opaque.swift

    let existential:any Collection<Int> = values
//                  ^^^ storage.modifier.existential.swift

    func fetch() -> @Sendable () async throws(Failure) -> Void {}
//                                     ^^^^^^ keyword.declaration.throws.swift
//                   ^^^^^^^^ support.function.annotation.swift

    func f(_ body: @isolated(any) () async -> Void) {}
//                  ^^^^^^^^ support.function.annotation.swift
//                           ^^^ constant.language.attribute-option.swift

    @abi(func legacy(_ value: Int)) func modern(_ value: Int) {}
//   ^^^ support.function.annotation.swift
//                                       ^^^^^^ entity.name.function.swift

    let raw = ##"a "# still content"##; let afterRaw = 1
//                    ^^^^^ string.quoted.double.swift
//                                          ^^^^^^^^ variable.other.constant.swift

    let raw = ##"literal \#n escaped \##n"##
//                       ^^^ string.quoted.double.swift - constant.character.escape
//                                   ^^^^ constant.character.escape.swift

    let raw = #"literal // still string"#
//                         ^^^^^ string.quoted.double.swift - comment

    let raw = ##"literal \#(name), value \##(name)"##
//                       ^^^ string.quoted.double.swift - meta.interpolation
//                                       ^^^^ punctuation.section.interpolation.begin.swift

    let multi = ##"""
        text """# still string
//                ^^^^^ string.quoted.double.block.swift
        """##
    let afterMultiline = 1
//      ^^^^^^^^^^^^^^ variable.other.constant.swift

    let regex = ##/ a /# b /##; let afterRegex = 1
//                      ^^ string.regexp.swift
//                                  ^^^^^^^^^^ variable.other.constant.swift

    let regex = #/
        a // literal
//           ^^^^^^^ string.regexp.swift - comment
        b
    /#
    let afterRegex = 1
//      ^^^^^^^^^^ variable.other.constant.swift

    let ratio = a/b/c

    let ratio = a / b; /* comment */ let other = c / d
//                     ^^ comment.block
//                                       ^^^^^ variable.other.constant.swift

    let match = subject.wholeMatch(of: /a[\/]b/)
//                                      ^^ string.regexp.swift

    return /pattern/
//          ^^^^^^^ string.regexp.swift

    let pattern = /abc/; let afterPattern = 1
//                           ^^^^^^^^^^^^ variable.other.constant.swift

    let result = #module.customMacro<Int>(1)
//                       ^^^^^^^^^^^ entity.name.function.macro.swift

    nonisolated struct Model {}
//  ^^^^^^^^^^^ storage.modifier.actor-isolation.nonisolated.swift

    let someValue = object.sending
//                         ^^^^^^^ - storage.modifier

    let escaped = object.`consume`
//                        ^^^^^^^ - keyword.operator.ownership

    let borrow = 1; let mutate = 2; let yielding = 3
//      ^^^^^^ variable.other.constant.swift
//                      ^^^^^^ variable.other.constant.swift
//                                      ^^^^^^^^ variable.other.constant.swift

    func f<T: ~Copyable & Equatable>(_ x: borrowing T) {}
//                        ^^^^^^^^^ support.type.protocol.standard-library.swift

    let values: [InlineArray<4, UInt8>]
//               ^^^^^^^^^^^ support.type.struct.standard-library.swift

    #if os(visionOS) && arch(arm64e) && hasAttribute(Sendable)
//         ^^^^^^^^ constant.language.preprocessor.operating-system.swift
//                           ^^^^^^ constant.language.preprocessor.architecture.swift
//                                      ^^^^^^^^^^^^ support.function.preprocessor.platform-condition.swift
    #endif

    let iterator: any BorrowingIteratorProtocol<Int, Never>
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^ support.type.protocol.standard-library.swift

    let pointer = unsafe buffer.baseAddress!
//                ^^^^^^ keyword.operator.unsafe.swift

    let unsafe = 1; let result = object.unsafe()
//      ^^^^^^ variable.other.constant.swift

    distributed actor Remote { distributed func ping() {} }
//  ^^^^^^^^^^^ storage.modifier.distributed.swift

    for try value in values { use(value) }
//      ^^^ keyword.control.exception.try.swift

    let raw = ##"value \##n"##; let afterEscape = 1
//                     ^^^^ constant.character.escape.swift
//                                  ^^^^^^^^^^^ variable.other.constant.swift

    let raw = #####"value \#####u{1F600}"#####; let afterUnicode = 1
//                        ^^^^^^^ constant.character.escape.unicode.swift
//                                                  ^^^^^^^^^^^^ variable.other.constant.swift

    let raw = #"\#(decorate("text"))"#; let afterInterpolation = 1
//                 ^^^^^^^^ variable.function.swift
//                                          ^^^^^^^^^^^^^^^^^^ variable.other.constant.swift

    let ordinary = "\(decorate("text"))"; let afterString = 1
//                    ^^^^^^^^ variable.function.swift
//                                            ^^^^^^^^^^^ variable.other.constant.swift

    let raw = ##"invalid \##z"##; let afterInvalid = 1
//                                    ^^^^^^^^^^^^ variable.other.constant.swift

    let extended = #####/ a /#### b /#####; let afterExtended = 1
//                               ^^ string.regexp.swift
//                                              ^^^^^^^^^^^^^ variable.other.constant.swift

    let outer = #"value \#(#"inner"#) tail"#; let afterNestedRaw = 1
//                           ^^^^^ meta.interpolation.swift string.quoted.double.swift
//                                   ^^^^^ string.quoted.double.swift - meta.interpolation
//                                                ^^^^^^^^^^^^^^ variable.other.constant.swift

    let outer = ##"value \##(##"inner"##) tail"##; let afterNestedHashes = 1
//                              ^^^^^ meta.interpolation.swift string.quoted.double.swift
//                                       ^^^^^ string.quoted.double.swift - meta.interpolation
//                                                     ^^^^^^^^^^^^^^^^^ variable.other.constant.swift

    let outer = #"\#(decorate(#"\#(name)"#)) tail"#; let afterNestedInterpolation = 1
//                                          ^^^^^ string.quoted.double.swift - meta.interpolation
//                                                       ^^^^^^^^^^^^^^^^^^^^^^^^ variable.other.constant.swift

    let outer = #"""
        \#(#"inner"#) tail
//           ^^^^^ meta.interpolation.swift string.quoted.double.swift
//                   ^^^^^ string.quoted.double.block.swift - meta.interpolation
        """#
    let afterNestedMultiline = 1
//      ^^^^^^^^^^^^^^^^^^^^ variable.other.constant.swift

    object.some value
//         ^^^^ - storage.modifier keyword.operator

    `some` value
//   ^^^^ - storage.modifier keyword.operator

    object.any value
//         ^^^ - storage.modifier keyword.operator

    `any` value
//   ^^^ - storage.modifier keyword.operator

    object.borrowing value
//         ^^^^^^^^^ - storage.modifier keyword.operator

    `borrowing` value
//   ^^^^^^^^^ - storage.modifier keyword.operator

    object.consuming value
//         ^^^^^^^^^ - storage.modifier keyword.operator

    `consuming` value
//   ^^^^^^^^^ - storage.modifier keyword.operator

    object.sending value
//         ^^^^^^^ - storage.modifier keyword.operator

    `sending` value
//   ^^^^^^^ - storage.modifier keyword.operator

    object.each value
//         ^^^^ - storage.modifier keyword.operator

    `each` value
//   ^^^^ - storage.modifier keyword.operator

    object.unsafe value
//         ^^^^^^ - storage.modifier keyword.operator

    `unsafe` value
//   ^^^^^^ - storage.modifier keyword.operator

    object.consume value
//         ^^^^^^^ - storage.modifier keyword.operator

    `consume` value
//   ^^^^^^^ - storage.modifier keyword.operator

    object.copy value
//         ^^^^ - storage.modifier keyword.operator

    `copy` value
//   ^^^^ - storage.modifier keyword.operator

    object.discard value
//         ^^^^^^^ - storage.modifier keyword.operator

    `discard` value
//   ^^^^^^^ - storage.modifier keyword.operator

    let grouped = (/abc/)
//                  ^^^ string.regexp.swift

    let values = [/abc/, /def/]
//                 ^^^ string.regexp.swift

    let values = [/abc/, /def/]
//                        ^^^ string.regexp.swift

    let grouped = (left / right / count)
//                        ^^^^^ - string.regexp

    let values = [left / right / count]
//                       ^^^^^ - string.regexp

    call(of: /abc/, next: /def/)
//                         ^^^ string.regexp.swift

    let grouped = (/abc/); let afterGrouped = 1
//                             ^^^^^^^^^^^^ variable.other.constant.swift

    let values = [/abc/]; let afterArray = 1
//                            ^^^^^^^^^^ variable.other.constant.swift

    let patterns = ["a": /abc/, "b": /def/]
//                        ^^^ string.regexp.swift

    let patterns = ["a": /abc/, "b": /def/]
//                                    ^^^ string.regexp.swift

    call(of: left / right / count)
//                  ^^^^^ - string.regexp

    let values = (/abc/, /def/)
//                        ^^^ string.regexp.swift

    switch text { case /abc/: break; default: break }
//                      ^^^ string.regexp.swift

    if case /abc/ = text {}
//           ^^^ string.regexp.swift

    let pattern = /abc/; let ratio = left/right/count
//                                        ^^^^^ - string.regexp

    let pattern = (/abc/).wholeMatch(in: text)
//                        ^^^^^^^^^^ variable.function.swift
