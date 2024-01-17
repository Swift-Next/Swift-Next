// SYNTAX TEST "Swift.sublime-syntax"

///
/// - Note: This file is taken from https://github.com/textmate/swift.tmbundle
///         and modified by https://github.com/aerobounce
///         tests implemented by https://github.com/yaroslavyaroslav
///

/******************************************************************************
 * Comment Tests
 *****************************************************************************/

// a comment
// <- comment.line.double-slash.swift punctuation.definition.comment.begin.swift
 // <- comment.line.double-slash.swift punctuation.definition.comment.begin.swift
//^^^^^^^^^^ comment.line.double-slash.swift

/* a block comment */noLongerAComment()
// <- punctuation.definition.comment.begin.swift
 // <- punctuation.definition.comment.begin.swift
// ^^^^^^^^^^^^^^^^^^ comment.block.swift
                // ^^ punctuation.definition.comment.end.swift
                  // ^^^^^^^^^^^^^^^^ variable.function.swift
                                  // ^ punctuation.section.parens.begin.swift
                                   // ^ punctuation.section.parens.end.swift

/*/ still just a block comment */noLongerAComment()


// Currently it treats let inputNameField and viewModel as a struct variable including it in symbol list
struct Some {
    static func createTextInputField(valuehandler _: ((_ value: String?) -> Void)? = nil) -> (String, String) {
        let inputNameField = 123 // this shouldn't be presented in symbol list
        let viewModel = 123 // this shouldn't be presented in symbol list
        return ("", "")
    }
}

enum SomeEnum {
    case nonUS

    case unregistered

    case retry
    case documents
    case kba

    case unverified
    case pending
    case sourceMissed

    case verified
    case suspended
    case deactivated

    init(isUS: Bool, status: String?, count: Int?, pending: Bool?) {
        switch (isUS, status, count, pending) {
            case let (isUS, status, _, _) where isUS && status == nil: self = .unregistered
            case let (isUS, _, _, _) where !isUS: self = .nonUS
            case let (_, status, _, _) where status == "suspended": self = .suspended
            case let (_, status, _, _) where status == "deactivated": self = .deactivated
            case let (_, status, _, _) where status == "documents": self = .documents
            case let (_, status, _, _) where status == "kba": self = .kba
            case let (_, status, _, _) where status == "retry": self = .retry
            case let (_, status, _, _) where status == "verified": self = .verified
            case let (_, _, _, pending) where pending == true: self = .pending
            case let (_, _, count, _) where count == 0: self = .sourceMissed
            default: fatalError("Unexpected behavior")
        }
    }
}

var some: Int = 12

class X {
  private var some: String {
    var x = 12
  }
}

struct X {
  private var some: String {
    var x = 12
  }
}

enum X {
  private var some: String {
    var x = 12
  }
}

actor X {
  private var some: String {
    var x = 12
  }
}

class X {
  private let some: String {
    let x = 12
  }
}

struct X {
  private let some: String {
    let x = 12
  }
}

enum X {
  private let some: String {
    let x = 12
  }
}

actor X {
  private let some: String {
    let x = 12
  }
}

private let titleView: UILabel = {
    let titleView = UILabel()
    titleView.numberOfLines = 0
    return titleView
}()

private lazy var titleView: UILabel = {
    let titleView = UILabel()
    titleView.numberOfLines = 0
    return titleView
}()

func some(_ xxx: String) -> String {
  var xsdfdfx = "123"
  return xsdfdfx
}

struct X {
  struct Y {
    var some: String { // should be in list
      var x = 123 // should not be in list
      return ""
    }
  }
}

// Currently it treats let infoSectionItems and viewModel as a struct variable including it in symbol list
private func infoSectionItems(for paymentProfile: IpayouProfile?) -> [PaymentInfoViewModel] {
  var infoSectionItems: [PaymentInfoViewModel] = []
    if ACServices.session.currentUser?.isUSUser() != true {
      infoSectionItems.append(
      .init(
        withModel: .init(
          description: L10n.Payment.Info.Availability.description,
          backroundColor: StylesManager.designStyle.neutral5()
        )
      )
    )
  }
}


