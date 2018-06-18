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
// <- constant.numeric.decimal
//^^^^^^^ constant.numeric.decimal
0xDEADBEEF
// <- constant.numeric.hexadecimal
//^^^^^^^^ constant.numeric.hexadecimal
0xGGGGG
//^^^^^ invalid - constant.numeric.hexadecimal
0o12345670
// <- constant.numeric.octal
//^^^^^^^^ constant.numeric.octal
0o8888
//^^^^ invalid - constant.numeric.octal
0b01010110101
// <- constant.numeric.binary
//^^^^^^^^^^^ constant.numeric.binary
0b22222
//^^^^^ invalid - constant.numeric.binary

foo! + bar!.baz
//^^ variable.other.force-unwrap
//     ^^^^ variable.other.force-unwrap

var foo: = 0
//       ^ invalid

var foo: int.foo = bar
// <- keyword.variable
//  ^^^ variable.other
//       ^^^ support.class
//          ^ keyword.operator
//           ^^^ support.class
var foo: int.foo = bar
//               ^ -invalid

let foo = 0
// <- keyword.variable
//  ^^^ variable.other

foo + (a?.bar ?? 0)
//^ variable.other
//     ^^ variable.other.optional
//            ^^ keyword.operator.nil-coalesce

let (a: Int, b) = (1, 2)
//  ^^^^^^^^^^^ support.tuple
//   ^ variable.other
//      ^^^ support.class
//           ^ variable.other

__FILE__
// ^^^^^ invalid.deprecated
#file
// <- constant.language
// ^^ constant.language

#if FOO
// <- punctuation.definition.preprocessor
//  ^^^ source.swift
#endif
//^^^ meta.preprocessor.c

if a || b {}
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
// <- storage.type
// <- storage.type.enum
//   ^^^ entity.name.type
enum Foo : String { case Value }
//                ^ punctuation.definition.block
//                             ^ punctuation.definition.block
//                ^^^^^^^^^^^^^^ meta.class
class Foo:String{ let var }
// <- storage.type
// <- storage.type.class
//    ^^^ entity.name.type
//        ^^^^^^ support.class
class Foo:String{ let var }
//              ^^^^^^^^^^^ meta.class
//              ^ punctuation.definition.block
//                        ^ punctuation.definition.block
class Foo:String,Proto{ let var }
// <- storage.type
// <- storage.type.class
//       ^ keyword.operator.type
//        ^^^^^^ support.class
//              ^ keyword.operator
//               ^^^^^ support.class

enum Foo : String {
  case Value
//  ^ keyword.control
}

if foo {}
// <- keyword.control
if { /**/ }
// ^ punctuation.definition.control.begin
//        ^ punctuation.definition.control.end
else {}
// <- keyword.control
guard {}
// <- keyword.control
try {}
// <- keyword.control
catch {}
// <- keyword.control
for i in 0..0 {}
// <- keyword.control
while true {}
// <- keyword.control
switch foo { case .Bar: }
// <- keyword.control
//           ^^^^ keyword.control
where
// <- invalid

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

a .+. b
//^^^ keyword.operator
a +.. b
//^^^ invalid keyword.operator

enum Foo {}
// <- storage.type.enum
//   ^^^ entity.name.type
//       ^^ punctuation.definition.block
//       ^^ meta.class
enum Foo : Bar {}
// <- storage.type.enum
//   ^^^ entity.name.type
//         ^^^ support.class

struct Foo invalid {}
// <- storage.type.struct
//     ^^^ entity.name.type
//         ^^^^^^^ invalid
//                 ^^ meta.class

class Foo {}
// <- storage.type.class
//    ^^^ entity.name.type
class Foo : Bar {}
// <- storage.type.class
//    ^^^ entity.name.type
//        ^ keyword.operator
//          ^^^ support.class
protocol Foo {}
// <- storage.type.protocol
//       ^^^ entity.name.type
//           ^^ punctuation.definition.block
//           ^^ meta.class
protocol Foo : Bar {}
// <- storage.type.protocol
//       ^^^ entity.name.type
//           ^ keyword.operator
//             ^^^ support.class
extension Foo {}
// <- storage.type.extension
//        ^^^ entity.name.type
extension Foo
//        ^^^ entity.name.type
{}
// <- meta.class
extension Foo: Bar {}
// <- storage.type.extension
//        ^^^ entity.name.type
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

".Foo"
// <- string.quoted punctuation.definition.string.begin
// ^ string.quoted
//   ^ punctuation.definition.string.end

a = (.Foo(bar))
//    ^^^ constant.language.enum
//  ^^^^^^^^^^^ meta.group
//         ^^^ - constant.language.enum
//  ^ punctuation.definition.group.begin
//            ^ punctuation.definition.group.end

.Foo .Bar
// <- - meta.group
// <- constant.language.enum
//    ^^^ constant.language.enum

Module.Type.Other
// <- support.class
//    ^ keyword.operator
//     ^^^^ support.class
//         ^ keyword.operator
//          ^^^^^ support.class
Module.Type + a?.bar()
// <- -constant.language.enum
//     ^ -constant.language.enum
//         ^ -constant.language.enum

[1, 2, 3]
// <- meta.array-or-dictionary
[ "a": true, "b": 2, "c": 3 ]
// <- meta.array-or-dictionary
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.array-or-dictionary
// <- punctuation.definition.array.begin
//                          ^ punctuation.definition.array.end
[ "a": true ? a : b, "b": 2, "c": 3 ]
//   ^ keyword.operator.dictionary-key
//              ^ keyword.operator.ternary

let foo = $0
//        ^^ invalid
let block = { (a) in $0 }
//          ^^^^^^^^^^^^^ meta.closure
//                   ^^ variable.placeholder
