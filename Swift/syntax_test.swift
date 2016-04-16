//  SYNTAX TEST "Packages/Swift-for-f-ing-sublime/Swift.sublime-syntax"

// comment
// ^^^^^^^ comment.line
// <- punctuation.definition.comment

// MARK: testing!
// ^^^^^^^^^^^^^^ comment.line
// ^^^^^ punctuation.definition.comment
//       ^^^^^^^^ meta.toc-list


/* comment */
// ^^^^^^^^^^ comment.block
a  /* aa */ a
// ^^ punctuation.definition.comment
//    ^^ -punctuation.definition.comment
//       ^^ punctuation.definition.comment
//          ^ -punctuation.definition.comment

/* 000 */
//^^^^^^^ comment.block
// ^^^ -constant
000 /* "string" */
// <- -comment
//  ^^^^^^^^^^^^^^ comment.block
//     ^^^^^^^^ -string

a  /* /* */ */ + b
//<- -comment.block
// ^^^^^^^^^^^ comment.block
// ^^ punctuation.definition.comment
//    ^^ punctuation.definition.comment
//       ^^ punctuation.definition.comment
//          ^^ punctuation.definition.comment
//             ^^^ -comment.block

true
// <- constant.language
// <- constant.language.true
false
// <- constant.language
// <- constant.language.false
nil
// <- constant.language
// <- constant.language.nil

1.1  100.001
// <- constant.numeric
// <- constant.numeric.float
//   ^^^^^^^ constant.numeric
100
// <- constant.numeric
// <- constant.numeric.decimal
1_000_000
//^^^^^^^ constant.numeric.decimal
0xDEADBEEF
// <- constant.numeric.hexadecimal
//^^^^^^^^ constant.numeric.hexadecimal
0xGGGGG
//^^^^^ -constant.numeric.hexadecimal
0o12345670
// <- constant.numeric.octal
//^^^^^^^^ constant.numeric.octal
0o8888
//^^^^ -constant.numeric.octal
0b01010110101
// <- constant.numeric.binary
//^^^^^^^^^^^ constant.numeric.binary
0b22222
//^^^^^ -constant.numeric.binary

var foo: int.foo
// <- keyword.variable
//  ^^^ variable.other
//       ^^^ support.class
//           ^^^ support.class
var foo: = 0
//       ^ invalid

let foo = 0
// <- keyword.variable
//  ^^^ variable.other

foo + (a?.bar ?? 0)
//^ variable.other
//     ^^ variable.other.optional

let (a: Int, b) = (1, 2)
//  ^^^^^^^^^^^ support.tuple
//   ^ variable.other
//      ^^^ support.class
//           ^ variable.other

__FILE__
// ^^^^^ invalid.deprecated

if { /**/ }
// <- keyword.control
where { /**/ }
// <- keyword.control

#if FOO
// <- punctuation.definition.preprocessor
//  ^^^ source.swift
#endif
//^^^ meta.preprocessor.c

if a || b
// <- keyword
//   ^^ keyword.operator

true ? 1 : 2
//   ^ keyword.operator.ternary
//       ^ keyword.operator.ternary
true ?? 1 :: 2
//   ^^ -keyword.operator.ternary
//        ^^ -keyword.operator.ternary

public func foo
// <- storage.modifier
//     ^ storage.type
//     ^ storage.type.function
//          ^ variable
//          ^ entity.name.function

self
// <- keyword.variable
super
// <- keyword.variable

Color
// <- support.class
UIColor
// <- support.class

enum Foo { case Value }
// <- keyword.entity
//   ^ support.class
//   ^ entity.name.type
enum Foo : String { case Value }
//                ^ punctuation.definition.block
//                             ^ punctuation.definition.block
//                  ^^^^^^^^^^ meta.class
class Foo:String{ let var }
// <- keyword.entity
//    ^ support.class
//    ^ entity.name.type
//        ^ support.class
//              ^ punctuation.definition.block
//                        ^ punctuation.definition.block
//                ^^^^^^^ meta.class
class Foo:String,Proto{ let var }
// <- keyword.entity
//               ^ support.class

