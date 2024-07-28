// SYNTAX TEST "Swift.sublime-syntax"

// MARK: Class Definition Tests

// MARK: Plain Class Definition

  class SomeClass {}
//^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//^^^^^ keyword.declaration.class.swift
//      ^^^^^^^^^ entity.name.class.swift
//                ^^ meta.block.swift
//                ^ punctuation.section.block.begin.swift
//                 ^ punctuation.section.block.end.swift

// MARK: Access-Level Class Definition (Without Final)

  open class SomeClass {}
//^^^^ storage.modifier.access-level.open.swift
//     ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//     ^^^^^ keyword.declaration.class.swift
//           ^^^^^^^^^ entity.name.class.swift
//                     ^^ meta.block.swift
//                     ^ punctuation.section.block.begin.swift
//                      ^ punctuation.section.block.end.swift

  public class SomeClass {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//       ^^^^^ keyword.declaration.class.swift
//             ^^^^^^^^^ entity.name.class.swift
//                       ^^ meta.block.swift
//                       ^ punctuation.section.block.begin.swift
//                        ^ punctuation.section.block.end.swift

  package class SomeClass {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//        ^^^^^ keyword.declaration.class.swift
//              ^^^^^^^^^ entity.name.class.swift
//                        ^^ meta.block.swift
//                        ^ punctuation.section.block.begin.swift
//                         ^ punctuation.section.block.end.swift

  internal class SomeClass {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//         ^^^^^ keyword.declaration.class.swift
//               ^^^^^^^^^ entity.name.class.swift
//                         ^^ meta.block.swift
//                         ^ punctuation.section.block.begin.swift
//                          ^ punctuation.section.block.end.swift

  fileprivate class SomeClass {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//            ^^^^^ keyword.declaration.class.swift
//                  ^^^^^^^^^ entity.name.class.swift
//                            ^^ meta.block.swift
//                            ^ punctuation.section.block.begin.swift
//                             ^ punctuation.section.block.end.swift

  private class SomeClass {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//        ^^^^^ keyword.declaration.class.swift
//              ^^^^^^^^^ entity.name.class.swift
//                        ^^ meta.block.swift
//                        ^ punctuation.section.block.begin.swift
//                         ^ punctuation.section.block.end.swift

// MARK: Final Keyword With Access-Level Class Definition

  /// `open` can't be combined with `final`
  open class SomeClass {}
//^^^^ storage.modifier.access-level.open.swift
//     ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//     ^^^^^ keyword.declaration.class.swift
//           ^^^^^^^^^ entity.name.class.swift
//                     ^^ meta.block.swift
//                     ^ punctuation.section.block.begin.swift
//                      ^ punctuation.section.block.end.swift

  public final class SomeClass {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^ storage.modifier.final.swift
//             ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//             ^^^^^ keyword.declaration.class.swift
//                   ^^^^^^^^^ entity.name.class.swift
//                             ^^ meta.block.swift
//                             ^ punctuation.section.block.begin.swift
//                              ^ punctuation.section.block.end.swift


  final public class SomeClass {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^ storage.modifier.access-level.public.swift
//             ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//             ^^^^^ keyword.declaration.class.swift
//                   ^^^^^^^^^ entity.name.class.swift
//                             ^^ meta.block.swift
//                             ^ punctuation.section.block.begin.swift
//                              ^ punctuation.section.block.end.swift

  final package class SomeClass {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^^ storage.modifier.access-level.package.swift
//              ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//              ^^^^^ keyword.declaration.class.swift
//                    ^^^^^^^^^ entity.name.class.swift
//                              ^^ meta.block.swift
//                              ^ punctuation.section.block.begin.swift
//                               ^ punctuation.section.block.end.swift

  final internal class SomeClass {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^^^ storage.modifier.access-level.internal.swift
//               ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//               ^^^^^ keyword.declaration.class.swift
//                     ^^^^^^^^^ entity.name.class.swift
//                               ^^ meta.block.swift
//                               ^ punctuation.section.block.begin.swift
//                                ^ punctuation.section.block.end.swift

  final fileprivate class SomeClass {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//                  ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//                  ^^^^^ keyword.declaration.class.swift
//                        ^^^^^^^^^ entity.name.class.swift
//                                  ^^ meta.block.swift
//                                  ^ punctuation.section.block.begin.swift
//                                   ^ punctuation.section.block.end.swift

  final private class SomeClass {}
//^^^^^ storage.modifier.final.swift
//      ^^^^^^^ storage.modifier.access-level.private.swift
//              ^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//              ^^^^^ keyword.declaration.class.swift
//                    ^^^^^^^^^ entity.name.class.swift
//                              ^^ meta.block.swift
//                              ^ punctuation.section.block.begin.swift
//                               ^ punctuation.section.block.end.swift

// MARK: Class Definition With Inheritance

  class SomeClass: SomeSuperClass {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//^^^^^ keyword.declaration.class.swift
//      ^^^^^^^^^ entity.name.class.swift
//               ^ punctuation.separator.annotation.conformance.swift
//                 ^^^^^^^^^^^^^^ support.class.swift
//                                ^^ meta.block.swift
//                                ^ punctuation.section.block.begin.swift
//                                 ^ punctuation.section.block.end.swift

// MARK: Class Definition With Inheritance & Protocols Conformance

  class SomeClass: SomeSuperClass, SomeProtocol {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//^^^^^ keyword.declaration.class.swift
//      ^^^^^^^^^ entity.name.class.swift
//               ^ punctuation.separator.annotation.conformance.swift
//                 ^^^^^^^^^^^^^^ support.class.swift
//                               ^ punctuation.separator.continuation.swift
//                                 ^^^^^^^^^^^^ support.class.swift
//                                              ^^ meta.block.swift
//                                              ^ punctuation.section.block.begin.swift
//                                               ^ punctuation.section.block.end.swift

// MARK: Access-Level Class Definition With Inheritance & Protocols Conformance

  open class SomeClass: SomeSuperClass, SomeProtocol {}
//^^^^ storage.modifier.access-level.open.swift
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//     ^^^^^ keyword.declaration.class.swift
//           ^^^^^^^^^ entity.name.class.swift
//                    ^ punctuation.separator.annotation.conformance.swift
//                      ^^^^^^^^^^^^^^ support.class.swift
//                                    ^ punctuation.separator.continuation.swift
//                                      ^^^^^^^^^^^^ support.class.swift
//                                                   ^^ meta.block.swift
//                                                   ^ punctuation.section.block.begin.swift
//                                                    ^ punctuation.section.block.end.swift

  public class SomeClass: SomeSuperClass, SomeProtocol {}
//^^^^^^ storage.modifier.access-level.public.swift
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//       ^^^^^ keyword.declaration.class.swift
//             ^^^^^^^^^ entity.name.class.swift
//                      ^ punctuation.separator.annotation.conformance.swift
//                        ^^^^^^^^^^^^^^ support.class.swift
//                                      ^ punctuation.separator.continuation.swift
//                                        ^^^^^^^^^^^^ support.class.swift
//                                                     ^^ meta.block.swift
//                                                     ^ punctuation.section.block.begin.swift
//                                                      ^ punctuation.section.block.end.swift

  package class SomeClass: SomeSuperClass, SomeProtocol {}
//^^^^^^^ storage.modifier.access-level.package.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//        ^^^^^ keyword.declaration.class.swift
//              ^^^^^^^^^ entity.name.class.swift
//                       ^ punctuation.separator.annotation.conformance.swift
//                         ^^^^^^^^^^^^^^ support.class.swift
//                                       ^ punctuation.separator.continuation.swift
//                                         ^^^^^^^^^^^^ support.class.swift
//                                                      ^^ meta.block.swift
//                                                      ^ punctuation.section.block.begin.swift
//                                                       ^ punctuation.section.block.end.swift

  internal class SomeClass: SomeSuperClass, SomeProtocol {}
//^^^^^^^^ storage.modifier.access-level.internal.swift
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//         ^^^^^ keyword.declaration.class.swift
//               ^^^^^^^^^ entity.name.class.swift
//                        ^ punctuation.separator.annotation.conformance.swift
//                          ^^^^^^^^^^^^^^ support.class.swift
//                                        ^ punctuation.separator.continuation.swift
//                                          ^^^^^^^^^^^^ support.class.swift
//                                                       ^^ meta.block.swift
//                                                       ^ punctuation.section.block.begin.swift
//                                                        ^ punctuation.section.block.end.swift

  fileprivate class SomeClass: SomeSuperClass, SomeProtocol {}
//^^^^^^^^^^^ storage.modifier.access-level.fileprivate.swift
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//            ^^^^^ keyword.declaration.class.swift
//                  ^^^^^^^^^ entity.name.class.swift
//                           ^ punctuation.separator.annotation.conformance.swift
//                             ^^^^^^^^^^^^^^ support.class.swift
//                                           ^ punctuation.separator.continuation.swift
//                                             ^^^^^^^^^^^^ support.class.swift
//                                                          ^^ meta.block.swift
//                                                          ^ punctuation.section.block.begin.swift
//                                                           ^ punctuation.section.block.end.swift

  private class SomeClass: SomeSuperClass, SomeProtocol {}
//^^^^^^^ storage.modifier.access-level.private.swift
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.swift - meta.class meta.class
//        ^^^^^ keyword.declaration.class.swift
//              ^^^^^^^^^ entity.name.class.swift
//                       ^ punctuation.separator.annotation.conformance.swift
//                         ^^^^^^^^^^^^^^ support.class.swift
//                                       ^ punctuation.separator.continuation.swift
//                                         ^^^^^^^^^^^^ support.class.swift
//                                                      ^^ meta.block.swift
//                                                      ^ punctuation.section.block.begin.swift
//                                                       ^ punctuation.section.block.end.swift
