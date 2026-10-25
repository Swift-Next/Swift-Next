// SYNTAX TEST "Swift.sublime-syntax"
// Regression coverage for function types, contextual names, and expression entry.

    let closure: @Sendable (Int) -> Int = { $0 }
//                          ^^^ support.type.struct.standard-library.swift

    func call(_ body: @escaping (Int) -> String) {}
//                               ^^^ support.type.struct.standard-library.swift

    let regex = true ? /a/ : /b/
//                      ^ string.regexp.swift

    let makeRegex = { /a/ }
//                     ^ string.regexp.swift

    for each in [1, 2] { print(each) }
//      ^^^^ - storage.modifier.pack.swift

    func f() { for sending in [1, 2] {} }
//                 ^^^^^^^ - storage.modifier.sending.swift

    func read(_ value: borrowing (Int, Int)) {}
//                     ^^^^^^^^^ storage.modifier.ownership.swift

    func take(_ value: consuming [Int]) {}
//                     ^^^^^^^^^ storage.modifier.ownership.swift

    let actorClosure: @MainActor (Int) -> String = transform
//                                ^^^ support.type.struct.standard-library.swift - meta.annotation.parameters

    func lazy(_ body: @autoclosure () -> Int) {}
//                                 ^^ - meta.annotation.parameters

    let cClosure: @convention(c) (Int) -> Int = transform
//                            ^ meta.annotation.parameters.swift

    let cClosure: @convention(c) (Int) -> Int = transform
//                                ^^^ support.type.struct.standard-library.swift - meta.annotation.parameters

    func isolated(_ body: @isolated(any) (Int) -> Int) {}
//                                  ^^^ constant.language.attribute-option.swift

    func isolated(_ body: @isolated(any) (Int) -> Int) {}
//                                        ^^^ support.type.struct.standard-library.swift - meta.annotation.parameters

    @objc(doThing:) func doThing(_ value: Int) {}
//   ^^^^ support.function.annotation.swift
//        ^^^^^^^ meta.annotation.parameters.swift

    @objc func plain() {}
//   ^^^^ support.function.annotation.swift

    @MainActor func onMain() {}
//   ^^^^^^^^^ support.function.annotation.swift

    let regex = flag ? /a/ : /b/
//                            ^ string.regexp.swift

    let regex = flag ? /a/ : /b/; let afterRegex = 1
//                                    ^^^^^^^^^^ variable.other.constant.swift - string

    let regex = outer ? (inner ? /a/ : /b/) : /c/
//                                             ^ string.regexp.swift

    let regex = outer ? /a/ : inner ? /b/ : /c/
//                                           ^ string.regexp.swift

    let ratio = flag ? left / right / count : total / divisor
//                            ^^^^^ - string.regexp

    let ratio = flag ? left / right / count : total / divisor
//                                                    ^^^^^^^ - string.regexp

    let closure = { _ in /a/ }
//                        ^ string.regexp.swift

    func pattern() -> Regex<Substring> { /a/ }
//                                        ^ string.regexp.swift

    let closure = { left / right / count }
//                         ^^^^^ - string.regexp

    let closure = { /a/ }; let afterClosure = 1
//                             ^^^^^^^^^^^^ variable.other.constant.swift - string

    func names(_ each: Int, _ sending: Int) { if each is Int {} }
//                                               ^^^^ - storage.modifier

    func names(_ each: Int, _ sending: Int) { let value = sending as Any }
//                                                        ^^^^^^^ - storage.modifier

    borrowing (value)
//  ^^^^^^^^^ variable.function.swift - storage.modifier

    consuming (value)
//  ^^^^^^^^^ variable.function.swift - storage.modifier

    call(value: borrowing (value))
//              ^^^^^^^^^ variable.function.swift - storage.modifier

    func f(_ value: Int = consuming (other)) {}
//                        ^^^^^^^^^ variable.function.swift - storage.modifier

    func read(_ value: borrowing [Int]) {}
//                     ^^^^^^^^^ storage.modifier.ownership.swift

    func take(_ value: consuming (Int, Int)) {}
//                     ^^^^^^^^^ storage.modifier.ownership.swift

    func apply(_ body: (borrowing [Int]) -> Int) {}
//                      ^^^^^^^^^ storage.modifier.ownership.swift

    struct S { init(_ value: consuming [Int]) {} }
//                           ^^^^^^^^^ storage.modifier.ownership.swift

    struct S { subscript(_ value: borrowing (Int, Int)) -> Int { 0 } }
//                                ^^^^^^^^^ storage.modifier.ownership.swift

    macro read(_ value: borrowing (Int, Int)) = #externalMacro(module: "M", type: "M")
//                      ^^^^^^^^^ storage.modifier.ownership.swift

    func read(_ value: borrowing (Int, Int)) {}; let afterRead = 1
//                                                   ^^^^^^^^^ variable.other.constant.swift

    func f(_ value: Regex<Substring> = /a/) {}
//                                      ^ string.regexp.swift

    func f(_ value: (Regex<Substring>, Int) = (/a/, 0)) {}
//                                              ^ string.regexp.swift

    func eachValue<each T>(_ values: repeat each T) -> (repeat each T) {}
//                 ^^^^ storage.modifier.pack.swift

    func send(_ value: sending [Int]) {}
//                     ^^^^^^^ storage.modifier.sending.swift