/**/thatWasATinyBlockComment()
/* block comments /* can be nested, */ like this! */noLongerAComment()

import Foo   // whitespace ok
// <- meta.import.swift keyword.control.import.swift
//^^^^^ meta.import.swift
//     ^^^ support.module.swift
import Foo.Submodule
// <- meta.import.swift keyword.control.import.swift
import func Foo.Submodule.`func`
import func Control.Monad.>>=

// MARK: Conditional compilation / compiler directives

#if false // a comment
  This is not code.
#elseif false // a comment
  This isn't either.
#else // a comment
  thisIsCode() // a comment
#elseif os(macOS) || os(Linux) || foo_flag || arch(x86_64) && 1+2 && swift(>=4.2.6) //a comment
#elseif compiler(<5) || canImport(Foundation) || targetEnvironment(simulator) || targetEnvironment(UIKitForMac)
#endif
#sourceLocation(file: "foo", line: 123) // a comment
if #available(macOS 10.12, iOS 9.1.2, UIKitForMac 1, *) {}
if #unavailable(iOS 13, *) { loadMainWindow() }
#selector(MyClass.func)
#selector(getter: MyClass.func) #selector(setter: MyClass.func)
#keyPath(self.parent.name)
#colorLiteral(), #imageLiteral(), #fileLiteral()
#file, #line, #function, #dsohandle, #filePath
__FILE__, __LINE__, __FUNCTION__, __DSO_HANDLE__

// MARK: Attributes

@available(
  macOS 1.2, macOSApplicationExtension 1.2, OSX, tvOS 1.4, iOS, watchOS,
  swift 5, UIKitForMac,
  noasync,
  introduced, introduced: 1,
  deprecated, deprecated: 1,
  obsoleted, obsoleted: 1,
  message, message: "don't use this",
  renamed, renamed: "somethingElse",
  *, unavailable: no args)

@objc(thisIs:aSelector:) @objc(forgotAColon:afterThis)
@arbitraryAttr(with args)


// MARK: Builtins

x.dropFirst, x.dropFirst(3), x.dropFirst { /* no closure param */ }
x.contains, x.contains(y), x.contains { $0 == y }
autoreleasepool { }
withExtendedLifetime { /* requires an arg */ }
withExtendedLifetime(x) { }
Process.foo, Process.argc, Process.unsafeArgv, Foo.argc
obj+startIndex, obj.startIndex
func foo() -> Never { fatalError() }

// MARK: Types

func foo(
  builtin: Int, x: String, x: Sequence,
  optional: Int!, x: Int?, x: Int!?!,
  collection: Int, x: [Int], x: [Int: String], x: [Int: String: Invalid],
  tuple: (Int, [Int], [Int: String], [Int: String: Invalid]),
  boundGeneric: Any<Int, String, (Int, Never)>, differsFrom invalid: Int, String,
  function: Int -> Void, x: (Int) throws -> String, x: (@escaping (Int) throws -> Void) rethrows -> Int,
  writeback: inout Int,
  variadic: Int...,
  composition: Sequence & Collection, oldStyle: protocol<Sequence, Collection>,
  metatype: Foo.Type, x: Foo.Protocol
){}

func opaqueTypes() -> some View {}
struct Foo {
  let some: Int? = .some(42)
  var body: some View
}

// MARK: Type definitions

struct Foo { }
class Foo { }
class Foo: Bar { }
class Foo<T where T: Equatable>: Bar { }
class Foo<T>: Bar where T: Equatable { }
class `var` {}
class var x: Int

