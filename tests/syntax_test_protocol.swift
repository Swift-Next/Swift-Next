// SYNTAX TEST "Swift.sublime-syntax"

// MARK: Protocols Definition Tests

// MARK: Plain Protocol Definition

  protocol SomeProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//^^^^^^^^ keyword.declaration.protocol.swift
//         ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                      ^^ meta.block.swift
//                      ^ punctuation.section.block.begin.swift
//                       ^ punctuation.section.block.end.swift

// MARK: Access-Level Protocol Definition

  public protocol SomeProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//       ^^^^^^^^ keyword.declaration.protocol.swift
//                ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                             ^^ meta.block.swift
//                             ^ punctuation.section.block.begin.swift
//                              ^ punctuation.section.block.end.swift

  package protocol SomeProtocol {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//        ^^^^^^^^ keyword.declaration.protocol.swift
//                 ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                              ^^ meta.block.swift
//                              ^ punctuation.section.block.begin.swift
//                               ^ punctuation.section.block.end.swift

  internal protocol SomeProtocol {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//         ^^^^^^^^ keyword.declaration.protocol.swift
//                  ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                               ^^ meta.block.swift
//                               ^ punctuation.section.block.begin.swift
//                                ^ punctuation.section.block.end.swift

  fileprivate protocol SomeProtocol {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//            ^^^^^^^^ keyword.declaration.protocol.swift
//                     ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                                  ^^ meta.block.swift
//                                  ^ punctuation.section.block.begin.swift
//                                   ^ punctuation.section.block.end.swift

  private protocol SomeProtocol {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//        ^^^^^^^^ keyword.declaration.protocol.swift
//                 ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                              ^^ meta.block.swift
//                              ^ punctuation.section.block.begin.swift
//                               ^ punctuation.section.block.end.swift

// MARK: Protocol Definition With Another Protocol Conformance

  protocol SomeProtocol: SomeAnotherProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//^^^^^^^^ keyword.declaration.protocol.swift
//         ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                     ^ punctuation.separator.annotation.conformance.swift
//                       ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                           ^^ meta.block.swift
//                                           ^ punctuation.section.block.begin.swift
//                                            ^ punctuation.section.block.end.swift

// MARK: Protocol Definition With Multiple Protocol Conformance

  protocol SomeProtocol: SomeAnotherProtocol, SomeThirdProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//^^^^^^^^ keyword.declaration.protocol.swift
//         ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                     ^ punctuation.separator.annotation.conformance.swift
//                       ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                          ^ punctuation.separator.continuation.swift
//                                            ^^^^^^^^^^^^^^^^^ support.class.swift
//                                                              ^^ meta.block.swift
//                                                              ^ punctuation.section.block.begin.swift
//                                                               ^ punctuation.section.block.end.swift

// MARK: Access-Level Protocol Definition With Multiple Protocol Conformance

  public protocol SomeProtocol: SomeAnotherProtocol, SomeThirdProtocol {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//       ^^^^^^^^ keyword.declaration.protocol.swift
//                ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                            ^ punctuation.separator.annotation.conformance.swift
//                              ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                 ^ punctuation.separator.continuation.swift
//                                                   ^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                     ^^ meta.block.swift
//                                                                     ^ punctuation.section.block.begin.swift
//                                                                      ^ punctuation.section.block.end.swift

  package protocol SomeProtocol: SomeAnotherProtocol, SomeThirdProtocol {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//        ^^^^^^^^ keyword.declaration.protocol.swift
//                 ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                             ^ punctuation.separator.annotation.conformance.swift
//                               ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                  ^ punctuation.separator.continuation.swift
//                                                    ^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                      ^^ meta.block.swift
//                                                                      ^ punctuation.section.block.begin.swift
//                                                                       ^ punctuation.section.block.end.swift

  internal protocol SomeProtocol: SomeAnotherProtocol, SomeThirdProtocol {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//         ^^^^^^^^ keyword.declaration.protocol.swift
//                  ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                              ^ punctuation.separator.annotation.conformance.swift
//                                ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                   ^ punctuation.separator.continuation.swift
//                                                     ^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                       ^^ meta.block.swift
//                                                                       ^ punctuation.section.block.begin.swift
//                                                                        ^ punctuation.section.block.end.swift

  fileprivate protocol SomeProtocol: SomeAnotherProtocol, SomeThirdProtocol {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//            ^^^^^^^^ keyword.declaration.protocol.swift
//                     ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                                 ^ punctuation.separator.annotation.conformance.swift
//                                   ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                      ^ punctuation.separator.continuation.swift
//                                                        ^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                          ^^ meta.block.swift
//                                                                          ^ punctuation.section.block.begin.swift
//                                                                           ^ punctuation.section.block.end.swift

  private protocol SomeProtocol: SomeAnotherProtocol, SomeThirdProtocol {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol.swift - meta.protocol meta.protocol
//        ^^^^^^^^ keyword.declaration.protocol.swift
//                 ^^^^^^^^^^^^ entity.name.protocol.swift - keyword
//                             ^ punctuation.separator.annotation.conformance.swift
//                               ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                  ^ punctuation.separator.continuation.swift
//                                                    ^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                      ^^ meta.block.swift
//                                                                      ^ punctuation.section.block.begin.swift
//                                                                       ^ punctuation.section.block.end.swift