enum Foo : String {
  case Value
//  ^ keyword.control
}

if foo {}
// <- keyword.control
else {}
// <- keyword.control
for {}
// <- keyword.control
while true {}
// <- keyword.control
//    ^^^^ constant
switch foo { case .Bar: }
// <- keyword.control
//           ^^^^ keyword.control
break
// <- keyword.control
return
// <- keyword.control
case 0..0
// <- keyword.control
//   ^ constant.numeric
//    ^^ keyword.operator
//      ^ constant.numeric
continue
// <- keyword.control
default
// <- keyword.control

enum Foo {}
// <- keyword.entity
//   ^^^ support.class
//       ^^ punctuation.definition.block
//       ^^ meta.class
enum Foo : Bar {}
// <- keyword.entity
//   ^^^ support.class
//         ^^^ support.class
struct Foo
// <- keyword.entity
//     ^^^ support.class
struct Foo : Bar
//         ^ invalid
//           ^ invalid
class Foo {}
// <- keyword.entity
//    ^^^ support.class
class Foo : Bar {}
// <- keyword.entity
//    ^^^ support.class
//        ^ keyword.operator
//          ^^^ support.class
protocol Foo {}
// <- keyword.entity
//       ^^^ support.class
//           ^^ punctuation.definition.block
//           ^^ meta.class
protocol Foo : Bar {}
// <- keyword.entity
//       ^^^ support.class
//           ^ keyword.operator
//             ^^^ support.class
extension Foo {}
// <- keyword.entity
//        ^^^ support.class
extension Foo: Bar
// <- keyword.entity
//        ^ support.class
//           ^ keyword.operator
//             ^^^ support.class

protocol Bla {
    func foo()
//  ^^^^^^^^ meta.function
//  ^^^^ storage.type.function
    optional func foo()
//  ^^^^^^^^^^^^^^^^^ meta.function
//  ^^^^^^^^^^^^^ storage.type.function
}

func foo()
//   <- meta.function
func foo() {}
//   <- meta.function
//   ^^^ variable.function
//         ^^ meta.function
class func foo() {}
//   <- meta.function
//   <- storage.type.function
//    ^ storage.type.function

func foo() { foo }
//   ^^^ variable.function
//         ^^^^^^^ meta.function

func foo(a, b: String) {
//   ^ variable.function
//       ^ invalid
//          ^ variable.parameter
//             ^^^^^^ support.class
//                     ^ meta.function
    let foo = bar
//  ^^^^^^^^^^^^^ meta.function
}

"foo"
// <- string
// <- string.quoted

"foo\"\e" foo
// <- string
//  ^^ constant.character.escape
//    ^^ -constant.character.escape
//      ^ string
//        ^ -string

"\u{24}"
 //<- constant.character.escape.unicode
//^^^^^ constant.character.escape.unicode
"\u{1F496}"
 //<- constant.character.escape.unicode
//^^^^^^^^ constant.character.escape.unicode

"foo \(bar + (foo * bar))"
// <- string
//   ^ punctuation.section
//                      ^ punctuation.section
//     ^ -string
//                     ^ -punctuation.section

a = (.Foo(.bar))
//    ^ constant.language.enum
//         ^ constant.language.enum

.Foo+.Bar
 // <- constant.language.enum
//  ^ -constant.language.enum
//    ^ constant.language.enum

a.Foo + a?.bar()
// <- -constant.language.enum
//^ -constant.language.enum
//         ^ -constant.language.enum

".Foo"
// <- string.quoted
// ^ string.quoted

[1, 2, 3]
["a": 1,"b": 2,"c": 3]

let foo = $0
//        ^^ invalid
let block = { (a) in $0 }
//          ^^^^^^^^^^^^^ meta.closure
//                   ^^ variable.placeholder
