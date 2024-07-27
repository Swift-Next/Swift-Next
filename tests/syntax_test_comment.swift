// SYNTAX TEST "Swift.sublime-syntax"

// MARK: Comment Tests

  // a comment
//^^^^^^^^^^^^ comment.line.double-slash.swift
//^^ punctuation.definition.comment.begin.swift

  /// a doc comment
//^^^^^^^^^^^^^^^^^ comment.line.documentation.swift
//^^^ punctuation.definition.comment.begin.swift

  /**
//^^^ punctuation.definition.comment.begin.swift
//^^^^ comment.block.documentation.swift
  * A block doctring comment
//^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.swift
  `x = y`
//^^^^^^^ comment.block.documentation.swift
//^^^^^^^ markup.raw.inline.swift
  */
//^^ comment.block.documentation.swift punctuation.definition.comment.end.swift


  /* a block comment */noLongerAComment()
//^^^^^^^^^^^^^^^^^^^^^ comment.block.swift
//^^ punctuation.definition.comment.begin.swift
//  ^^^^^^^^^^^^^^^^^^^ punctuation.definition.comment.end.swift
//                     ^^^^^^^^^^^^^^^^ variable.function.swift
//                                     ^^ meta.function.parameters.swift
//                                     ^ punctuation.section.parens.begin.swift
//                                      ^ punctuation.section.parens.end.swift

  /*/ still just a block comment */noLongerAComment()
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.swift
//^^ punctuation.definition.comment.begin.swift
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ punctuation.definition.comment.end.swift
//                                 ^^^^^^^^^^^^^^^^ variable.function.swift
//                                                 ^^ meta.function.parameters.swift
//                                                 ^ punctuation.section.parens.begin.swift
//                                                  ^ punctuation.section.parens.end.swift