protocol Foo {
  associatedtype T: Equatable
  associatedtype T = Int
  associatedtype T: Equatable = Int
  func f<T: P3>(_: T) where T.A == Self.A, T.A: C // trailing comment still allows where to end
  func functionBodyNotAllowedHere<T>() async throws -> Int {}
  init(norHere: Int) async throws {}
  init(norHere: Int) throws async {}
}
protocol Foo: Equatable {}
protocol Foo: Equatable, Indexable {}
protocol Foo: class, Equatable {}
protocol SE0142 : Sequence where Iterator.Element == Int { associatedtype Foo }
protocol SE0142 {
  associatedtype Iterator : IteratorProtocol
  associatedtype SubSequence : Sequence where SubSequence.Iterator.Element == Iterator.Element
}
protocol Foo { init(x: Int) }
func bar() { /* this is valid */ }

enum Foo {
  case foo
  case foo, bar baz
  case foo,
  bar
  case foo(Int), bar(val: Int, labelNotAllowed val2: Int), baz(val: Int)
  case foo(_ x: Int)
  indirect case foo
  case rawValue = 42, xx = "str", xx = true, xx = [too, complex], xx
}

typealias Foo = Bar
typealias Foo<T> = Bar<T, Int> // comment

// MARK: Actors

actor BankAccount: Encodable, CustomUserProtocol, Yet.Another.User.Inherited.Protocol {
  let accountNumber: Int
  var balance: Double
  init(accountNumber: Int, initialDeposit: Double) {
    self.accountNumber = accountNumber
    self.balance = initialDeposit
  }
}
@objc actor MyActor {
  let accountNumber: Int
  nonisolated let accountNumber: Int
}
extension BankAccount {
  func deposit(amount: Double, to account: isolated BankAccount)
  nonisolated func safeAccountNumberDisplayString() -> String
  nonisolated var description: String {}
}

// MARK: Extensions

extension T {}
extension String {}
extension Array: Equatable {}
extension Array where Element: Equatable, Foo == Int {}
extension Array: Equatable, Foo where Element: Equatable, Foo == Int {}

// MARK: Functions

func something(
  _ unlabeledArg: Int,
  label separateFromInternalName: Int,
  labelSameAsInternalName: Int
  missed: a comma,
  foo: bar,
){}
func foo() -> Int {}
func foo() throws -> (Int, String) {}
func foo() rethrows {}
func +++(arg: Int) {}
func `func`(arg: Int){}
func generic<T>(arg: TimeInterval.Inherited.Class){}
func ++<T>(arg: Int){}
func < <T>(arg: Int){}
func  <<T>(arg: Int){}
func <+<<T>(arg: Int){}

// MARK: SE-0335 Existential `any`
let p1: P = S() // error
let p2: any P = S() // okay

let pq1: P & Q = S() // error
let pq2: any P & Q = S() // okay
let pObject: any AnyObject & P = C()
let existentialMetatype: any P.Type = S.self
let compositionMetatype: any (P & Q).Type = S.self
let protocolMetatype: (any P).Type = (any P).self
typealias AnyP = any P

let any = any // any is still usable as an identifier

// MARK: async/await
func foo() async {
  let x = await y
  let z = async  // async is only a contextual keyword
  let newURL = await server.redirectURL(for: url)
  let (data, response) = try await session.dataTask(with: newURL)
  let (data, response) = await try session.dataTask(with: newURL) // not allowed
  let (data, response) = await (try session.dataTask(with: newURL)) // ok
  async let dog = getDoggo()
  async let pup: Dog = getDoggo()
}
callMe { // async closure
  async let hello = greet()
  return await hello
}
func foo() async -> Int {}
func foo() async throws -> (Int, String) {}
func foo() throws async -> (Int, String) {}
func foo() async rethrows {}
func foo() rethrows async {}
init() throws async {}
struct FunctionTypes {
  var syncNonThrowing: () -> Void
  var syncThrowing: () throws -> Void
  var asyncNonThrowing: () async -> Void
  var asyncThrowing: () async throws -> Void = x
}
let closure = { _ = await getInt() } // implicitly async
let closure = { (x: Int) async -> Int in 42 } // explicitly async
let closure = { (x: Int) throws -> Int in 42 }
let closure = { (x: Int) rethrows -> Int in 42 }
let closure = { (x: Int) async throws -> Int in 42 }
let closure = { (x: Int) throws async -> Int in 42 }

