// SYNTAX TEST "Swift.sublime-syntax"

// MARK: Enum Definition Tests

// MARK: Plain Enum Definition

  enum SomeEnum {}
//^^^^^^^^^^^^^^^^ meta.enum.swift
//^^^^ keyword.declaration.enum.swift
//     ^^^^^^^^ entity.name.enum.swift
//              ^^ meta.block.swift
//              ^ punctuation.section.block.begin.swift
//               ^ punctuation.section.block.end.swift

// MARK: Access-Level Enum Definition

  public enum SomeEnum {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^ meta.enum.swift
//       ^^^^ keyword.declaration.enum.swift
//            ^^^^^^^^ entity.name.enum.swift
//                     ^^ meta.block.swift
//                     ^ punctuation.section.block.begin.swift
//                      ^ punctuation.section.block.end.swift

  package enum SomeEnum {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^ meta.enum.swift
//        ^^^^ keyword.declaration.enum.swift
//             ^^^^^^^^ entity.name.enum.swift
//                      ^^ meta.block.swift
//                      ^ punctuation.section.block.begin.swift
//                       ^ punctuation.section.block.end.swift

  internal enum SomeEnum {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^ meta.enum.swift
//         ^^^^ keyword.declaration.enum.swift
//              ^^^^^^^^ entity.name.enum.swift
//                       ^^ meta.block.swift
//                       ^ punctuation.section.block.begin.swift
//                        ^ punctuation.section.block.end.swift

  fileprivate enum SomeEnum {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^ meta.enum.swift
//            ^^^^ keyword.declaration.enum.swift
//                 ^^^^^^^^ entity.name.enum.swift
//                          ^^ meta.block.swift
//                          ^ punctuation.section.block.begin.swift
//                           ^ punctuation.section.block.end.swift

  private enum SomeEnum {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^ meta.enum.swift
//        ^^^^ keyword.declaration.enum.swift
//             ^^^^^^^^ entity.name.enum.swift
//                      ^^ meta.block.swift
//                      ^ punctuation.section.block.begin.swift
//                       ^ punctuation.section.block.end.swift

// MARK: Enum Definition With Raw Type Definition

  enum SomeEnum: String {}
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.swift
//^^^^ keyword.declaration.enum.swift
//     ^^^^^^^^ entity.name.enum.swift
//             ^ punctuation.separator.annotation.conformance.swift
//               ^^^^^^ support.type.struct.standard-library.swift
//                      ^^ meta.block.swift
//                      ^ punctuation.section.block.begin.swift
//                       ^ punctuation.section.block.end.swift

// MARK: Enum Definition With Raw Type & Protocol Conformance

  enum SomeEnum: String, SomeProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.swift
//^^^^ keyword.declaration.enum.swift
//     ^^^^^^^^ entity.name.enum.swift
//             ^ punctuation.separator.annotation.conformance.swift
//               ^^^^^^ support.type.struct.standard-library.swift
//                     ^ punctuation.separator.continuation.swift
//                       ^^^^^^^^^^^^ support.class.swift
//                                    ^^ meta.block.swift
//                                    ^ punctuation.section.block.begin.swift
//                                     ^ punctuation.section.block.end.swift

// MARK: Access-Level Enum Definition With Raw Type & Protocol Conformance

  public enum SomeEnum: String, SomeProtocol {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.swift
//       ^^^^ keyword.declaration.enum.swift
//            ^^^^^^^^ entity.name.enum.swift
//                    ^ punctuation.separator.annotation.conformance.swift
//                      ^^^^^^ support.type.struct.standard-library.swift
//                            ^ punctuation.separator.continuation.swift
//                              ^^^^^^^^^^^^ support.class.swift
//                                           ^^ meta.block.swift
//                                           ^ punctuation.section.block.begin.swift
//                                            ^ punctuation.section.block.end.swift

  package enum SomeEnum: String, SomeProtocol {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.swift
//        ^^^^ keyword.declaration.enum.swift
//             ^^^^^^^^ entity.name.enum.swift
//                     ^ punctuation.separator.annotation.conformance.swift
//                       ^^^^^^ support.type.struct.standard-library.swift
//                             ^ punctuation.separator.continuation.swift
//                               ^^^^^^^^^^^^ support.class.swift
//                                            ^^ meta.block.swift
//                                            ^ punctuation.section.block.begin.swift
//                                             ^ punctuation.section.block.end.swift

  internal enum SomeEnum: String, SomeProtocol {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.swift
//         ^^^^ keyword.declaration.enum.swift
//              ^^^^^^^^ entity.name.enum.swift
//                      ^ punctuation.separator.annotation.conformance.swift
//                        ^^^^^^ support.type.struct.standard-library.swift
//                              ^ punctuation.separator.continuation.swift
//                                ^^^^^^^^^^^^ support.class.swift
//                                             ^^ meta.block.swift
//                                             ^ punctuation.section.block.begin.swift
//                                              ^ punctuation.section.block.end.swift

  fileprivate enum SomeEnum: String, SomeProtocol {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.swift
//            ^^^^ keyword.declaration.enum.swift
//                 ^^^^^^^^ entity.name.enum.swift
//                         ^ punctuation.separator.annotation.conformance.swift
//                           ^^^^^^ support.type.struct.standard-library.swift
//                                 ^ punctuation.separator.continuation.swift
//                                   ^^^^^^^^^^^^ support.class.swift
//                                                ^^ meta.block.swift
//                                                ^ punctuation.section.block.begin.swift
//                                                 ^ punctuation.section.block.end.swift

  private enum SomeEnum: String, SomeProtocol {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.swift
//        ^^^^ keyword.declaration.enum.swift
//             ^^^^^^^^ entity.name.enum.swift
//                     ^ punctuation.separator.annotation.conformance.swift
//                       ^^^^^^ support.type.struct.standard-library.swift
//                             ^ punctuation.separator.continuation.swift
//                               ^^^^^^^^^^^^ support.class.swift
//                                            ^^ meta.block.swift
//                                            ^ punctuation.section.block.begin.swift
//                                             ^ punctuation.section.block.end.swift
