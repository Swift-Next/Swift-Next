// SYNTAX TEST "Swift.sublime-syntax"

/**
 * All extensions tests are stored here, for `class`, `struct`, `protocol`, `enum`, `actor`
 */

// MARK: Extension Definition Tests

// MARK: Plain Extension Definition

  extension SomeClassExtension {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//^^^^^^^^^ keyword.declaration.extension.swift
//          ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                             ^^ meta.block.swift
//                             ^ punctuation.section.block.begin.swift
//                              ^ punctuation.section.block.end.swift

// MARK: Access-Level Extension Definition

  public extension SomeClassExtension {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//       ^^^^^^^^^ keyword.declaration.extension.swift
//                 ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                    ^^ meta.block.swift
//                                    ^ punctuation.section.block.begin.swift
//                                     ^ punctuation.section.block.end.swift

  package extension SomeClassExtension {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//        ^^^^^^^^^ keyword.declaration.extension.swift
//                  ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                     ^^ meta.block.swift
//                                     ^ punctuation.section.block.begin.swift
//                                      ^ punctuation.section.block.end.swift

  internal extension SomeClassExtension {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//         ^^^^^^^^^ keyword.declaration.extension.swift
//                   ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                      ^^ meta.block.swift
//                                      ^ punctuation.section.block.begin.swift
//                                       ^ punctuation.section.block.end.swift

  fileprivate extension SomeClassExtension {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//            ^^^^^^^^^ keyword.declaration.extension.swift
//                      ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                         ^^ meta.block.swift
//                                         ^ punctuation.section.block.begin.swift
//                                          ^ punctuation.section.block.end.swift

  private extension SomeClassExtension {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//        ^^^^^^^^^ keyword.declaration.extension.swift
//                  ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                     ^^ meta.block.swift
//                                     ^ punctuation.section.block.begin.swift
//                                      ^ punctuation.section.block.end.swift


// MARK: Extension Definition With Protocol Conformance

  extension SomeClassExtension: SomeProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//^^^^^^^^^ keyword.declaration.extension.swift
//          ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                            ^ punctuation.separator.annotation.conformance.swift
//                              ^^^^^^^^^^^^ support.class.swift
//                                           ^^ meta.block.swift
//                                           ^ punctuation.section.block.begin.swift
//                                            ^ punctuation.section.block.end.swift

// MARK: Extension Definition With Multiple Protocols Conformance

  extension SomeClassExtension: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//^^^^^^^^^ keyword.declaration.extension.swift
//          ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                            ^ punctuation.separator.annotation.conformance.swift
//                              ^^^^^^^^^^^^ support.class.swift
//                                          ^ punctuation.separator.continuation.swift
//                                            ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                ^^ meta.block.swift
//                                                                ^ punctuation.section.block.begin.swift
//                                                                 ^ punctuation.section.block.end.swift

// MARK: Access-Level Extension Definition With Multiple Protocols Conformance

  public extension SomeClassExtension: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//       ^^^^^^^^^ keyword.declaration.extension.swift
//                 ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                   ^ punctuation.separator.annotation.conformance.swift
//                                     ^^^^^^^^^^^^ support.class.swift
//                                                 ^ punctuation.separator.continuation.swift
//                                                   ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                       ^^ meta.block.swift
//                                                                       ^ punctuation.section.block.begin.swift
//                                                                        ^ punctuation.section.block.end.swift

  package extension SomeClassExtension: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//        ^^^^^^^^^ keyword.declaration.extension.swift
//                  ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                    ^ punctuation.separator.annotation.conformance.swift
//                                      ^^^^^^^^^^^^ support.class.swift
//                                                  ^ punctuation.separator.continuation.swift
//                                                    ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                        ^^ meta.block.swift
//                                                                        ^ punctuation.section.block.begin.swift
//                                                                         ^ punctuation.section.block.end.swift

  internal extension SomeClassExtension: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//         ^^^^^^^^^ keyword.declaration.extension.swift
//                   ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                     ^ punctuation.separator.annotation.conformance.swift
//                                       ^^^^^^^^^^^^ support.class.swift
//                                                   ^ punctuation.separator.continuation.swift
//                                                     ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                         ^^ meta.block.swift
//                                                                         ^ punctuation.section.block.begin.swift
//                                                                          ^ punctuation.section.block.end.swift

  fileprivate extension SomeClassExtension: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//            ^^^^^^^^^ keyword.declaration.extension.swift
//                      ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                        ^ punctuation.separator.annotation.conformance.swift
//                                          ^^^^^^^^^^^^ support.class.swift
//                                                      ^ punctuation.separator.continuation.swift
//                                                        ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                            ^^ meta.block.swift
//                                                                            ^ punctuation.section.block.begin.swift
//                                                                             ^ punctuation.section.block.end.swift

  private extension SomeClassExtension: SomeProtocol, SomeAnotherProtocol {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.extension.swift
//        ^^^^^^^^^ keyword.declaration.extension.swift
//                  ^^^^^^^^^^^^^^^^^^ entity.name.x.extension.swift - (support | keyword)
//                                    ^ punctuation.separator.annotation.conformance.swift
//                                      ^^^^^^^^^^^^ support.class.swift
//                                                  ^ punctuation.separator.continuation.swift
//                                                    ^^^^^^^^^^^^^^^^^^^ support.class.swift
//                                                                        ^^ meta.block.swift
//                                                                        ^ punctuation.section.block.begin.swift
//                                                                         ^ punctuation.section.block.end.swift