init(arg: Value) {}
init<T>(arg: Value) {}

func generic<A, B, C>() {}
func generic<OldStyle where T: Equatable>(arg: Int) throws -> Int {}
func generic<NewStyle>(arg: Int) throws -> Int where T: Equatable, T == Int {}

// MARK: Operators

x+y, x++y, x +++ y
x...y  // TODO: probably shouldn't be variable
x..<y
x<<.y  // not a dot operator
x?.y, x!.y

// old style
infix operator *.* { associativity left precedence 100 assignment }
// new style
infix operator *.* : AssignmentPrecedence { invalid }
precedencegroup ExamplePrecedence {
  higherThan: LogicalConjunctionPrecedence
  lowerThan: SomeOtherPrecedence
  associativity: left assignment: true
}

// MARK: Other expressions

compoundFunctionName(_:arg1:arg2:), #selector(foo(bar:))
functionCall(arg1: "stuff", labels notRecognized: "stuff")
let tuple = (arg1: "stuff", labels notRecognized: "stuff")
subscriptCall[arg1: "stuff", labels notRecognized: "stuff"]

foo(a ?  b : c)
foo(a ?, b : c)
foo(flag ? foo as Bar : nil)
foo(flag ? foo : nil, bar: nil)
foo(
  flag ?
  foo :
  nil,
  bar: nil
)
foo(
  flag
  ? foo
  : nil,
  bar: nil
)

0.1, -4_2.5, 6.022e23, 10E-5
-0x1.ap2_3, 0x31p-4
0b010, 0b1_0
0o1, 0o7_3
02, 3_456
0x4, 0xF_7
0x1p, 0x1p_2, 0x1.5pa, 0x1.1p+1f, 0x1pz, 0x1.5w
0x1.f, 0x1.property
-.5, .2f
1.-.5
0b_0_1, 0x_1p+3q
tuple.0, tuple.42
0b12.5, 0xG

print("a\0b\nc\u{1}d \(interpolation) a \(1 + foo(x: 4)) nested: \(1+"string"+2) x"#)
print(#"raw: a\0b\nc\u{1}d \(interpolation) a \(1 + foo(x: 4)) nested: \(1+"string"+2) x"##)
print(#"raw: a\#0b\#nc\#u{1}d \#(interpolation) a \#(1 + foo(x: 4)) nested: \#(1+"string"+2) x"##)
print(##"raw: a\#0b\#nc\#u{1}d \#(interpolation) a \#(1 + foo(x: 4)) nested: \#(1+"string"+2) x"###)
print(##"raw: a\##0b\##nc\##u{1}d \##(interpolation) a \##(1 + foo(x: 4)) nested: \##(1+"string"+2) x"###)

"invalid newline
"
#"invalid newline
"#
##"invalid newline
"##

let SE0168 = """   illegal
        my, what a large…
    \(1 + foo(x: 4))
    \("""
      more \( """
        s
      """)
    """)
        …string you have!
    illegal"""
let SE0168 = #"""   illegal
        my, what a large…
    \#(1 + foo(x: 4))
    \#(#"""
      more \#( #"""
        s
      """#)
    """#)
        …string you have!
    illegal"""#
let SE0168 = ##"""   illegal
        my, what a large…
    \#(1 + foo(x: 4))
    \#(#"""
      more \#( #"""
        s
      """#)
    """#)
        …string you have!
    illegal"""##

associatedtype, class, deinit, enum, extension, func, import, init, inout,
let, operator, $123, precedencegroup, protocol, struct, subscript, typealias,
var, fileprivate, internal, private, public, static, defer, if, guard, do,
repeat, else, for, in, while, return, break, continue, as?, fallthrough,
switch, case, default, where, catch, as, Any, false, is, nil, rethrows,
super, self, Self, throw, true, try, throws, nil
