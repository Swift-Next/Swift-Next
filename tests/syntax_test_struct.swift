// SYNTAX TEST "Swift.sublime-syntax"

// MARK: Structs Definition Tests

// MARK: Plain Struct Definition

  struct SomeStruct {}
//^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//^^^^^^ keyword.declaration.struct.swift
//       ^^^^^^^^^^ entity.name.struct.swift
//                  ^^ meta.block.swift
//                  ^ punctuation.section.block.begin.swift
//                   ^ punctuation.section.block.end.swift

// MARK: Access-Level Struct Definition

  public struct SomeStruct {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//       ^^^^^^ keyword.declaration.struct.swift
//              ^^^^^^^^^^ entity.name.struct.swift
//                         ^^ meta.block.swift
//                         ^ punctuation.section.block.begin.swift
//                          ^ punctuation.section.block.end.swift

  package struct SomeStruct {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//        ^^^^^^ keyword.declaration.struct.swift
//               ^^^^^^^^^^ entity.name.struct.swift
//                          ^^ meta.block.swift
//                          ^ punctuation.section.block.begin.swift
//                           ^ punctuation.section.block.end.swift
  internal struct SomeStruct {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//         ^^^^^^ keyword.declaration.struct.swift
//                ^^^^^^^^^^ entity.name.struct.swift
//                           ^^ meta.block.swift
//                           ^ punctuation.section.block.begin.swift
//                            ^ punctuation.section.block.end.swift

  fileprivate struct SomeStruct {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//            ^^^^^^ keyword.declaration.struct.swift
//                   ^^^^^^^^^^ entity.name.struct.swift
//                              ^^ meta.block.swift
//                              ^ punctuation.section.block.begin.swift
//                               ^ punctuation.section.block.end.swift

  private struct SomeStruct {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//        ^^^^^^ keyword.declaration.struct.swift
//               ^^^^^^^^^^ entity.name.struct.swift
//                          ^^ meta.block.swift
//                          ^ punctuation.section.block.begin.swift
//                           ^ punctuation.section.block.end.swift


// MARK: Struct Definition With Protocol Conformance

  struct SomeStruct: SomeProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//^^^^^^ keyword.declaration.struct.swift
//       ^^^^^^^^^^ entity.name.struct.swift
//                 ^ punctuation.separator.annotation.conformance.swift
//                   ^^^^^^^^^^^^ support.class.swift
//                                ^^ meta.block.swift
//                                ^ punctuation.section.block.begin.swift
//                                 ^ punctuation.section.block.end.swift

// MARK: Struct Definition With Multiple Protocol Conformance

  struct SomeStruct: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//^^^^^^ keyword.declaration.struct.swift
//       ^^^^^^^^^^ entity.name.struct.swift
//                 ^ punctuation.separator.annotation.conformance.swift
//                   ^^^^^^^^^^^^ support.class.swift
//                               ^ punctuation.separator.continuation.swift
//                                 ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                     ^^ meta.block.swift
//                                                     ^ punctuation.section.block.begin.swift
//                                                      ^ punctuation.section.block.end.swift

// MARK: Access-Level Struct Definition With Multiple Protocol Conformance

  public struct SomeStruct: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//       ^^^^^^ keyword.declaration.struct.swift
//              ^^^^^^^^^^ entity.name.struct.swift
//                        ^ punctuation.separator.annotation.conformance.swift
//                          ^^^^^^^^^^^^ support.class.swift
//                                      ^ punctuation.separator.continuation.swift
//                                        ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                            ^^ meta.block.swift
//                                                            ^ punctuation.section.block.begin.swift
//                                                             ^ punctuation.section.block.end.swift

  package struct SomeStruct: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//        ^^^^^^ keyword.declaration.struct.swift
//               ^^^^^^^^^^ entity.name.struct.swift
//                         ^ punctuation.separator.annotation.conformance.swift
//                           ^^^^^^^^^^^^ support.class.swift
//                                       ^ punctuation.separator.continuation.swift
//                                         ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                             ^^ meta.block.swift
//                                                             ^ punctuation.section.block.begin.swift
//                                                              ^ punctuation.section.block.end.swift

  internal struct SomeStruct: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//         ^^^^^^ keyword.declaration.struct.swift
//                ^^^^^^^^^^ entity.name.struct.swift
//                          ^ punctuation.separator.annotation.conformance.swift
//                            ^^^^^^^^^^^^ support.class.swift
//                                        ^ punctuation.separator.continuation.swift
//                                          ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                              ^^ meta.block.swift
//                                                              ^ punctuation.section.block.begin.swift
//                                                               ^ punctuation.section.block.end.swift

  fileprivate struct SomeStruct: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//            ^^^^^^ keyword.declaration.struct.swift
//                   ^^^^^^^^^^ entity.name.struct.swift
//                             ^ punctuation.separator.annotation.conformance.swift
//                               ^^^^^^^^^^^^ support.class.swift
//                                           ^ punctuation.separator.continuation.swift
//                                             ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                 ^^ meta.block.swift
//                                                                 ^ punctuation.section.block.begin.swift
//                                                                  ^ punctuation.section.block.end.swift

  private struct SomeStruct: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct.swift - meta.struct meta.struct
//        ^^^^^^ keyword.declaration.struct.swift
//               ^^^^^^^^^^ entity.name.struct.swift
//                         ^ punctuation.separator.annotation.conformance.swift
//                           ^^^^^^^^^^^^ support.class.swift
//                                       ^ punctuation.separator.continuation.swift
//                                         ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                             ^^ meta.block.swift
//                                                             ^ punctuation.section.block.begin.swift
//                                                              ^ punctuation.section.block.end.swift
