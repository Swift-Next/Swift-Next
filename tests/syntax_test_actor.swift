// SYNTAX TEST "Swift.sublime-syntax"

/* Actor is a concurent safe class, so it inherits its behavior */

// MARK: Actors Definition Tests

// MARK: Plain Actor Definition

  actor SomeActor {}
//^^^^^^^^^^^^^^^^^^ meta.actor.swift
//^^^^^ keyword.declaration.actor.swift
//      ^^^^^^^^^ entity.name.actor.swift - keyword
//                ^^ meta.block.swift
//                ^ punctuation.section.block.begin.swift
//                 ^ punctuation.section.block.end.swift

// MARK: Access-Level Actor Definition (Without Final)

  open actor SomeActor {}
//^^^^ storage.modifier.access-level.open.swift
//     ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//     ^^^^^ keyword.declaration.actor.swift
//           ^^^^^^^^^ entity.name.actor.swift - keyword
//                     ^^ meta.block.swift
//                     ^ punctuation.section.block.begin.swift
//                      ^ punctuation.section.block.end.swift

  public actor SomeActor {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//       ^^^^^ keyword.declaration.actor.swift
//             ^^^^^^^^^ entity.name.actor.swift - keyword
//                       ^^ meta.block.swift
//                       ^ punctuation.section.block.begin.swift
//                        ^ punctuation.section.block.end.swift

  package actor SomeActor {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//        ^^^^^ keyword.declaration.actor.swift
//              ^^^^^^^^^ entity.name.actor.swift - keyword
//                        ^^ meta.block.swift
//                        ^ punctuation.section.block.begin.swift
//                         ^ punctuation.section.block.end.swift

  internal actor SomeActor {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//         ^^^^^ keyword.declaration.actor.swift
//               ^^^^^^^^^ entity.name.actor.swift - keyword
//                         ^^ meta.block.swift
//                         ^ punctuation.section.block.begin.swift
//                          ^ punctuation.section.block.end.swift

  fileprivate actor SomeActor {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//            ^^^^^ keyword.declaration.actor.swift
//                  ^^^^^^^^^ entity.name.actor.swift - keyword
//                            ^^ meta.block.swift
//                            ^ punctuation.section.block.begin.swift
//                             ^ punctuation.section.block.end.swift

  private actor SomeActor {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//        ^^^^^ keyword.declaration.actor.swift
//              ^^^^^^^^^ entity.name.actor.swift - keyword
//                        ^^ meta.block.swift
//                        ^ punctuation.section.block.begin.swift
//                         ^ punctuation.section.block.end.swift

// MARK: Final Keyword With Access-Level Actor Definition

  open actor SomeActor {}
//^^^^ storage.modifier.access-level.open.swift
//     ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//     ^^^^^ keyword.declaration.actor.swift
//           ^^^^^^^^^ entity.name.actor.swift - keyword
//                     ^^ meta.block.swift
//                     ^ punctuation.section.block.begin.swift
//                      ^ punctuation.section.block.end.swift

  public final actor SomeActor {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^ storage.modifier.final.swift
//             ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//             ^^^^^ keyword.declaration.actor.swift
//                   ^^^^^^^^^ entity.name.actor.swift - keyword
//                             ^^ meta.block.swift
//                             ^ punctuation.section.block.begin.swift
//                              ^ punctuation.section.block.end.swift

  final public actor SomeActor {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^ storage.modifier.access-level.public.swift
//             ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//             ^^^^^ keyword.declaration.actor.swift
//                   ^^^^^^^^^ entity.name.actor.swift - keyword
//                             ^^ meta.block.swift
//                             ^ punctuation.section.block.begin.swift
//                              ^ punctuation.section.block.end.swift

  final package actor SomeActor {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^^ storage.modifier.access-level.package.swift
//              ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//              ^^^^^ keyword.declaration.actor.swift
//                    ^^^^^^^^^ entity.name.actor.swift - keyword
//                              ^^ meta.block.swift
//                              ^ punctuation.section.block.begin.swift
//                               ^ punctuation.section.block.end.swift

  final internal actor SomeActor {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^^^ storage.modifier.access-level.internal.swift
//               ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//               ^^^^^ keyword.declaration.actor.swift
//                     ^^^^^^^^^ entity.name.actor.swift - keyword
//                               ^^ meta.block.swift
//                               ^ punctuation.section.block.begin.swift
//                                ^ punctuation.section.block.end.swift

  final fileprivate actor SomeActor {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//                  ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//                  ^^^^^ keyword.declaration.actor.swift
//                        ^^^^^^^^^ entity.name.actor.swift - keyword
//                                  ^^ meta.block.swift
//                                  ^ punctuation.section.block.begin.swift
//                                   ^ punctuation.section.block.end.swift

  final private actor SomeActor {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^^ storage.modifier.access-level.private.swift
//              ^^^^^^^^^^^^^^^^^^ meta.actor.swift
//              ^^^^^ keyword.declaration.actor.swift
//                    ^^^^^^^^^ entity.name.actor.swift - keyword
//                              ^^ meta.block.swift
//                              ^ punctuation.section.block.begin.swift
//                               ^ punctuation.section.block.end.swift

// MARK: Actor Definition With Inheritance

  actor SomeActor: SomeSuperActor {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.actor.swift
//^^^^^ keyword.declaration.actor.swift
//      ^^^^^^^^^ entity.name.actor.swift - keyword
//               ^ punctuation.separator.annotation.conformance.swift
//                 ^^^^^^^^^^^^^^ support.class.swift
//                                ^^ meta.block.swift
//                                ^ punctuation.section.block.begin.swift
//                                 ^ punctuation.section.block.end.swift

// MARK: Actor Definition With Inheritance & Protocols Conformance

  actor SomeActor: SomeSuperActor, SomeProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.actor.swift
//^^^^^ keyword.declaration.actor.swift
//      ^^^^^^^^^ entity.name.actor.swift - keyword
//               ^ punctuation.separator.annotation.conformance.swift
//                 ^^^^^^^^^^^^^^ support.class.swift
//                               ^ punctuation.separator.continuation.swift
//                                 ^^^^^^^^^^^^ support.class.swift
//                                              ^^ meta.block.swift
//                                              ^ punctuation.section.block.begin.swift
//                                               ^ punctuation.section.block.end.swift

// MARK: Access-Level Actor Definition With Inheritance & Protocols Conformance

  open actor SomeActor: SomeSuperActor, SomeProtocol {}
//^^^^ storage.modifier.access-level.open.swift
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.actor.swift
//     ^^^^^ keyword.declaration.actor.swift
//           ^^^^^^^^^ entity.name.actor.swift - keyword
//                    ^ punctuation.separator.annotation.conformance.swift
//                      ^^^^^^^^^^^^^^ support.class.swift
//                                    ^ punctuation.separator.continuation.swift
//                                      ^^^^^^^^^^^^ support.class.swift
//                                                   ^^ meta.block.swift
//                                                   ^ punctuation.section.block.begin.swift
//                                                    ^ punctuation.section.block.end.swift

  public actor SomeActor: SomeSuperActor, SomeProtocol {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.actor.swift
//       ^^^^^ keyword.declaration.actor.swift
//             ^^^^^^^^^ entity.name.actor.swift - keyword
//                      ^ punctuation.separator.annotation.conformance.swift
//                        ^^^^^^^^^^^^^^ support.class.swift
//                                      ^ punctuation.separator.continuation.swift
//                                        ^^^^^^^^^^^^ support.class.swift
//                                                     ^^ meta.block.swift
//                                                     ^ punctuation.section.block.begin.swift
//                                                      ^ punctuation.section.block.end.swift

  package actor SomeActor: SomeSuperActor, SomeProtocol {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.actor.swift
//        ^^^^^ keyword.declaration.actor.swift
//              ^^^^^^^^^ entity.name.actor.swift - keyword
//                       ^ punctuation.separator.annotation.conformance.swift
//                         ^^^^^^^^^^^^^^ support.class.swift
//                                       ^ punctuation.separator.continuation.swift
//                                         ^^^^^^^^^^^^ support.class.swift
//                                                      ^^ meta.block.swift
//                                                      ^ punctuation.section.block.begin.swift
//                                                       ^ punctuation.section.block.end.swift

  internal actor SomeActor: SomeSuperActor, SomeProtocol {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.actor.swift
//         ^^^^^ keyword.declaration.actor.swift
//               ^^^^^^^^^ entity.name.actor.swift - keyword
//                        ^ punctuation.separator.annotation.conformance.swift
//                          ^^^^^^^^^^^^^^ support.class.swift
//                                        ^ punctuation.separator.continuation.swift
//                                          ^^^^^^^^^^^^ support.class.swift
//                                                       ^^ meta.block.swift
//                                                       ^ punctuation.section.block.begin.swift
//                                                        ^ punctuation.section.block.end.swift

  fileprivate actor SomeActor: SomeSuperActor, SomeProtocol {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.actor.swift
//            ^^^^^ keyword.declaration.actor.swift
//                  ^^^^^^^^^ entity.name.actor.swift - keyword
//                           ^ punctuation.separator.annotation.conformance.swift
//                             ^^^^^^^^^^^^^^ support.class.swift
//                                           ^ punctuation.separator.continuation.swift
//                                             ^^^^^^^^^^^^ support.class.swift
//                                                          ^^ meta.block.swift
//                                                          ^ punctuation.section.block.begin.swift
//                                                           ^ punctuation.section.block.end.swift

  private actor SomeActor: SomeSuperActor, SomeProtocol {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.actor.swift
//        ^^^^^ keyword.declaration.actor.swift
//              ^^^^^^^^^ entity.name.actor.swift - keyword
//                       ^ punctuation.separator.annotation.conformance.swift
//                         ^^^^^^^^^^^^^^ support.class.swift
//                                       ^ punctuation.separator.continuation.swift
//                                         ^^^^^^^^^^^^ support.class.swift
//                                                      ^^ meta.block.swift
//                                                      ^ punctuation.section.block.begin.swift
//                                                       ^ punctuation.section.block.end.swift
