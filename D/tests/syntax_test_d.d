// SYNTAX TEST "Packages/D/D.sublime-syntax"

module foo.a.b1_3;
// <- meta.namespace.d keyword.declaration.namespace.d
 // <- meta.namespace.d keyword.declaration.namespace.d
//^^^^ keyword.declaration.namespace.d
//^^^^^^^^^^^^^^^^ meta.namespace.d
//     ^^^^^^^^^^ meta.path.d
//     ^^^ variable.other.d
//        ^ punctuation.accessor.dot.d
//         ^ variable.other.d
//          ^ punctuation.accessor.dot.d
//           ^^^^ entity.name.namespace.d
//               ^ punctuation.terminator.d
  module foo.a.b1_3;
//^^^^^^^^^^^^^^^^^^ meta.namespace.d
//^^^^^^ keyword.declaration.namespace.d
//       ^^^^^^^^^^ meta.path.d
//       ^^^ variable.other.d
//          ^ punctuation.accessor.dot.d
//           ^ variable.other.d
//            ^ punctuation.accessor.dot.d
//             ^^^^ entity.name.namespace.d
//                 ^ punctuation.terminator.d

  /+
//^^ comment.block.nested.d punctuation.definition.comment.d
  /+
//^^ comment.block.nested.d comment.block.nested.d punctuation.definition.comment.d
  +/
//^^ comment.block.nested.d comment.block.nested.d punctuation.definition.comment.d
  +/
//^^ comment.block.nested.d punctuation.definition.comment.d

 /++
      +
//    ^ comment.block.nested.d punctuation.definition.comment.d
 +/
/++/
//^^ comment.block.nested.d punctuation.definition.comment.d

 /**
      *
//    ^ comment.block.d punctuation.definition.comment.d
 */
/**/
//^^ comment.block.d punctuation.definition.comment.d

//<- - comment

auto wysiwyg = r"f// \n\";
//             ^^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//             ^ storage.modifier.string.d
//              ^ punctuation.definition.string.begin.d
//                   ^^ - constant.character.escape.d
//                      ^ punctuation.definition.string.end.d
auto wysiwygAlt = `f//\n\`;
//                ^^^^^^^^ meta.string.d string.quoted.double.raw.backtick.d
//                ^ punctuation.definition.string.begin.d
//                    ^^ - constant.character.escape.d
//                       ^ punctuation.definition.string.end.d
auto doubleQuoted = "c://\'\"\?\\\0\a\b\f\n\r\t\v\x0B\2\12\762\u0feb\Uabcdef98\&quot;";
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.d string.quoted.double.d
//                  ^ punctuation.definition.string.begin.d
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape.d
//                                                                                   ^ punctuation.definition.string.end.d
auto invalidEscape = "\p";
//                    ^^ string.quoted.double.d invalid.illegal.unknown-escape.d
auto invalidEscape2 = "\u0fe";
//                    ^^^^^^^ meta.string.d string.quoted.double.d
//                     ^^ invalid.illegal.unknown-escape.d
auto invalidEscape3 = "\&;";
//                    ^^^^^ meta.string.d string.quoted.double.d
//                     ^^ invalid.illegal.unknown-escape.d
auto invalidEscape4 = "\u12398";
//                    ^^^^^^^^^ meta.string.d string.quoted.double.d
//                     ^^^^^^ constant.character.escape.d
//                           ^ - constant.character.escape.d
auto hexString = x"00 ba
//               ^^^^^^^^ meta.string.d string.quoted.double.raw.d
//               ^ storage.modifier.string.d
//                ^ punctuation.definition.string.begin.d
    5 5 b";
// ^^^^^^^ meta.string.d string.quoted.double.raw.d
//  ^^^ string.quoted.double.raw.d constant.character.escape.d
//      ^ string.quoted.double.raw.d invalid.illegal.unknown-escape.d
//       ^ string.quoted.double.raw.d punctuation.definition.string.end.d
auto deliminated = q"SQL_1
//                 ^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                 ^ storage.modifier.string.d
//                  ^ punctuation.definition.string.begin.d
//                   ^^^^^ constant.other.delimeter.d
    select foo \n
//  ^^^^^^^^^^^^^^ meta.string.d string.quoted.double.raw.d
SQL_1";
// <- meta.string.d string.quoted.double.raw.d constant.other.delimeter.d
//^^^^ meta.string.d string.quoted.double.raw.d
// ^^ constant.other.delimeter.d
//   ^ punctuation.definition.string.end.d
//    ^ punctuation.terminator.d
//    - meta.string.d
auto deliminatedBad = q"SQL\
//                         ^ meta.string.d string.quoted.double.raw.d invalid.illegal.d
SQL";
auto deliminatedNested = q"(f("))" + q"{f{"}}" + q"[f["]]" + q"<f<">>";
//                       ^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                       ^ storage.modifier.string.d
//                        ^^ punctuation.definition.string.begin.d
//                              ^^ punctuation.definition.string.end.d
//                                   ^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                                   ^ storage.modifier.string.d
//                                    ^^ punctuation.definition.string.begin.d
//                                          ^^ punctuation.definition.string.end.d
//                                               ^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                                               ^ storage.modifier.string.d
//                                                ^^ punctuation.definition.string.begin.d
//                                                      ^^ punctuation.definition.string.end.d
//                                                           ^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                                                           ^ storage.modifier.string.d
//                                                            ^^ punctuation.definition.string.begin.d
//                                                                  ^^ punctuation.definition.string.end.d
auto deliminatedAny = q"/foo(xxx)/";
//                    ^^^^^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                    ^ storage.modifier.string.d
//                     ^ punctuation.definition.string.begin.d
//                      ^ constant.other.delimeter.d
//                               ^ constant.other.delimeter.d
//                                ^ punctuation.definition.string.end.d
auto stringPostfix = ``c + ""w + q"//"d;
//                     ^ meta.string.d string.quoted.double.raw.backtick.d storage.type.string.d
//                           ^ meta.string.d string.quoted.double.d storage.type.string.d
//                                    ^ meta.string.d string.quoted.double.raw.d storage.type.string.d
auto tokenString = q{
//                 ^^ meta.string.d string.unquoted.embedded.d
//                 ^ storage.modifier.string.d
//                  ^ punctuation.definition.string.begin.d
    this is not real code 12
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.d
//  ^^^^ variable.language.d
//       ^^ keyword.d
//              ^^^^ storage.type.d
//                        ^^ constant.numeric.integer.decimal.d
    /*}*/
//  ^^^^^^ meta.string.d
//  ^^ punctuation.definition.comment.d
//     ^^ punctuation.definition.comment.d
//  ^^^^^ comment.block.d
    ''  'a'
//  ^^^^^^^^ meta.string.d
//  ^^ invalid.illegal.d
//      ^^^ string.quoted.single.d
    __TIME__
//  ^^^^^^^^ meta.string.d constant.language.d
};
// <- meta.string.d string.unquoted.embedded.d punctuation.definition.string.end.d

auto c = 'a';
//       ^^^ meta.string.d string.quoted.single.d
c = 'Ó';
//  ^^^ meta.string.d string.quoted.single.d
c = '\n';
//  ^^^^ meta.string.d string.quoted.single.d
//   ^^ constant.character.escape.d
c = '\x';
//  ^^^^ invalid.illegal.d
c = 'aa';
//  ^^^^ invalid.illegal.d
c = '\';
//  ^^^ invalid.illegal.d
c = '';
//  ^^ invalid.illegal.d
c = ''';
//  ^^ invalid.illegal.d

auto dec = 2_0__000;
//         ^^^^^^^^ constant.numeric.integer.decimal.d
dec = 1L;
//    ^^ constant.numeric.integer.decimal.d
//     ^ storage.type.numeric.d
dec = 1u;
//    ^^ constant.numeric.integer.decimal.d
//     ^ storage.type.numeric.d
dec = 1U;
//    ^^ constant.numeric.integer.decimal.d
//     ^ storage.type.numeric.d
dec = 1Lu;
//    ^^^ constant.numeric.integer.decimal.d
//     ^^ storage.type.numeric.d
dec = 1LU;
//    ^^^ constant.numeric.integer.decimal.d
//     ^^ storage.type.numeric.d
dec = 1uL;
//    ^^^ constant.numeric.integer.decimal.d
//     ^^ storage.type.numeric.d
dec = 1UL;
//    ^^^ constant.numeric.integer.decimal.d
//     ^^ storage.type.numeric.d
auto bin = 0b1;
//         ^^ punctuation.definition.numeric.base.d
//         ^^^ constant.numeric.integer.binary.d
bin = 0b10__1;
//    ^^ punctuation.definition.numeric.base.d
//    ^^^^^^^ constant.numeric.integer.binary.d
bin = 0B1;
//    ^^ punctuation.definition.numeric.base.d
//    ^^^ constant.numeric.integer.binary.d
auto hex = 0xFf;
//         ^^ punctuation.definition.numeric.base.d
//         ^^^^ constant.numeric.integer.hexadecimal.d
hex = 0x012_3;
//    ^^ punctuation.definition.numeric.base.d
//    ^^^^^^^ constant.numeric.integer.hexadecimal.d
hex = 0X1;
//    ^^ punctuation.definition.numeric.base.d
//    ^^^ constant.numeric.integer.hexadecimal.d

imag = 123_45i + 0_.1_i + 12_.e1i;
//     ^^^^^^^ constant.numeric.imaginary.decimal.d
//           ^ storage.type.numeric.d
//             ^ keyword.operator.arithmetic.d
//               ^^^^^^ constant.numeric.imaginary.decimal.d
//                 ^ punctuation.separator.decimal.d
//                    ^ storage.type.numeric.d
//                        ^^^^^^^ constant.numeric.imaginary.decimal.d
//                           ^ punctuation.separator.decimal.d
//                              ^ storage.type.numeric.d
imag = 23134723__742e1i;
//     ^^^^^^^^^^^^^^^^ constant.numeric.imaginary.decimal.d
//                    ^ storage.type.numeric.d
imag = 0x_3472389742f_i;
//     ^^^^^^^^^^^^^^^^ constant.numeric.imaginary.hexadecimal.d
//     ^^ punctuation.definition.numeric.base.d
//       ^ invalid.illegal.numeric.d
//                    ^ storage.type.numeric.d
imag = 0x_34723897p-34i;
//     ^^^^^^^^^^^^^^^^ constant.numeric.imaginary.hexadecimal.d
//     ^^ punctuation.definition.numeric.base.d
//       ^ invalid.illegal.numeric.d
//                    ^ storage.type.numeric.d
imag = 0x347._23897p-34i;
//     ^^^^^ constant.numeric.integer.hexadecimal.d
//     ^^ punctuation.definition.numeric.base.d
//          ^ punctuation.accessor.dot.d
//           ^^^^^^^ variable.other.d
//                  ^ keyword.operator.arithmetic.d
//                   ^^^ constant.numeric.imaginary.decimal.d
imag = 0b_0100_010_00_i;
//     ^^^^^^^^^^^^^^^^ constant.numeric.imaginary.binary.d
//     ^^ punctuation.definition.numeric.base.d
//       ^ invalid.illegal.numeric.d
//                    ^ storage.type.numeric.d

auto f = 0_.0_;
//       ^^^^^ constant.numeric.float.decimal.d
//         ^ punctuation.separator.decimal.d
f = 0_.;
//  ^^^ constant.numeric.float.decimal.d
//    ^ punctuation.separator.decimal.d
f = .123_1243;
//  ^ punctuation.separator.decimal.d
//  ^^^^^^^^^ constant.numeric.float.decimal.d
f = ._123_1243 + 1._123;
//  ^ punctuation.accessor.dot.d
//   ^^^^^^^^^ variable.other.d
//             ^ keyword.operator.arithmetic.d
//               ^ constant.numeric.integer.decimal.d
//                ^ punctuation.accessor.dot.d
//                 ^^^^ variable.other.d
f = 3423.2e-45;
//  ^^^^^^^^^^ constant.numeric.float.decimal.d
//      ^ punctuation.separator.decimal.d
f = 2.e-45;
//  ^^^^^^ constant.numeric.float.decimal.d
//   ^ punctuation.separator.decimal.d
f = .4E+4L;
//  ^ punctuation.separator.decimal.d
//  ^^^^^^ constant.numeric.float.decimal.d
//       ^ storage.type.numeric.d
f =  1f;
//   ^^ constant.numeric.float.decimal.d
//    ^ storage.type.numeric.d
f = 0x123p2f;
//  ^^ punctuation.definition.numeric.base.d
//  ^^^^^^^^ constant.numeric.float.hexadecimal.d
//         ^ storage.type.numeric.d
f = 0b10101101f;
//  ^^ punctuation.definition.numeric.base.d
//  ^^^^^^^^^^^ constant.numeric.float.binary.d
//            ^ storage.type.numeric.d
f = 0x.1aFp2;
//  ^^ punctuation.definition.numeric.base.d
//  ^^^^^^^^ constant.numeric.float.hexadecimal.d
//    ^ punctuation.separator.decimal.d
f = 0xF.AP-2f;
//  ^^ punctuation.definition.numeric.base.d
//  ^^^^^^^^^ constant.numeric.float.hexadecimal.d
//     ^ punctuation.separator.decimal.d
//          ^ storage.type.numeric.d

  @foo:
//^ punctuation.definition.annotation.begin.d
// ^^^ meta.path.d storage.type.d
//    ^ punctuation.separator.d
  @("oo")@safer@Foo(2, 4)@property
//^ punctuation.definition.annotation.begin.d
// ^ punctuation.section.parens.begin.d
//  ^^^^ string.quoted.double.d
//      ^ punctuation.section.parens.end.d
//       ^ punctuation.definition.annotation.begin.d
//        ^^^^^ meta.path.d storage.type.d
//             ^ punctuation.definition.annotation.begin.d
//              ^^^^^^^^^ meta.function-call.d
//              ^^^ meta.path.d storage.type.d
//                 ^ punctuation.section.parens.begin.d
//                  ^ constant.numeric.integer.decimal.d
//                     ^ constant.numeric.integer.decimal.d
//                      ^ punctuation.section.parens.end.d
//                       ^^^^^^^^^ storage.modifier.d
  static shared const immutable final __gshared nothrow pure ref
//^^^^^^ storage.modifier.d
//       ^^^^^^ storage.modifier.d
//              ^^^^^ storage.modifier.d
//                    ^^^^^^^^^ storage.modifier.d
//                              ^^^^^ storage.modifier.d
//                                    ^^^^^^^^^ storage.modifier.d
//                                              ^^^^^^^ storage.modifier.d
//                                                      ^^^^ storage.modifier.d
//                                                           ^^^ storage.modifier.d
  extern(C) extern (C++, foo.a)
//^^^^^^ keyword.other.external.d
//      ^ punctuation.section.parens.begin.d
//       ^ string.other.d
//        ^ punctuation.section.parens.end.d
//          ^^^^^^ keyword.other.external.d
//                 ^ punctuation.section.parens.begin.d
//                  ^^^ string.other.d
//                     ^ punctuation.separator.sequence.d
//                       ^^^ variable.other.d
//                          ^ punctuation.accessor.dot.d
//                           ^ variable.other.d
//                            ^ punctuation.section.parens.end.d
extern(1)
//     ^ invalid.illegal.d
  align align(1) align(foo * 2)
//^^^^^ keyword.other.alignment.d
//      ^^^^^ keyword.other.alignment.d
//           ^ punctuation.section.parens.begin.d
//            ^ constant.numeric.integer.decimal.d
//             ^ punctuation.section.parens.end.d
//               ^^^^^ keyword.other.alignment.d
//                    ^ punctuation.section.parens.begin.d
//                     ^^^ variable.other.d
//                         ^ keyword.operator.arithmetic.d
//                           ^ constant.numeric.integer.decimal.d
//                            ^ punctuation.section.parens.end.d
  deprecated
//^^^^^^^^^^ keyword.other.deprecated.d
  deprecated( "message") deprecated(q{void})
//^^^^^^^^^^ keyword.other.deprecated.d
//          ^ punctuation.section.parens.begin.d
//            ^^^^^^^^^ string.quoted.double.d
//                     ^ punctuation.section.parens.end.d
//                       ^^^^^^^^^^ keyword.other.deprecated.d
//                                 ^ punctuation.section.parens.begin.d
//                                    ^^^^ source.d storage.type.d
//                                         ^ punctuation.section.parens.end.d
  private protected public export package
//^^^^^^^ storage.modifier.access-control.d
//        ^^^^^^^^^ storage.modifier.access-control.d
//                  ^^^^^^ storage.modifier.access-control.d
//                         ^^^^^^ storage.modifier.access-control.d
//                                ^^^^^^^ storage.modifier.access-control.d
  package(foo.bar.2)
//^^^^^^^ storage.modifier.access-control.d
//       ^ punctuation.section.parens.begin.d
//        ^^^^^^^^ meta.path.d
//        ^^^ variable.other.d
//           ^ punctuation.accessor.dot.d
//            ^^^ variable.other.d
//               ^ punctuation.accessor.dot.d
//                ^ invalid.illegal.d
//                 ^ punctuation.section.parens.end.d
  pragma(f) pragma(test, void):
//^^^^^^ keyword.other.pragma.d
//      ^ punctuation.section.parens.begin.d
//       ^ variable.function.d
//        ^ punctuation.section.parens.end.d
//          ^^^^^^ keyword.other.pragma.d
//                ^ punctuation.section.parens.begin.d
//                 ^^^^ variable.function.d
//                       ^^^^ storage.type.d
//                           ^ punctuation.section.parens.end.d
  private:
//^^^^^^^ storage.modifier.access-control.d
//       ^ punctuation.separator.d

  import foo;
//^^^^^^ keyword.control.import.d
//       ^^^ meta.path.d variable.other.d
//          ^ punctuation.terminator.d
  import std.foo; import core.thread;
//^^^^^^ keyword.control.import.d
//       ^^^^^^^ meta.path.d
//       ^^^ variable.other.d
//          ^ punctuation.accessor.dot.d
//           ^^^ variable.other.d
//              ^ punctuation.terminator.d
//                ^^^^^^ keyword.control.import.d
//                       ^^^^^^^^^^^ meta.path.d
//                       ^^^^ variable.other.d
//                           ^ punctuation.accessor.dot.d
//                            ^^^^^^ variable.other.d
//                                  ^ punctuation.terminator.d
  import foo';
//          ^ invalid.illegal.d
  import foo, a = bar, std : foo, bar, c = d;
//^^^^^^ keyword.control.import.d
//       ^^^ meta.path.d variable.other.d
//          ^ punctuation.separator.sequence.d
//            ^ meta.path.d variable.other.d
//              ^ keyword.operator.assignment.d
//                ^^^ meta.path.d variable.other.d
//                   ^ punctuation.separator.sequence.d
//                     ^^^ meta.path.d variable.other.d
//                         ^ punctuation.separator.import-binding.d
//                           ^^^ meta.path.d variable.other.d
//                              ^ punctuation.separator.sequence.d
//                                ^^^ meta.path.d variable.other.d
//                                   ^ punctuation.separator.sequence.d
//                                     ^ meta.path.d variable.other.d
//                                       ^ keyword.operator.assignment.d
//                                         ^ meta.path.d variable.other.d
//                                          ^ punctuation.terminator.d
  string foo = import("foo.txt");
//^^^^^^ storage.type.d
//       ^^^ variable.other.d
//           ^ keyword.operator.assignment.d
//             ^^^^^^ keyword.control.import.d
//                   ^ punctuation.section.parens.begin.d
//                    ^^^^^^^^^ string.quoted.double.d
//                             ^ punctuation.section.parens.end.d
//                              ^ punctuation.terminator.d
  import("foo").each!writeln;
//^^^^^^ keyword.control.import.d
//      ^ punctuation.section.parens.begin.d
//       ^^^^^ string.quoted.double.d
//            ^ punctuation.section.parens.end.d
//             ^ punctuation.accessor.dot.d
//              ^^^^^^^^^^^^ meta.function-call.d
//              ^^^^ meta.path.d variable.function.d
//                  ^ punctuation.section.generic.begin.d
//                   ^^^^^^^ meta.path.d variable.other.d
//                          ^ punctuation.terminator.d

  alias foo = int;
//^^^^^ keyword.control.alias.d
//      ^^^ entity.name.type.d
//          ^ keyword.operator.assignment.d
//            ^^^ storage.type.d
//               ^ punctuation.terminator.d
  alias Foo = const int[string], bar = long!int;
//^^^^^ keyword.control.alias.d
//      ^^^ entity.name.type.d
//          ^ keyword.operator.assignment.d
//            ^^^^^ storage.modifier.d
//                  ^^^ storage.type.d
//                     ^ punctuation.section.brackets.begin.d
//                      ^^^^^^ storage.type.d
//                            ^ punctuation.section.brackets.end.d
//                             ^ punctuation.separator.sequence.d
//                               ^^^ entity.name.type.d
//                                   ^ keyword.operator.assignment.d
//                                     ^^^^ storage.type.d
//                                         ^ punctuation.section.generic.begin.d
//                                          ^^^ storage.type.d
//                                             ^ punctuation.terminator.d
  alias int a;
//^^^^^ keyword.control.alias.d
//      ^^^ storage.type.d
//          ^ entity.name.type.d
//           ^ punctuation.terminator.d
  alias const foo[string] long_name, foo, b;
//^^^^^ keyword.control.alias.d
//      ^^^^^ storage.modifier.d
//            ^^^ storage.type.d
//               ^ punctuation.section.brackets.begin.d
//                ^^^^^^ storage.type.d
//                      ^ punctuation.section.brackets.end.d
//                        ^^^^^^^^^ entity.name.type.d
//                                 ^ punctuation.separator.sequence.d
//                                   ^^^ entity.name.type.d
//                                      ^ punctuation.separator.sequence.d
//                                        ^ entity.name.type.d
//                                         ^ punctuation.terminator.d
  alias foo this;
//^^^^^ keyword.control.alias.d
//      ^^^ meta.path.d variable.other.d
//          ^^^^ keyword.control.alias.d
//              ^ punctuation.terminator.d
  alias foo.bar.baz this;
//^^^^^ keyword.control.alias.d
//      ^^^^^^^^^^^ meta.path.d
//      ^^^ variable.other.d
//         ^ punctuation.accessor.dot.d
//          ^^^ variable.other.d
//             ^ punctuation.accessor.dot.d
//              ^^^ variable.other.d
//                  ^^^^ keyword.control.alias.d
//                      ^ punctuation.terminator.d
  alias F(x) = foo*;
//^^^^^ keyword.control.alias.d
//      ^ entity.name.type.d
//       ^ punctuation.section.group.begin.d
//        ^ variable.parameter.d
//         ^ punctuation.section.group.end.d
//           ^ keyword.operator.assignment.d
//             ^^^ meta.path.d variable.other.d
//                ^ keyword.operator.pointer.d
//                 ^ punctuation.terminator.d
  alias rSave = a => a;
//^^^^^ keyword.control.alias.d
//      ^^^^^ entity.name.type.d
//            ^ keyword.operator.assignment.d
//              ^^^^^^ meta.function.d
//              ^ variable.parameter.d
//                ^^ storage.type.function.d keyword.declaration.function.lambda.d
//                   ^ meta.path.d variable.other.d
//                    ^ punctuation.terminator.d

  int a;
//^^^ storage.type.d
//    ^ variable.other.d
//     ^ punctuation.terminator.d
  foo[string] b = 123;
//^^^ variable.other.d
//   ^ punctuation.section.brackets.begin.d
//    ^^^^^^ storage.type.d
//          ^ punctuation.section.brackets.end.d
//            ^ variable.other.d
//              ^ keyword.operator.assignment.d
//                ^^^ constant.numeric.integer.decimal.d
//                   ^ punctuation.terminator.d
  bar* some_long_Name;
//^^^ variable.other.d
//   ^ keyword.operator.pointer.d
//     ^^^^^^^^^^^^^^ variable.other.d
//                   ^ punctuation.terminator.d
  auto foo = 3;
//^^^^ storage.modifier.d
//     ^^^ variable.other.d
//         ^ keyword.operator.assignment.d
//           ^ constant.numeric.integer.decimal.d
//            ^ punctuation.terminator.d
  auto
//^^^^ storage.modifier.d
  asjfaisdjaksdjaklsjdnaskjjks = 3;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.other.d
//                             ^ keyword.operator.assignment.d
//                               ^ constant.numeric.integer.decimal.d
//                                ^ punctuation.terminator.d
  char[] buffer_, encoded_;
//^^^^ storage.type.d
//    ^ punctuation.section.brackets.begin.d
//     ^ punctuation.section.brackets.end.d
//       ^^^^^^^ variable.other.d
//              ^ punctuation.separator.sequence.d
//                ^^^^^^^^ variable.other.d
//                        ^ punctuation.terminator.d

  class Foo;
//^^^^^^^^^ meta.class.d
//^^^^^ storage.type.class.d keyword.declaration.class.d
//      ^^^ entity.name.class.d
//         ^ punctuation.terminator.d

  class Bar : Foo, b {
//^^^^^^^^^^^^^^^^^^^^^ meta.class.d
//^^^^^ storage.type.class.d keyword.declaration.class.d
//      ^^^ entity.name.class.d
//          ^ punctuation.separator.mapping.d
//            ^^^ storage.type.d
//               ^ punctuation.separator.sequence.d
//                 ^ storage.type.d
//                   ^ punctuation.section.block.begin.d
    class b {}
  //^^^^^^^^^^ meta.class.d meta.block.d meta.class.d
  //^^^^^ storage.type.class.d keyword.declaration.class.d
  //      ^ entity.name.class.d
  //        ^ punctuation.section.block.begin.d
  //         ^ punctuation.section.block.end.d
  }
//^ meta.class.d punctuation.section.block.end.d
  class b(T, int s) {
//^^^^^^^^^^^^^^^^^^^^ meta.class.d
//^^^^^ storage.type.class.d keyword.declaration.class.d
//      ^ entity.name.class.d
//       ^ punctuation.section.group.begin.d
//        ^ variable.parameter.d
//         ^ punctuation.separator.sequence.d
//           ^^^ storage.type.d
//               ^ variable.parameter.d
//                ^ punctuation.section.group.end.d
//                  ^ punctuation.section.block.begin.d
  }
//^ meta.class.d punctuation.section.block.end.d

  interface S;
//^^^^^^^^^^^^ meta.interface.d
//^^^^^^^^^ storage.type.interface.d keyword.declaration.interface.d
//          ^ entity.name.interface.d
//           ^ punctuation.terminator.d
  interface Foo: Bar, Baz {
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.d
//^^^^^^^^^ storage.type.interface.d keyword.declaration.interface.d
//          ^^^ entity.name.interface.d
//             ^ punctuation.separator.mapping.d
//               ^^^ storage.type.d
//                  ^ punctuation.separator.sequence.d
//                    ^^^ storage.type.d
//                        ^ punctuation.section.block.begin.d
    interface c{}
  //^^^^^^^^^^^^^ meta.interface.d meta.block.d meta.interface.d
  //^^^^^^^^^ storage.type.interface.d keyword.declaration.interface.d
  //          ^ entity.name.interface.d
  //           ^ punctuation.section.block.begin.d
  //            ^ punctuation.section.block.end.d
  }
//^ meta.interface.d meta.block.d punctuation.section.block.end.d
  interface A(T, float f) {
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.d
//^^^^^^^^^ storage.type.interface.d keyword.declaration.interface.d
//          ^ entity.name.interface.d
//           ^ punctuation.section.group.begin.d
//            ^ variable.parameter.d
//             ^ punctuation.separator.sequence.d
//               ^^^^^ storage.type.d
//                     ^ variable.parameter.d
//                      ^ punctuation.section.group.end.d
//                        ^ punctuation.section.block.begin.d
  }
//^ meta.interface.d meta.block.d punctuation.section.block.end.d

  struct Foo {
//^^^^^^^^^^^^^ meta.struct.d
//^^^^^^ storage.type.struct.d keyword.declaration.struct.d
//       ^^^ entity.name.struct.d
//           ^ punctuation.section.block.begin.d
    struct {
  //^^^^^^^^^ meta.struct.d meta.block.d meta.struct.d
  //^^^^^^ storage.type.struct.d keyword.declaration.struct.d
  //       ^ punctuation.section.block.begin.d
      union {}
    //^^^^^^^^ meta.struct.d meta.block.d meta.struct.d meta.block.d meta.union.d
    //^^^^^ storage.type.union.d keyword.declaration.union.d
    //      ^ punctuation.section.block.begin.d
    //       ^ punctuation.section.block.end.d
    }
  //^ meta.struct.d meta.block.d meta.struct.d meta.block.d punctuation.section.block.end.d
  }
//^ meta.struct.d meta.block.d punctuation.section.block.end.d
  struct F(int a, T) {
//^^^^^^^^^^^^^^^^^^^^^ meta.struct.d
//^^^^^^ storage.type.struct.d keyword.declaration.struct.d
//       ^ entity.name.struct.d
//        ^ punctuation.section.group.begin.d
//         ^^^ storage.type.d
//             ^ variable.parameter.d
//              ^ punctuation.separator.sequence.d
//                ^ variable.parameter.d
//                 ^ punctuation.section.group.end.d
//                   ^ punctuation.section.block.begin.d
  }
//^ meta.struct.d meta.block.d punctuation.section.block.end.d

  union Foo {}
//^^^^^^^^^^^^ meta.union.d
//^^^^^ storage.type.union.d keyword.declaration.union.d
//      ^^^ entity.name.union.d
//          ^ punctuation.section.block.begin.d
//           ^ punctuation.section.block.end.d
  union Test(string s, F) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.union.d
//^^^^^ storage.type.union.d keyword.declaration.union.d
//      ^^^^ entity.name.union.d
//          ^ punctuation.section.group.begin.d
//           ^^^^^^ storage.type.d
//                  ^ variable.parameter.d
//                   ^ punctuation.separator.sequence.d
//                     ^ variable.parameter.d
//                      ^ punctuation.section.group.end.d
//                        ^ punctuation.section.block.begin.d
//                         ^ punctuation.section.block.end.d

  enum Foo {
//^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^^^ entity.name.enum.d
//         ^ punctuation.section.block.begin.d
    foo,
  //^^^^^ meta.enum.d
  //^^^ entity.name.constant.d
  //   ^ punctuation.separator.sequence.d
    bar = 2,
  //^^^^^^^^^ meta.enum.d
  //^^^ entity.name.constant.d
  //    ^ keyword.operator.assignment.d
  //      ^ constant.numeric.integer.decimal.d
  //       ^ punctuation.separator.sequence.d
    1
  //^ meta.enum.d invalid.illegal.d
  }
//^ meta.enum.d punctuation.section.block.end.d
  enum Foo : int { a = 12 }
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^^^ entity.name.enum.d
//         ^ punctuation.separator.mapping.d
//           ^^^ storage.type.d
//               ^ punctuation.section.block.begin.d
//                 ^ entity.name.constant.d
//                   ^ keyword.operator.assignment.d
//                     ^^ constant.numeric.integer.decimal.d
//                        ^ punctuation.section.block.end.d
  enum : foo[string] { TEST }
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^ punctuation.separator.mapping.d
//       ^^^ storage.type.d
//          ^ punctuation.section.brackets.begin.d
//           ^^^^^^ storage.type.d
//                 ^ punctuation.section.brackets.end.d
//                   ^ punctuation.section.block.begin.d
//                     ^^^^ entity.name.constant.d
//                          ^ punctuation.section.block.end.d
  enum { int a = 12,
//^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^ punctuation.section.block.begin.d
//       ^^^ storage.type.d
//           ^ entity.name.constant.d
//             ^ keyword.operator.assignment.d
//               ^^ constant.numeric.integer.decimal.d
//                 ^ punctuation.separator.sequence.d
    Foo // f
//  ^^^^^^^^^ meta.enum.d
//  ^^^ entity.name.constant.d
//      ^^^^^ comment.line.double-slash.d
    2
  //^ meta.enum.d invalid.illegal.d
  }
//^ meta.enum.d punctuation.section.block.end.d
  enum f = 12;
//^^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^ entity.name.enum.d
//       ^ keyword.operator.assignment.d
//         ^^ constant.numeric.integer.decimal.d
//           ^ punctuation.terminator.d
  enum f(x, int t) = cast(x)t;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^ entity.name.enum.d
//      ^ punctuation.section.group.begin.d
//       ^ variable.parameter.d
//        ^ punctuation.separator.sequence.d
//          ^^^ storage.type.d
//              ^ variable.parameter.d
//               ^ punctuation.section.group.end.d
//                 ^ keyword.operator.assignment.d
//                   ^^^^ keyword.operator.word.d
//                       ^ punctuation.section.parens.begin.d
//                        ^ storage.type.d
//                         ^ punctuation.section.parens.end.d
//                          ^ variable.other.d
//                           ^ punctuation.terminator.d
  enum bool[] foo = 12;
//^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^^^^ storage.type.d
//         ^ punctuation.section.brackets.begin.d
//          ^ punctuation.section.brackets.end.d
//            ^^^ entity.name.enum.d
//                ^ keyword.operator.assignment.d
//                  ^^ constant.numeric.integer.decimal.d
//                    ^ punctuation.terminator.d
  enum fool
//^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^^^^ entity.name.enum.d
  {
//^ meta.enum.d punctuation.section.block.begin.d
  }
//^ meta.enum.d punctuation.section.block.end.d
  enum uint a = 1, b = 2, exponentBits = 3;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^^^^ storage.type.d
//          ^ entity.name.enum.d
//            ^ keyword.operator.assignment.d
//              ^ constant.numeric.integer.decimal.d
//               ^ punctuation.separator.sequence.d
//                 ^ entity.name.enum.d
//                   ^ keyword.operator.assignment.d
//                     ^ constant.numeric.integer.decimal.d
//                      ^ punctuation.separator.sequence.d
//                        ^^^^^^^^^^^^ entity.name.enum.d
//                                     ^ keyword.operator.assignment.d
//                                       ^ constant.numeric.integer.decimal.d
//                                        ^ punctuation.terminator.d
  enum immutable(Char)[] seqBefore = "[";
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^^^^^^^^^ storage.modifier.d
//              ^ punctuation.section.group.begin.d
//               ^^^^ storage.type.d
//                   ^ punctuation.section.group.end.d
//                    ^ punctuation.section.brackets.begin.d
//                     ^ punctuation.section.brackets.end.d
//                       ^^^^^^^^^ entity.name.enum.d
//                                 ^ keyword.operator.assignment.d
//                                   ^^^ string.quoted.double.d
//                                      ^ punctuation.terminator.d
  enum foo : int;
//^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^^^ entity.name.enum.d
//         ^ punctuation.separator.mapping.d
//           ^^^ meta.path.d storage.type.d
//              ^ punctuation.terminator.d
  enum ulong
//^^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^^^^^ storage.type.d
    a = 1 << 2,
  //^^^^^^^^^^^^ meta.enum.d
  //^ entity.name.enum.d
  //  ^ keyword.operator.assignment.d
  //    ^ constant.numeric.integer.decimal.d
  //      ^^ keyword.operator.bitwise.d
  //         ^ constant.numeric.integer.decimal.d
  //          ^ punctuation.separator.sequence.d
    b = 1 << 3;
  //^^^^^^^^^^^ meta.enum.d
  //^ entity.name.enum.d
  //  ^ keyword.operator.assignment.d
  //    ^ constant.numeric.integer.decimal.d
  //      ^^ keyword.operator.bitwise.d
  //         ^ constant.numeric.integer.decimal.d
  //          ^ punctuation.terminator.d
  enum foo
//^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d
//     ^^^ entity.name.enum.d
    bar = 2;
  //^^^^^^^^ meta.enum.d
  //^^^ entity.name.enum.d
  //    ^ keyword.operator.assignment.d
  //      ^ constant.numeric.integer.decimal.d
  //       ^ punctuation.terminator.d
  enum Attr;
//^^^^^^^^^^ meta.enum.d
//^^^^ storage.type.enum.d keyword.declaration.enum.d

  version(unittest) {}
//^^^^^^^ keyword.control.conditional.d
//       ^ punctuation.section.parens.begin.d
//        ^^^^^^^^ keyword.control.conditional.d
//                ^ punctuation.section.parens.end.d
//                  ^ punctuation.section.block.begin.d
//                   ^ punctuation.section.block.end.d
  version(assert) {}
//^^^^^^^ keyword.control.conditional.d
//       ^ punctuation.section.parens.begin.d
//        ^^^^^^ keyword.other.assert.d
//              ^ punctuation.section.parens.end.d
//                ^ punctuation.section.block.begin.d
//                 ^ punctuation.section.block.end.d
  version(foo) {}
//^^^^^^^ keyword.control.conditional.d
//       ^ punctuation.section.parens.begin.d
//        ^^^ constant.other.d
//           ^ punctuation.section.parens.end.d
//             ^ punctuation.section.block.begin.d
//              ^ punctuation.section.block.end.d
  version(1):
//^^^^^^^ keyword.control.conditional.d
//       ^ punctuation.section.parens.begin.d
//        ^ constant.numeric.integer.decimal.d
//         ^ punctuation.section.parens.end.d
//          ^ punctuation.separator.d

  debug:
//^^^^^ keyword.control.conditional.d
//     ^ punctuation.separator.d
  debug {} else {}
//^^^^^ keyword.control.conditional.d
//      ^ punctuation.section.block.begin.d
//       ^ punctuation.section.block.end.d
//         ^^^^ keyword.control.conditional.d
//              ^ punctuation.section.block.begin.d
//               ^ punctuation.section.block.end.d
  debug(foo) {} else:
//^^^^^ keyword.control.conditional.d
//     ^ punctuation.section.parens.begin.d
//      ^^^ constant.other.d
//         ^ punctuation.section.parens.end.d
//           ^ punctuation.section.block.begin.d
//            ^ punctuation.section.block.end.d
//              ^^^^ keyword.control.conditional.d
//                  ^ punctuation.separator.d
  debug foo bar;
//^^^^^ keyword.control.conditional.d
//      ^^^ storage.type.d
//          ^^^ variable.other.d
//             ^ punctuation.terminator.d

  debug = 2;
//^^^^^ keyword.control.conditional.d
//      ^ keyword.operator.assignment.d
//        ^ constant.numeric.integer.decimal.d
//         ^ punctuation.terminator.d
  version = foo;
//^^^^^^^ keyword.control.conditional.d
//        ^ keyword.operator.assignment.d
//          ^^^ entity.name.constant.d
//             ^ punctuation.terminator.d
  version
//^^^^^^^ keyword.control.conditional.d
   = 5;
// ^ keyword.operator.assignment.d
//   ^ constant.numeric.integer.decimal.d
//    ^ punctuation.terminator.d
  int foo = true;
  static if (12 + 5):
//^^^^^^ storage.modifier.d
//       ^^ keyword.control.conditional.d
//          ^ punctuation.section.parens.begin.d
//           ^^ constant.numeric.integer.decimal.d
//              ^ keyword.operator.arithmetic.d
//                ^ constant.numeric.integer.decimal.d
//                 ^ punctuation.section.parens.end.d
//                  ^ punctuation.separator.d
  static if (true) {} else {}
//^^^^^^ storage.modifier.d
//       ^^ keyword.control.conditional.d
//          ^ punctuation.section.parens.begin.d
//               ^ punctuation.section.parens.end.d
//                 ^ punctuation.section.block.begin.d
//                  ^ punctuation.section.block.end.d
//                    ^^^^ keyword.control.conditional.d
//                         ^ punctuation.section.block.begin.d
//                          ^ punctuation.section.block.end.d
  static if (0) {
//^^^^^^ storage.modifier.d
//       ^^ keyword.control.conditional.d
//          ^ punctuation.section.parens.begin.d
//           ^ constant.numeric.integer.decimal.d
//            ^ punctuation.section.parens.end.d
//              ^ punctuation.section.block.begin.d
  } else static if (1) {
//^ punctuation.section.block.end.d
//  ^^^^ keyword.control.conditional.d
//       ^^^^^^ storage.modifier.d
//              ^^ keyword.control.conditional.d
//                 ^ punctuation.section.parens.begin.d
//                  ^ constant.numeric.integer.decimal.d
//                   ^ punctuation.section.parens.end.d
//                     ^ punctuation.section.block.begin.d
  }
//^ punctuation.section.block.end.d

  static foreach (int foo, f; 12..3) {
//^^^^^^ keyword.control.loop.d
//       ^^^^^^^ keyword.control.loop.d
//               ^ punctuation.section.parens.begin.d
    static foreach (int a; 123) {
  //^^^^^^ keyword.control.loop.d
  //       ^^^^^^^ keyword.control.loop.d
  //               ^ punctuation.section.parens.begin.d
  //                ^^^ storage.type.d
  //                    ^ variable.parameter.d
  //                     ^ punctuation.separator.sequence.d
  //                       ^^^ constant.numeric.integer.decimal.d
  //                          ^ punctuation.section.parens.end.d
  //                            ^ punctuation.section.block.begin.d
  //                             ^
    }
  //^ punctuation.section.block.end.d
  }
//^ punctuation.section.block.end.d

  static assert(12);
//^^^^^^ keyword.other.assert.d
//       ^^^^^^ keyword.other.assert.d
//             ^ punctuation.section.parens.begin.d
//              ^^ constant.numeric.integer.decimal.d
//                ^ punctuation.section.parens.end.d
//                 ^ punctuation.terminator.d
  static assert(12, "foobar");
//^^^^^^ keyword.other.assert.d
//       ^^^^^^ keyword.other.assert.d
//             ^ punctuation.section.parens.begin.d
//              ^^ constant.numeric.integer.decimal.d
//                ^ punctuation.separator.sequence.d
//                  ^^^^^^^^ string.quoted.double.d
//                          ^ punctuation.section.parens.end.d
//                           ^ punctuation.terminator.d

  int[string] foo() {}
//^^^ storage.type.d
//   ^ punctuation.section.brackets.begin.d
//    ^^^^^^ storage.type.d
//          ^ punctuation.section.brackets.end.d
//            ^^^ meta.function.d entity.name.function.d
//               ^^ meta.function.parameters.d
//               ^ punctuation.section.group.begin.d
//                ^ punctuation.section.group.end.d
//                  ^^ meta.function.d meta.block.d
//                  ^ punctuation.section.block.begin.d
//                   ^ punctuation.section.block.end.d
    void bar();
  //^^^^ storage.type.d
  //     ^^^ meta.function.d entity.name.function.d
  //        ^^ meta.function.parameters.d
  //        ^ punctuation.section.group.begin.d
  //         ^ punctuation.section.group.end.d
  //          ^ meta.function.d punctuation.terminator.d
    int[] map(int[] array, ) {
  //^^^ storage.type.d
  //   ^ punctuation.section.brackets.begin.d
  //    ^ punctuation.section.brackets.end.d
  //      ^^^ meta.function.d entity.name.function.d
  //         ^^^^^^^^^^^^^^^ meta.function.parameters.d
  //         ^ punctuation.section.group.begin.d
  //          ^^^ storage.type.d
  //             ^ punctuation.section.brackets.begin.d
  //              ^ punctuation.section.brackets.end.d
  //                ^^^^^ variable.parameter.d
  //                     ^ punctuation.separator.sequence.d
  //                       ^
  //                         ^ meta.function.d meta.block.d punctuation.section.block.begin.d
      foo();
    //^^^^^^^ meta.function.d meta.block.d
    //^^^ variable.function.d
    }
  //^ meta.function.d meta.block.d punctuation.section.block.end.d
    T[] map(T, void fn)(T[] array) {
  //^ variable.other.d
  // ^ punctuation.section.brackets.begin.d
  //  ^ punctuation.section.brackets.end.d
  //    ^^^ meta.function.d entity.name.function.d
  //       ^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
  //       ^ punctuation.section.group.begin.d
  //        ^ variable.parameter.d
  //         ^ punctuation.separator.sequence.d
  //           ^^^^ storage.type.d
  //                ^^ variable.parameter.d
  //                  ^ punctuation.section.group.end.d
  //                   ^ punctuation.section.group.begin.d
  //                    ^ storage.type.d
  //                     ^ punctuation.section.brackets.begin.d
  //                      ^ punctuation.section.brackets.end.d
  //                        ^^^^^ variable.parameter.d
  //                             ^ punctuation.section.group.end.d
  //                               ^ meta.function.d meta.block.d punctuation.section.block.begin.d
    }
  //^ meta.function.d meta.block.d punctuation.section.block.end.d
  VeryLongTypeNameThatWillForceALineWrapWith80WidthLines
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.other.d
  veryLongFunctionNameToHelpWithTheLineWrappingThing
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.d entity.name.function.d
  (
//^ meta.function.parameters.d punctuation.section.group.begin.d
    int aVeryLongArgumentName,
  //^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
  //^^^ storage.type.d
  //    ^^^^^^^^^^^^^^^^^^^^^ variable.parameter.d
  //                         ^ punctuation.separator.sequence.d
  )
//^ meta.function.parameters.d punctuation.section.group.end.d
  {
//^ meta.function.d meta.block.d punctuation.section.block.begin.d
    int a;
  //^^^^^^^ meta.function.d meta.block.d
  //^^^ storage.type.d
  //    ^ variable.other.d
  //     ^ punctuation.terminator.d
  }
//^ meta.function.d meta.block.d punctuation.section.block.end.d
  void foo(T)(ref T[] a) {}
//^^^^ storage.type.d
//     ^^^ meta.function.d entity.name.function.d
//        ^^^^^^^^^^^^^^ meta.function.parameters.d
//        ^ punctuation.section.group.begin.d
//         ^ variable.parameter.d
//          ^ punctuation.section.group.end.d
//           ^ punctuation.section.group.begin.d
//            ^^^ storage.modifier.d
//                ^ storage.type.d
//                 ^ punctuation.section.brackets.begin.d
//                  ^ punctuation.section.brackets.end.d
//                    ^ variable.parameter.d
//                     ^ punctuation.section.group.end.d
//                       ^^ meta.function.d meta.block.d
//                       ^ punctuation.section.block.begin.d
//                        ^ punctuation.section.block.end.d
  void f(T..., string[] B...)(ref T[] a...) {}
//^^^^ storage.type.d
//     ^ meta.function.d entity.name.function.d
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//      ^ punctuation.section.group.begin.d
//       ^ variable.parameter.d
//        ^^^ keyword.operator.variadic.d
//           ^ punctuation.separator.sequence.d
//             ^^^^^^ storage.type.d
//                   ^ punctuation.section.brackets.begin.d
//                    ^ punctuation.section.brackets.end.d
//                      ^ variable.parameter.d
//                       ^^^ keyword.operator.variadic.d
//                          ^ punctuation.section.group.end.d
//                           ^ punctuation.section.group.begin.d
//                            ^^^ storage.modifier.d
//                                ^ storage.type.d
//                                 ^ punctuation.section.brackets.begin.d
//                                  ^ punctuation.section.brackets.end.d
//                                    ^ variable.parameter.d
//                                     ^^^ keyword.operator.variadic.d
//                                        ^ punctuation.section.group.end.d
//                                          ^^ meta.function.d meta.block.d
//                                          ^ punctuation.section.block.begin.d
//                                           ^ punctuation.section.block.end.d
  void f(T = int)(T[] a = [1, 2, 3]) {}
//^^^^ storage.type.d
//     ^ meta.function.d entity.name.function.d
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//      ^ punctuation.section.group.begin.d
//       ^ variable.parameter.d
//         ^ keyword.operator.assignment.d
//           ^^^ storage.type.d
//              ^ punctuation.section.group.end.d
//               ^ punctuation.section.group.begin.d
//                ^ storage.type.d
//                 ^ punctuation.section.brackets.begin.d
//                  ^ punctuation.section.brackets.end.d
//                    ^ variable.parameter.d
//                      ^ keyword.operator.assignment.d
//                        ^ punctuation.section.brackets.begin.d
//                         ^ constant.numeric.integer.decimal.d
//                          ^ punctuation.separator.sequence.d
//                            ^ constant.numeric.integer.decimal.d
//                             ^ punctuation.separator.sequence.d
//                               ^ constant.numeric.integer.decimal.d
//                                ^ punctuation.section.brackets.end.d
//                                 ^ punctuation.section.group.end.d
//                                   ^^ meta.function.d meta.block.d
//                                   ^ punctuation.section.block.begin.d
//                                    ^ punctuation.section.block.end.d
  void foo(in int a, out int f) {}
//^^^^ storage.type.d
//     ^^^ meta.function.d entity.name.function.d
//        ^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//        ^ punctuation.section.group.begin.d
//         ^^ storage.modifier.d
//            ^^^ storage.type.d
//                ^ variable.parameter.d
//                 ^ punctuation.separator.sequence.d
//                   ^^^ storage.modifier.d
//                       ^^^ storage.type.d
//                           ^ variable.parameter.d
//                            ^ punctuation.section.group.end.d
//                              ^^ meta.function.d meta.block.d
//                              ^ punctuation.section.block.begin.d
//                               ^ punctuation.section.block.end.d
  void opEquals(int a) {}
//^^^^ storage.type.d
//     ^^^^^^^^ meta.function.d entity.name.function.operator.d
//             ^^^^^^^ meta.function.parameters.d
//             ^ punctuation.section.group.begin.d
//              ^^^ storage.type.d
//                  ^ variable.parameter.d
//                   ^ punctuation.section.group.end.d
//                     ^^ meta.function.d meta.block.d
//                     ^ punctuation.section.block.begin.d
//                      ^ punctuation.section.block.end.d
  caster foo() {}
//^^^^^^ storage.type.d
//       ^^^ meta.function.d entity.name.function.d
//          ^^ meta.function.parameters.d
//          ^ punctuation.section.group.begin.d
//           ^ punctuation.section.group.end.d
//             ^^ meta.function.d meta.block.d
//             ^ punctuation.section.block.begin.d
//              ^ punctuation.section.block.end.d
  auto foo() {}
//^^^^ storage.modifier.d
//     ^^^ meta.function.d entity.name.function.d
//        ^^ meta.function.parameters.d
//        ^ punctuation.section.group.begin.d
//         ^ punctuation.section.group.end.d
//           ^^ meta.function.d meta.block.d
//           ^ punctuation.section.block.begin.d
//            ^ punctuation.section.block.end.d
  static foo() {}
//^^^^^^ storage.modifier.d
//       ^^^ meta.function.d entity.name.function.d
//          ^^ meta.function.parameters.d
//          ^ punctuation.section.group.begin.d
//           ^ punctuation.section.group.end.d
//             ^^ meta.function.d meta.block.d
//             ^ punctuation.section.block.begin.d
//              ^ punctuation.section.block.end.d
  @property foo() {}
//^^^^^^^^^ storage.modifier.d
//          ^^^ meta.function.d entity.name.function.d
//             ^^ meta.function.parameters.d
//             ^ punctuation.section.group.begin.d
//              ^ punctuation.section.group.end.d
//                ^^ meta.function.d meta.block.d
//                ^ punctuation.section.block.begin.d
//                 ^ punctuation.section.block.end.d
  pure foo() {}
//^^^^ storage.modifier.d
//     ^^^ meta.function.d entity.name.function.d
//        ^^ meta.function.parameters.d
//        ^ punctuation.section.group.begin.d
//         ^ punctuation.section.group.end.d
//           ^^ meta.function.d meta.block.d
//           ^ punctuation.section.block.begin.d
//            ^ punctuation.section.block.end.d
  const(string) foo(T)(ref const(int) a, auto ref T b) {}
//^^^^^ storage.modifier.d
//     ^ punctuation.section.group.begin.d
//      ^^^^^^ storage.type.d
//            ^ punctuation.section.group.end.d
//              ^^^ meta.function.d entity.name.function.d
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//                 ^ punctuation.section.group.begin.d
//                  ^ variable.parameter.d
//                   ^ punctuation.section.group.end.d
//                    ^ punctuation.section.group.begin.d
//                     ^^^ storage.modifier.d
//                         ^^^^^ storage.modifier.d
//                              ^ punctuation.section.group.begin.d
//                               ^^^ storage.type.d
//                                  ^ punctuation.section.group.end.d
//                                    ^ variable.parameter.d
//                                     ^ punctuation.separator.sequence.d
//                                       ^^^^ storage.modifier.d
//                                            ^^^ storage.modifier.d
//                                                ^ storage.type.d
//                                                  ^ variable.parameter.d
//                                                   ^ punctuation.section.group.end.d
//                                                     ^^ meta.function.d meta.block.d
//                                                     ^ punctuation.section.block.begin.d
//                                                      ^ punctuation.section.block.end.d
  void foo(A : int, string a : "s") {}
//^^^^ storage.type.d
//     ^^^ meta.function.d entity.name.function.d
//        ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//        ^ punctuation.section.group.begin.d
//         ^ variable.parameter.d
//           ^ keyword.operator.comparison.d
//             ^^^ storage.type.d
//                ^ punctuation.separator.sequence.d
//                  ^^^^^^ storage.type.d
//                         ^ variable.parameter.d
//                           ^ keyword.operator.comparison.d
//                             ^^^ string.quoted.double.d
//                                ^ punctuation.section.group.end.d
//                                  ^^ meta.function.d meta.block.d
//                                  ^ punctuation.section.block.begin.d
//                                   ^ punctuation.section.block.end.d
  void foo() const inout @property {}
//^^^^ storage.type.d
//     ^^^ meta.function.d entity.name.function.d
//        ^^ meta.function.parameters.d
//        ^ punctuation.section.group.begin.d
//         ^ punctuation.section.group.end.d
//           ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.d
//           ^^^^^ storage.modifier.d
//                 ^^^^^ storage.modifier.d
//                       ^^^^^^^^^ storage.modifier.d
//                                 ^ punctuation.section.block.begin.d
//                                  ^ punctuation.section.block.end.d
  void f()
//^^^^ storage.type.d
//     ^ meta.function.d entity.name.function.d
//      ^^ meta.function.parameters.d
//      ^ punctuation.section.group.begin.d
//       ^ punctuation.section.group.end.d
  in(true)
//^^^^^^^^^ meta.function.d
//^^ keyword.control.conditional.d
//  ^ punctuation.section.parens.begin.d
//   ^^^^ constant.language.d
//       ^ punctuation.section.parens.end.d
  in(true || false)
//^^^^^^^^^^^^^^^^^^ meta.function.d
//^^ keyword.control.conditional.d
//  ^ punctuation.section.parens.begin.d
//   ^^^^ constant.language.d
//        ^^ keyword.operator.logical.d
//           ^^^^^ constant.language.d
//                ^ punctuation.section.parens.end.d
  out(; false || true)
//^^^^^^^^^^^^^^^^^^^^^ meta.function.d
//^^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^ punctuation.separator.sequence.d
//      ^^^^^ constant.language.d
//            ^^ keyword.operator.logical.d
//               ^^^^ constant.language.d
//                   ^ punctuation.section.parens.end.d
  {}
//^^ meta.function.d
//^ punctuation.section.block.begin.d
// ^ punctuation.section.block.end.d
  void f(A)() if (is(A : B))
//^^^^ storage.type.d
//     ^ meta.function.d entity.name.function.d
//      ^^^^^ meta.function.parameters.d
//      ^ punctuation.section.group.begin.d
//       ^ variable.parameter.d
//        ^
//         ^ punctuation.section.group.begin.d
//          ^ punctuation.section.group.end.d
//            ^^^^^^^^^^^^^^^ meta.function.d
//            ^^ keyword.control.conditional.d
//               ^ punctuation.section.parens.begin.d
//                ^^ keyword.other.d
//                  ^ punctuation.section.parens.begin.d
//                   ^ storage.type.d
//                     ^ keyword.operator.comparison.d
//                       ^ storage.type.d
//                        ^ punctuation.section.parens.end.d
//                         ^ punctuation.section.parens.end.d
  in {}
//^^^^^^ meta.function.d
//^^ keyword.control.conditional.d
//   ^ punctuation.section.block.begin.d
//    ^ punctuation.section.block.end.d
  out (foo) {
//^^^^^^^^^^^^ meta.function.d
//^^^ keyword.control.conditional.d
//    ^ punctuation.section.parens.begin.d
//     ^^^ variable.parameter.d
//        ^ punctuation.section.parens.end.d
//          ^ punctuation.section.block.begin.d
    assert(true);
  //^^^^^^^^^^^^^^ meta.function.d meta.block.d
  //^^^^^^ keyword.other.assert.d
  //      ^ punctuation.section.parens.begin.d
  //       ^^^^ constant.language.d
  //           ^ punctuation.section.parens.end.d
  //            ^ punctuation.terminator.d
    foo(4);
  //^^^^^^^^ meta.function.d meta.block.d
  //^^^^^^ meta.function-call.d
  //^^^ meta.path.d variable.function.d
  //   ^ punctuation.section.parens.begin.d
  //    ^ constant.numeric.integer.decimal.d
  //     ^ punctuation.section.parens.end.d
  //      ^ punctuation.terminator.d
  }
//^ meta.function.d meta.block.d punctuation.section.block.end.d
  body {
//^^^^ keyword.other.d
//     ^ punctuation.section.block.begin.d
  }
  void f()
//^^^^ storage.type.d
//     ^ meta.function.d entity.name.function.d
//      ^^ meta.function.parameters.d
//      ^ punctuation.section.group.begin.d
//       ^ punctuation.section.group.end.d
  out (foo; foo == true) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.d
//^^^ keyword.control.conditional.d
//    ^ punctuation.section.parens.begin.d
//     ^^^ variable.parameter.d
//        ^ punctuation.separator.sequence.d
//          ^^^ variable.other.d
//              ^^ keyword.operator.comparison.d
//                 ^^^^ constant.language.d
//                     ^ punctuation.section.parens.end.d
//                       ^^ meta.block.d
//                       ^ punctuation.section.block.begin.d
//                        ^ punctuation.section.block.end.d
  void f(...);
//^^^^ storage.type.d
//     ^ entity.name.function.d
//      ^ punctuation.section.group.begin.d
//       ^^^ keyword.operator.variadic.d
//          ^ punctuation.section.group.end.d
//           ^ punctuation.terminator.d

  this(int foo) {
//^^^^ meta.function.d entity.name.function.constructor.d
//    ^^^^^^^^^ meta.function.parameters.d
//    ^ punctuation.section.group.begin.d
//     ^^^ storage.type.d
//         ^^^ variable.parameter.d
//            ^ punctuation.section.group.end.d
//              ^ meta.function.d meta.block.d punctuation.section.block.begin.d
  }
//^ meta.function.d meta.block.d punctuation.section.block.end.d
  ~this() @disable;
//^^^^^ meta.function.d entity.name.function.destructor.d
//     ^^ meta.function.parameters.d
//     ^ punctuation.section.group.begin.d
//      ^ punctuation.section.group.end.d
//        ^^^^^^^^^ meta.function.d
//        ^^^^^^^^ storage.modifier.d
//                ^ punctuation.terminator.d
  this(this) {}
//^^^^ meta.function.d entity.name.function.post-blit.d
//    ^^^^^^ meta.function.d meta.function.parameters.d
//    ^ punctuation.section.group.begin.d
//     ^^^^ variable.language.d
//         ^ punctuation.section.group.end.d
//           ^^ meta.function.d meta.block.d
//           ^ punctuation.section.block.begin.d
//            ^ punctuation.section.block.end.d
  this(1, 2, 3);
//^^^^ meta.function.d entity.name.function.constructor.d
//    ^^^^^^^^^ meta.function.parameters.d
//    ^ punctuation.section.group.begin.d
//     ^ constant.numeric.integer.decimal.d
//      ^ punctuation.separator.sequence.d
//        ^ constant.numeric.integer.decimal.d
//         ^ punctuation.separator.sequence.d
//           ^ constant.numeric.integer.decimal.d
//            ^ punctuation.section.group.end.d
//             ^ meta.function.d punctuation.terminator.d
  this(T)(T foo);
//^^^^ meta.function.d entity.name.function.constructor.d
//    ^^^^^^^^^^ meta.function.parameters.d
//    ^ punctuation.section.group.begin.d
//     ^ variable.other.d
//      ^ punctuation.section.group.end.d
//       ^ punctuation.section.group.begin.d
//        ^ storage.type.d
//          ^^^ variable.parameter.d
//             ^ punctuation.section.group.end.d
//              ^ meta.function.d punctuation.terminator.d
  this(in ref foo t) {}
//^^^^ meta.function.d entity.name.function.constructor.d
//    ^^^^^^^^^^^^^^ meta.function.parameters.d meta.function.parameters.d
//    ^ punctuation.section.group.begin.d
//     ^^ storage.modifier.d
//        ^^^ storage.modifier.d
//            ^^^ storage.type.d
//                ^ variable.parameter.d
//                 ^ punctuation.section.group.end.d
//                   ^^ meta.function.d meta.block.d
//                   ^ punctuation.section.block.begin.d
//                    ^ punctuation.section.block.end.d

  static this(int foo) { int b; }
//^^^^^^ storage.modifier.d
//       ^^^^ meta.function.d entity.name.function.constructor.d
//           ^^^^^^^^^ meta.function.parameters.d
//           ^ punctuation.section.group.begin.d
//            ^^^ storage.type.d
//                ^^^ variable.parameter.d
//                   ^ punctuation.section.group.end.d
//                     ^^^^^^^^^^ meta.function.d meta.block.d
//                     ^ punctuation.section.block.begin.d
//                       ^^^ storage.type.d
//                           ^ variable.other.d
//                            ^ punctuation.terminator.d
//                              ^ punctuation.section.block.end.d
  static ~this() { int a; }
//^^^^^^ storage.modifier.d
//       ^^^^^ meta.function.d entity.name.function.destructor.d
//            ^^ meta.function.parameters.d
//            ^ punctuation.section.group.begin.d
//             ^ punctuation.section.group.end.d
//               ^^^^^^^^^^ meta.function.d meta.block.d
//               ^ punctuation.section.block.begin.d
//                 ^^^ storage.type.d
//                     ^ variable.other.d
//                      ^ punctuation.terminator.d
//                        ^ punctuation.section.block.end.d

  invariant(0, "test") {
//^^^^^^^^^ keyword.other.invariant.d
//         ^ punctuation.section.parens.begin.d
//          ^ constant.numeric.integer.decimal.d
//           ^ punctuation.separator.sequence.d
//             ^^^^^^ string.quoted.double.d
//                   ^ punctuation.section.parens.end.d
//                     ^ punctuation.section.block.begin.d
    invariant();
  //^^^^^^^^^ keyword.other.invariant.d
  //         ^ punctuation.section.parens.begin.d
  //          ^ punctuation.section.parens.end.d
    invariant {}
  //^^^^^^^^^ keyword.other.invariant.d
  //          ^ punctuation.section.block.begin.d
  //           ^ punctuation.section.block.end.d
  }
//^ punctuation.section.block.end.d

  unittest {
//^^^^^^^^ keyword.control.conditional.d
//         ^ punctuation.section.block.begin.d
    unittest @safe {
  //^^^^^^^^ keyword.control.conditional.d
  //         ^^^^^ meta.block.d storage.modifier.d
  //               ^ meta.block.d meta.block.d punctuation.section.block.begin.d
    }
  //^ punctuation.section.block.end.d
  }
//^ punctuation.section.block.end.d

  template foo(T, A) {
//^^^^^^^^ storage.type.d keyword.declaration.template.d
//         ^^^ entity.name.template.d
//            ^ punctuation.section.group.begin.d
//             ^ variable.parameter.d
//              ^ punctuation.separator.sequence.d
//                ^ variable.parameter.d
//                 ^ punctuation.section.group.end.d
//                   ^ punctuation.section.block.begin.d
    template a(size_t f) {
  //^^^^^^^^ storage.type.d keyword.declaration.template.d
  //         ^ entity.name.template.d
  //          ^ punctuation.section.group.begin.d
  //           ^^^^^^ storage.type.d
  //                  ^ variable.parameter.d
  //                   ^ punctuation.section.group.end.d
  //                     ^ punctuation.section.block.begin.d
    }
  //^ punctuation.section.block.end.d
  }
//^ punctuation.section.block.end.d
  template foo(T) if (is(T : class)) {}
//^^^^^^^^ storage.type.d keyword.declaration.template.d
//         ^^^ entity.name.template.d
//            ^ punctuation.section.group.begin.d
//             ^ variable.parameter.d
//              ^ punctuation.section.group.end.d
//                ^^ keyword.control.conditional.d
//                   ^ punctuation.section.parens.begin.d
//                    ^^ keyword.other.d
//                      ^ punctuation.section.parens.begin.d
//                       ^ storage.type.d
//                         ^ keyword.operator.comparison.d
//                           ^^^^^ storage.type.d
//                                ^ punctuation.section.parens.end.d
//                                 ^ punctuation.section.parens.end.d
//                                   ^ punctuation.section.block.begin.d
//                                    ^ punctuation.section.block.end.d
  @property foo(T) = {
//^^^^^^^^^ storage.modifier.d
//          ^^^ entity.name.function.d
//             ^ punctuation.section.group.begin.d
//              ^ variable.parameter.d
//               ^ punctuation.section.group.end.d
//                 ^ keyword.operator.assignment.d
//                   ^ punctuation.section.block.begin.d
    T a;
  //^ storage.type.d
  //  ^ variable.other.d
  //   ^ punctuation.terminator.d
  }();
//^ punctuation.section.block.end.d
// ^ punctuation.section.parens.begin.d
//  ^ punctuation.section.parens.end.d
//   ^ punctuation.terminator.d

  mixin template f(int a) {
//^^^^^ keyword.control.d
//      ^^^^^^^^ storage.type.d keyword.declaration.template.d
//               ^ entity.name.template.d
//                ^ punctuation.section.group.begin.d
//                 ^^^ storage.type.d
//                     ^ variable.parameter.d
//                      ^ punctuation.section.group.end.d
//                        ^ punctuation.section.block.begin.d
  }
//^ punctuation.section.block.end.d
  mixin Foo!("foo");
//^^^^^ keyword.control.d
//      ^^^^^^^^^^^ meta.function-call.d
//      ^^^ variable.function.d
//         ^ punctuation.section.generic.begin.d
//          ^ punctuation.section.parens.begin.d
//           ^^^^^ string.quoted.double.d
//                ^ punctuation.section.parens.end.d
//                 ^ punctuation.terminator.d
  mixin Template e;
//^^^^^ keyword.control.d
//      ^^^^^^^^ variable.other.d
//               ^ variable.other.d
//                ^ punctuation.terminator.d
  mixin("foo");
//^^^^^ keyword.control.d
//     ^ punctuation.section.parens.begin.d
//      ^ punctuation.definition.string.begin.d
//      ^^^^^ string.quoted.double.d
//          ^ punctuation.definition.string.end.d
//           ^ punctuation.section.parens.end.d
//            ^ punctuation.terminator.d

  foo:
//^^^ entity.name.label.d
//   ^ punctuation.separator.d

  if (2) {
//^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^ constant.numeric.integer.decimal.d
//     ^ punctuation.section.parens.end.d
//       ^ punctuation.section.block.begin.d
  }
//^ punctuation.section.block.end.d
  if (1) {} else {}
//^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^ constant.numeric.integer.decimal.d
//     ^ punctuation.section.parens.end.d
//       ^ punctuation.section.block.begin.d
//        ^ punctuation.section.block.end.d
//          ^^^^ keyword.control.conditional.d
//               ^ punctuation.section.block.begin.d
//                ^ punctuation.section.block.end.d
  if (1) 1;
  if (1) {} else 1;
//^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^ constant.numeric.integer.decimal.d
//     ^ punctuation.section.parens.end.d
//       ^ punctuation.section.block.begin.d
//        ^ punctuation.section.block.end.d
//          ^^^^ keyword.control.conditional.d
//               ^ constant.numeric.integer.decimal.d

  while (2) 1;
//^^^^^ keyword.control.loop.d
//      ^ punctuation.section.parens.begin.d
//       ^ constant.numeric.integer.decimal.d
//        ^ punctuation.section.parens.end.d
//          ^ constant.numeric.integer.decimal.d
  while (2)
//^^^^^ keyword.control.loop.d
//      ^ punctuation.section.parens.begin.d
//       ^ constant.numeric.integer.decimal.d
//        ^ punctuation.section.parens.end.d
  {
//^ punctuation.section.block.begin.d
    do 2;
  //^^ keyword.control.loop.d
  //   ^ constant.numeric.integer.decimal.d
    while (3);
  //^^^^^ keyword.control.loop.d
  //      ^ punctuation.section.parens.begin.d
  //       ^ constant.numeric.integer.decimal.d
  //        ^ punctuation.section.parens.end.d
    do
  //^^ keyword.control.loop.d
    {
  //^ punctuation.section.block.begin.d
    } while (1);
  //^ punctuation.section.block.end.d
  //  ^^^^^ keyword.control.loop.d
  //        ^ punctuation.section.parens.begin.d
  //         ^ constant.numeric.integer.decimal.d
  //          ^ punctuation.section.parens.end.d
  }
//^ punctuation.section.block.end.d
  for (1; 2; 3) {
//^^^ keyword.control.loop.d
//    ^ punctuation.section.parens.begin.d
//     ^ constant.numeric.integer.decimal.d
//      ^ punctuation.terminator.d
//        ^ constant.numeric.integer.decimal.d
//         ^ punctuation.terminator.d
//           ^ constant.numeric.integer.decimal.d
//            ^ punctuation.section.parens.end.d
//              ^ punctuation.section.block.begin.d
  }
//^ punctuation.section.block.end.d
  for(int a;;12) {
//^^^ keyword.control.loop.d
//   ^ punctuation.section.parens.begin.d
//    ^^^ storage.type.d
//        ^ variable.other.d
//         ^^ punctuation.terminator.d
//           ^^ constant.numeric.integer.decimal.d
//             ^ punctuation.section.parens.end.d
//               ^ punctuation.section.block.begin.d
  }
  for (size_t i; !val.empty; val.popFront(), ++i) {}
//^^^ keyword.control.loop.d
//    ^ punctuation.section.parens.begin.d
//     ^^^^^^ storage.type.d
//            ^ variable.other.d
//             ^ punctuation.terminator.d
//               ^ keyword.operator.logical.d
//                ^^^ variable.other.d
//                   ^ punctuation.accessor.dot.d
//                    ^^^^^ variable.other.d
//                         ^ punctuation.terminator.d
//                           ^^^ variable.other.d
//                              ^ punctuation.accessor.dot.d
//                               ^^^^^^^^^^ meta.function-call.d
//                               ^^^^^^^^ variable.function.d
//                                       ^ punctuation.section.parens.begin.d
//                                        ^ punctuation.section.parens.end.d
//                                         ^ punctuation.separator.sequence.d
//                                           ^^ keyword.operator.arithmetic.d
//                                             ^ variable.other.d
//                                              ^ punctuation.section.parens.end.d
//                                                ^ punctuation.section.block.begin.d
//                                                 ^ punctuation.section.block.end.d
  for (; a *b < cast(int)2;) {}
//^^^ keyword.control.loop.d
//    ^ punctuation.section.parens.begin.d
//     ^ punctuation.terminator.d
//       ^ variable.other.d
//         ^ keyword.operator.arithmetic.d
//          ^ variable.other.d
//            ^ keyword.operator.comparison.d
//              ^^^^ keyword.operator.word.d
//                  ^ punctuation.section.parens.begin.d
//                   ^^^ storage.type.d
//                      ^ punctuation.section.parens.end.d
//                       ^ constant.numeric.integer.decimal.d
//                        ^ punctuation.terminator.d
//                         ^ punctuation.section.parens.end.d
//                           ^ punctuation.section.block.begin.d
//                            ^ punctuation.section.block.end.d
  foreach (int a; 2..5) {
//^^^^^^^ keyword.control.loop.d
//        ^ punctuation.section.parens.begin.d
//         ^^^ storage.type.d
//             ^ variable.parameter.d
//              ^ punctuation.separator.sequence.d
//                ^ constant.numeric.integer.decimal.d
//                 ^^ keyword.operator.slice.d
//                   ^ constant.numeric.integer.decimal.d
//                    ^ punctuation.section.parens.end.d
//                      ^ punctuation.section.block.begin.d
    foreach_reverse (int a; 2) {
  //^^^^^^^^^^^^^^^ keyword.control.loop.d
  //                ^ punctuation.section.parens.begin.d
  //                 ^^^ storage.type.d
  //                     ^ variable.parameter.d
  //                      ^ punctuation.separator.sequence.d
  //                        ^ constant.numeric.integer.decimal.d
  //                         ^ punctuation.section.parens.end.d
  //                           ^ punctuation.section.block.begin.d
    }
  //^ punctuation.section.block.end.d
  }
//^ punctuation.section.block.end.d
  foreach (ref a; foo) {}
//^^^^^^^ keyword.control.loop.d
//        ^ punctuation.section.parens.begin.d
//         ^^^ storage.modifier.d
//             ^ variable.parameter.d
//              ^ punctuation.separator.sequence.d
//                ^^^ variable.other.d
//                   ^ punctuation.section.parens.end.d
//                     ^ punctuation.section.block.begin.d
//                      ^ punctuation.section.block.end.d

  continue;
//^^^^^^^^ keyword.control.flow.d
//        ^ punctuation.terminator.d
  continue foo;
//^^^^^^^^ keyword.control.flow.d
//         ^^^ variable.other.constant.d
//            ^ punctuation.terminator.d
  break;
//^^^^^ keyword.control.flow.d
//     ^ punctuation.terminator.d
  break foo;
//^^^^^ keyword.control.flow.d
//      ^^^ variable.other.constant.d
//         ^ punctuation.terminator.d
  return;
//^^^^^^ keyword.control.flow.d
//      ^ punctuation.terminator.d
  return 2;
//^^^^^^ keyword.control.flow.d
//       ^ constant.numeric.integer.decimal.d
//        ^ punctuation.terminator.d
  goto foo;
//^^^^ keyword.control.flow.d
//     ^^^ variable.other.constant.d
//        ^ punctuation.terminator.d
  goto default;
//^^^^ keyword.control.flow.d
//     ^^^^^^^ keyword.control.flow.d
//            ^ punctuation.terminator.d
  goto case;
//^^^^ keyword.control.flow.d
//     ^^^^ keyword.control.flow.d
//         ^ punctuation.terminator.d
  goto case 2;
//^^^^ keyword.control.flow.d
//     ^^^^ keyword.control.flow.d
//          ^ constant.numeric.integer.decimal.d
//           ^ punctuation.terminator.d

  with (2) {}
//^^^^ keyword.other.with.d
//     ^ punctuation.section.parens.begin.d
//      ^ constant.numeric.integer.decimal.d
//       ^ punctuation.section.parens.end.d
//         ^ punctuation.section.block.begin.d
//          ^ punctuation.section.block.end.d
  with (2) 3;
//^^^^ keyword.other.with.d
//     ^ punctuation.section.parens.begin.d
//      ^ constant.numeric.integer.decimal.d
//       ^ punctuation.section.parens.end.d
//         ^ constant.numeric.integer.decimal.d

  synchronized (3) {}
//^^^^^^^^^^^^ keyword.other.synchronized.d
//             ^ punctuation.section.parens.begin.d
//              ^ constant.numeric.integer.decimal.d
//               ^ punctuation.section.parens.end.d
//                 ^ punctuation.section.block.begin.d
//                  ^ punctuation.section.block.end.d
  synchronized(3);
//^^^^^^^^^^^^ keyword.other.synchronized.d
//            ^ punctuation.section.parens.begin.d
//             ^ constant.numeric.integer.decimal.d
//              ^ punctuation.section.parens.end.d

  try {
//^^^ keyword.control.exception.d
//    ^ punctuation.section.block.begin.d
  } catch (int a) {
//^ punctuation.section.block.end.d
//  ^^^^^ keyword.control.exception.d
//        ^ punctuation.section.parens.begin.d
//         ^^^ storage.type.d
//             ^ variable.parameter.d
//              ^ punctuation.section.parens.end.d
//                ^ punctuation.section.block.begin.d
  } catch (Throwable; foo a) {
//^ punctuation.section.block.end.d
//  ^^^^^ keyword.control.exception.d
//        ^ punctuation.section.parens.begin.d
//         ^^^^^^^^^ storage.type.d
//                  ^ invalid.illegal.d
//                    ^^^ meta.path.d storage.type.d
//                         ^ invalid.illegal.d
//                           ^ punctuation.section.block.begin.d
  }
//^ punctuation.section.block.end.d
  finally {
//^^^^^^^ keyword.control.exception.d
//        ^ punctuation.section.block.begin.d
  }
//^ punctuation.section.block.end.d
  throw 3;
//^^^^^ keyword.control.flow.exception.d
//      ^ constant.numeric.integer.decimal.d

  scope (exit) {}
//^^^^^ keyword.control.flow.d
//      ^ punctuation.section.parens.begin.d
//       ^^^^ keyword.control.flow.d
//           ^ punctuation.section.parens.end.d
//             ^ punctuation.section.block.begin.d
//              ^ punctuation.section.block.end.d
  scope(failure) {}
//^^^^^ keyword.control.flow.d
//     ^ punctuation.section.parens.begin.d
//      ^^^^^^^ keyword.control.flow.d
//             ^ punctuation.section.parens.end.d
//               ^ punctuation.section.block.begin.d
//                ^ punctuation.section.block.end.d
  scope(success) 2;
//^^^^^ keyword.control.flow.d
//     ^ punctuation.section.parens.begin.d
//      ^^^^^^^ keyword.control.flow.d
//             ^ punctuation.section.parens.end.d
//               ^ constant.numeric.integer.decimal.d

  asm {
//^^^ keyword.declaration.asm.d
//    ^ punctuation.section.block.begin.d
    foo; // foo
//     ^ punctuation.terminator.d
//       ^^^^^^ comment.line.double-slash.d
    foo bar;
//         ^ punctuation.terminator.d
  }
//^ punctuation.section.block.end.d
  asm nothrow @safe {}
//^^^ keyword.declaration.asm.d
//    ^^^^^^^ storage.modifier.d
//            ^^^^^ storage.modifier.d
//                  ^ punctuation.section.block.begin.d
//                   ^ punctuation.section.block.end.d

  f a = new (12, "foo") string[12]("foo", "bar")[14];
//^ storage.type.d
//  ^ variable.other.d
//    ^ keyword.operator.assignment.d
//      ^^^ keyword.operator.word.d
//          ^ punctuation.section.parens.begin.d
//           ^^ constant.numeric.integer.decimal.d
//             ^ punctuation.separator.sequence.d
//               ^^^^^ string.quoted.double.d
//                    ^ punctuation.section.parens.end.d
//                      ^^^^^^ storage.type.d
//                            ^ punctuation.section.brackets.begin.d
//                             ^^ constant.numeric.integer.decimal.d
//                               ^ punctuation.section.brackets.end.d
//                                ^ punctuation.section.parens.begin.d
//                                 ^^^^^ string.quoted.double.d
//                                      ^ punctuation.separator.sequence.d
//                                        ^^^^^ string.quoted.double.d
//                                             ^ punctuation.section.parens.end.d
//                                              ^ punctuation.section.brackets.begin.d
//                                               ^^ constant.numeric.integer.decimal.d
//                                                 ^ punctuation.section.brackets.end.d
//                                                  ^ punctuation.terminator.d
  i = new Foo();
//^ variable.other.d
//  ^ keyword.operator.assignment.d
//    ^^^ keyword.operator.word.d
//        ^^^^^ meta.function-call.d
//        ^^^ variable.function.d
//           ^ punctuation.section.parens.begin.d
//            ^ punctuation.section.parens.end.d
//             ^ punctuation.terminator.d
  new(1, 2, 3) string[12];
//^^^ keyword.operator.word.d
//   ^ punctuation.section.parens.begin.d
//    ^ constant.numeric.integer.decimal.d
//     ^ punctuation.separator.sequence.d
//       ^ constant.numeric.integer.decimal.d
//        ^ punctuation.separator.sequence.d
//          ^ constant.numeric.integer.decimal.d
//           ^ punctuation.section.parens.end.d
//             ^^^^^^ storage.type.d
//                   ^ punctuation.section.brackets.begin.d
//                    ^^ constant.numeric.integer.decimal.d
//                      ^ punctuation.section.brackets.end.d
//                       ^ punctuation.terminator.d
  auto c = new class (12) T, Bar {
//^^^^ storage.modifier.d
//     ^ variable.other.d
//       ^ keyword.operator.assignment.d
//         ^^^ keyword.operator.word.d
//             ^^^^^^^^^^^^^^^^^^^^ meta.class.d
//             ^^^^^ storage.type.class.d keyword.declaration.class.d
//                   ^ punctuation.section.parens.begin.d
//                    ^^ constant.numeric.integer.decimal.d
//                      ^ punctuation.section.parens.end.d
//                        ^ storage.type.d
//                         ^ punctuation.separator.sequence.d
//                           ^^^ storage.type.d
//                               ^ meta.block.d punctuation.section.block.begin.d
    private int foo;
  //^^^^^^^^^^^^^^^^^ meta.class.d meta.block.d
  //^^^^^^^ storage.modifier.access-control.d
  //        ^^^ storage.type.d
  //            ^^^ variable.other.d
  //               ^ punctuation.terminator.d

    this(int num) {
  //^^^^^^^^^^^^^^^^ meta.class.d meta.block.d
  //^^^^ entity.name.function.constructor.d
  //    ^ punctuation.section.group.begin.d
  //     ^^^ storage.type.d
  //         ^^^ variable.parameter.d
  //            ^ punctuation.section.group.end.d
  //              ^ punctuation.section.block.begin.d
      this.foo = num;
    //^^^^^^^^^^^^^^^^ meta.class.d meta.block.d meta.function.d meta.block.d
    //^^^^ variable.language.d
    //    ^^^^ meta.path.d
    //    ^ punctuation.accessor.dot.d
    //     ^^^ variable.other.d
    //         ^ keyword.operator.assignment.d
    //           ^^^ variable.other.d
    //              ^ punctuation.terminator.d
    }
  //^ meta.class.d meta.block.d meta.function.d meta.block.d punctuation.section.block.end.d

    override int foo() {
  //^^^^^^^^^^^^^^^^^^^^^ meta.class.d meta.block.d
  //^^^^^^^^ storage.modifier.d
  //         ^^^ storage.type.d
  //             ^^^ meta.function.d entity.name.function.d
  //                ^^ meta.block.d meta.function.parameters.d
  //                ^ punctuation.section.group.begin.d
  //                 ^ punctuation.section.group.end.d
  //                   ^ meta.function.d meta.block.d punctuation.section.block.begin.d
      return num * 3;
    //^^^^^^^^^^^^^^^^ meta.class.d meta.block.d meta.function.d meta.block.d
    //^^^^^^ keyword.control.flow.d
    //       ^^^ meta.path.d variable.other.d
    //           ^ keyword.operator.arithmetic.d
    //             ^ constant.numeric.integer.decimal.d
    //              ^ punctuation.terminator.d
    }
  //^ meta.class.d meta.block.d meta.function.d meta.block.d punctuation.section.block.end.d
  };
//^ meta.class.d meta.block.d punctuation.section.block.end.d
// ^ punctuation.terminator.d

  mixin("a") = (12 ^^ 4) % 5 / (3++ + --4) ~ "foo";
//^^^^^ keyword.control.d
//     ^ punctuation.section.parens.begin.d
//      ^^^ string.quoted.double.d
//         ^ punctuation.section.parens.end.d
//           ^ keyword.operator.assignment.d
//             ^ punctuation.section.group.begin.d
//              ^^ constant.numeric.integer.decimal.d
//                 ^^ keyword.operator.arithmetic.d
//                    ^ constant.numeric.integer.decimal.d
//                     ^ punctuation.section.group.end.d
//                       ^ keyword.operator.arithmetic.d
//                         ^ constant.numeric.integer.decimal.d
//                           ^ keyword.operator.arithmetic.d
//                             ^ punctuation.section.group.begin.d
//                              ^ constant.numeric.integer.decimal.d
//                               ^^ keyword.operator.arithmetic.d
//                                  ^ keyword.operator.arithmetic.d
//                                    ^^ keyword.operator.arithmetic.d
//                                      ^ constant.numeric.integer.decimal.d
//                                       ^ punctuation.section.group.end.d
//                                         ^ keyword.operator.concatenation.d
//                                           ^^^^^ string.quoted.double.d
//                                                ^ punctuation.terminator.d

  auto f = foo ? 12 : 15;
//^^^^ storage.modifier.d
//     ^ variable.other.d
//       ^ keyword.operator.assignment.d
//         ^^^ meta.path.d variable.other.d
//             ^ keyword.operator.ternary.d
//               ^^ constant.numeric.integer.decimal.d
//                  ^ keyword.operator.ternary.d
//                    ^^ constant.numeric.integer.decimal.d
//                      ^ punctuation.terminator.d

  foreach (ref a; foo) {}
//^^^^^^^ keyword.control.loop.d
//        ^ punctuation.section.parens.begin.d
//         ^^^ storage.modifier.d
//             ^ variable.parameter.d
//              ^ punctuation.separator.sequence.d
//                ^^^ meta.path.d variable.other.d
//                   ^ punctuation.section.parens.end.d
//                     ^ punctuation.section.block.begin.d
//                      ^ punctuation.section.block.end.d

  int a = 2, b = 3;
//^^^ storage.type.d
//    ^ variable.other.d
//      ^ keyword.operator.assignment.d
//        ^ constant.numeric.integer.decimal.d
//         ^ punctuation.separator.sequence.d
//           ^ variable.other.d
//             ^ keyword.operator.assignment.d
//               ^ constant.numeric.integer.decimal.d
//                ^ punctuation.terminator.d

  a = "foo", b = "bar";
//^ meta.path.d variable.other.d
//  ^ keyword.operator.assignment.d
//    ^^^^^ string.quoted.double.d
//         ^ punctuation.separator.sequence.d
//           ^ meta.path.d variable.other.d
//             ^ keyword.operator.assignment.d
//               ^^^^^ string.quoted.double.d
//                    ^ punctuation.terminator.d

  string[] f = [
//^^^^^^ storage.type.d
//      ^ punctuation.section.brackets.begin.d
//       ^ punctuation.section.brackets.end.d
//         ^ variable.other.d
//           ^ keyword.operator.assignment.d
//             ^ punctuation.section.brackets.begin.d
    1: 2,
  //^ constant.numeric.integer.decimal.d
  // ^ punctuation.separator.mapping.key-value.d
  //   ^ constant.numeric.integer.decimal.d
  //    ^ punctuation.separator.sequence.d
    "foo",
  //^^^^^ string.quoted.double.d
  //     ^ punctuation.separator.sequence.d
    "bar",
  //^^^^^ string.quoted.double.d
  //     ^ punctuation.separator.sequence.d
  ];
//^ punctuation.section.brackets.end.d

  switch (2 * 3)
//^^^^^^ keyword.control.flow.d
//       ^ punctuation.section.parens.begin.d
//        ^ constant.numeric.integer.decimal.d
//          ^ keyword.operator.arithmetic.d
//            ^ constant.numeric.integer.decimal.d
//             ^ punctuation.section.parens.end.d
  {
//^ punctuation.section.block.begin.d
    case 2 ^^ 2:
  //^^^^ keyword.control.flow.d
  //     ^ constant.numeric.integer.decimal.d
  //       ^^ keyword.operator.arithmetic.d
  //          ^ constant.numeric.integer.decimal.d
  //           ^ punctuation.separator.case-statement.d
    case 2, "foo":
  //^^^^ keyword.control.flow.d
  //     ^ constant.numeric.integer.decimal.d
  //      ^ punctuation.separator.sequence.d
  //        ^ meta.string.d string.quoted.double.d punctuation.definition.string.begin.d
  //         ^^^^ meta.string.d string.quoted.double.d
  //             ^ punctuation.separator.case-statement.d
  //^^^^^^^^^^^^^^ meta.block.d
    case 2: .. case 4:
  //^^^^ keyword.control.flow.d
  //     ^ constant.numeric.integer.decimal.d
  //      ^ punctuation.separator.case-statement.d
  //        ^^ keyword.operator.d
  //           ^^^^ keyword.control.flow.d
  //                ^ constant.numeric.integer.decimal.d
  //                 ^ punctuation.separator.case-statement.d
    default:
  //^^^^^^^ keyword.control.flow.d
  //       ^ punctuation.separator.case-statement.d
  }
//^ punctuation.section.block.end.d

  is(int T == class, T, int foo);
//^^ keyword.other.d
//  ^ punctuation.section.parens.begin.d
//   ^^^ storage.type.d
//       ^ variable.parameter.d
//         ^^ keyword.operator.comparison.d
//            ^^^^^ storage.type.d
//                 ^ punctuation.separator.sequence.d
//                   ^ variable.parameter.d
//                    ^ punctuation.separator.sequence.d
//                      ^^^ storage.type.d
//                          ^^^ variable.parameter.d
//                             ^ punctuation.section.group.end.d
//                              ^ punctuation.terminator.d
  is(int : foo);
//^^ keyword.other.d
//  ^ punctuation.section.parens.begin.d
//   ^^^ storage.type.d
//       ^ keyword.operator.comparison.d
//         ^^^ storage.type.d
//            ^ punctuation.section.parens.end.d
//             ^ punctuation.terminator.d
  is(T);
//^^ keyword.other.d
//  ^ punctuation.section.parens.begin.d
//   ^ meta.path.d storage.type.d
//    ^ punctuation.section.parens.end.d
  is(T : immutable);
//^^ keyword.other.d
//  ^ punctuation.section.parens.begin.d
//   ^ meta.path.d storage.type.d
//     ^ keyword.operator.comparison.d
//       ^^^^^^^^^ storage.modifier.d
//                ^ punctuation.section.parens.end.d
//                 ^ punctuation.terminator.d
  is(immutable Range == immutable T[]);
//^^ keyword.other.d
//  ^ punctuation.section.parens.begin.d
//   ^^^^^^^^^ storage.modifier.d
//             ^^^^^ meta.path.d storage.type.d
//                   ^^ keyword.operator.comparison.d
//                      ^^^^^^^^^ storage.modifier.d
//                                ^ meta.path.d storage.type.d
//                                 ^ punctuation.section.brackets.begin.d
//                                  ^ punctuation.section.brackets.end.d
//                                   ^ punctuation.section.parens.end.d
//                                    ^ punctuation.terminator.d
  is(foo : super);
//^^ keyword.other.d
//  ^ punctuation.section.parens.begin.d
//   ^^^ meta.path.d storage.type.d
//       ^ keyword.operator.comparison.d
//         ^^^^^ variable.language.d
//              ^ punctuation.section.parens.end.d
//               ^ punctuation.terminator.d
  is(foo : return);
//^^ keyword.other.d
//  ^ punctuation.section.parens.begin.d
//   ^^^ meta.path.d storage.type.d
//       ^ keyword.operator.comparison.d
//         ^^^^^^ keyword.control.flow.d
//               ^ punctuation.section.parens.end.d
//                ^ punctuation.terminator.d
  is(foo : class);
//^^ keyword.other.d
//  ^ punctuation.section.parens.begin.d
//   ^^^ meta.path.d storage.type.d
//       ^ keyword.operator.comparison.d
//         ^^^^^ storage.type.d keyword.declaration.d
//              ^ punctuation.section.parens.end.d
//               ^ punctuation.terminator.d

  typeof(2) a(typeof('f') b);
//^^^^^^ keyword.other.d
//      ^ punctuation.section.parens.begin.d
//       ^ constant.numeric.integer.decimal.d
//        ^ punctuation.section.parens.end.d
//          ^ meta.function.d entity.name.function.d
//           ^^^^^^^^^^^^^^^ meta.function.parameters.d
//           ^ punctuation.section.group.begin.d
//            ^^^^^^ keyword.other.d
//                  ^ punctuation.section.parens.begin.d
//                   ^^^ string.quoted.single.d
//                      ^ punctuation.section.parens.end.d
//                        ^ variable.parameter.d
//                         ^ punctuation.section.group.end.d
//                          ^ meta.function.d punctuation.terminator.d
  typeof(return);
//^^^^^^ keyword.other.d
//      ^ punctuation.section.parens.begin.d
//       ^^^^^^ keyword.other.d
//             ^ punctuation.section.parens.end.d
//              ^ punctuation.terminator.d

  () @trusted => 2;
//^^ meta.function.parameters.d
//^ punctuation.section.parens.begin.d
// ^ punctuation.section.parens.end.d
//   ^^^^^^^^^^^^^ meta.function.d
//   ^^^^^^^^ storage.modifier.d
//            ^^ storage.type.function.d keyword.declaration.function.lambda.d
//               ^ constant.numeric.integer.decimal.d
//                ^ punctuation.terminator.d
  (a => 2);
//^ punctuation.section.group.begin.d
// ^^^^^^ meta.function.d
// ^ variable.parameter.d
//   ^^ storage.type.function.d keyword.declaration.function.lambda.d
//      ^ constant.numeric.integer.decimal.d
//       ^ punctuation.section.group.end.d
//        ^ punctuation.terminator.d
  (foo) @trusted => foo(3);
//^ punctuation.section.group.begin.d
// ^^^ variable.other.d
//    ^ punctuation.section.group.end.d
//      ^^^^^^^^^^^^^^^^^^ meta.function.d
//      ^^^^^^^^ storage.modifier.d
//               ^^ storage.type.function.d keyword.declaration.function.lambda.d
//                  ^^^^^^ meta.function-call.d
//                  ^^^ variable.function.d
//                     ^ punctuation.section.parens.begin.d
//                      ^ constant.numeric.integer.decimal.d
//                       ^ punctuation.section.parens.end.d
//                        ^ punctuation.terminator.d
  (foo..., bar) @safe {};
//^ punctuation.section.group.begin.d
// ^^^ variable.other.d
//    ^^^ keyword.operator.variadic.d
//       ^ punctuation.separator.sequence.d
//         ^^^ variable.parameter.d
//            ^ punctuation.section.group.end.d
//              ^^^^^^^^ meta.function.d
//              ^^^^^ storage.modifier.d
//                    ^^ meta.block.d
//                    ^ punctuation.section.block.begin.d
//                     ^ punctuation.section.block.end.d
//                      ^ punctuation.terminator.d
  (foo) {} ();
//^ punctuation.section.group.begin.d
// ^^^ variable.other.d
//    ^ punctuation.section.group.end.d
//      ^^ meta.function.d meta.block.d
//      ^ punctuation.section.block.begin.d
//       ^ punctuation.section.block.end.d
//         ^ punctuation.section.parens.begin.d
//          ^ punctuation.section.parens.end.d
//           ^ punctuation.terminator.d
  (int foo) pure @safe {};
//^ punctuation.section.group.begin.d
// ^^^ storage.type.d
//     ^^^ variable.parameter.d
//        ^ punctuation.section.group.end.d
//          ^^^^^^^^^^^^^ meta.function.d
//          ^^^^ storage.modifier.d
//               ^^^^^ storage.modifier.d
//                     ^^ meta.block.d
//                     ^ punctuation.section.block.begin.d
//                      ^ punctuation.section.block.end.d
//                       ^ punctuation.terminator.d
  (a, int b, c, int d) {};
//^ punctuation.section.group.begin.d
// ^ variable.other.d
//  ^ punctuation.separator.sequence.d
//    ^^^ storage.type.d
//        ^ variable.parameter.d
//         ^ punctuation.separator.sequence.d
//           ^ variable.parameter.d
//            ^ punctuation.separator.sequence.d
//              ^^^ storage.type.d
//                  ^ variable.parameter.d
//                   ^ punctuation.section.group.end.d
//                     ^^ meta.function.d meta.block.d
//                     ^ punctuation.section.block.begin.d
//                      ^ punctuation.section.block.end.d
//                       ^ punctuation.terminator.d

  void delegate(int a ..., foo) foo;
//^^^^ storage.type.d
//     ^^^^^^^^ keyword.other.d
//             ^ punctuation.section.group.begin.d
//              ^^^ storage.type.d
//                  ^ variable.parameter.d
//                    ^^^ keyword.operator.variadic.d
//                       ^ punctuation.separator.sequence.d
//                         ^^^ storage.type.d
//                            ^ punctuation.section.group.end.d
//                              ^^^ variable.other.d
//                                 ^ punctuation.terminator.d
  void delegate()[] foo() {}
//^^^^ storage.type.d
//     ^^^^^^^^ keyword.other.d
//             ^ punctuation.section.group.begin.d
//              ^ punctuation.section.group.end.d
//               ^ punctuation.section.brackets.begin.d
//                ^ punctuation.section.brackets.end.d
//                  ^^^ meta.function.d entity.name.function.d
//                     ^^ meta.function.parameters.d
//                     ^ punctuation.section.group.begin.d
//                      ^ punctuation.section.group.end.d
//                        ^^ meta.function.d meta.block.d
//                        ^ punctuation.section.block.begin.d
//                         ^ punctuation.section.block.end.d
  (void function(int foo)).sizeof;
//^ punctuation.section.group.begin.d
// ^^^^ storage.type.d
//      ^^^^^^^^ keyword.other.d
//              ^ punctuation.section.group.begin.d
//               ^^^ storage.type.d
//                   ^^^ variable.parameter.d
//                      ^^ punctuation.section.group.end.d
//                        ^^^^^^^ meta.path.d
//                        ^ punctuation.accessor.dot.d
//                         ^^^^^^ variable.other.d
//                               ^ punctuation.terminator.d
  void fn(int delegate(ref Foo, scope float function(int a)) f);
//^^^^ storage.type.d
//     ^^ meta.function.d entity.name.function.d
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//       ^ punctuation.section.group.begin.d
//        ^^^ storage.type.d
//            ^^^^^^^^ keyword.other.d
//                    ^ punctuation.section.group.begin.d
//                     ^^^ storage.modifier.d
//                         ^^^ storage.type.d
//                            ^ punctuation.separator.sequence.d
//                              ^^^^^ storage.modifier.d
//                                    ^^^^^ storage.type.d
//                                          ^^^^^^^^ keyword.other.d
//                                                  ^ punctuation.section.group.begin.d
//                                                   ^^^ storage.type.d
//                                                       ^ variable.parameter.d
//                                                        ^^ punctuation.section.group.end.d
//                                                           ^ variable.parameter.d
//                                                            ^ punctuation.section.group.end.d
//                                                             ^ meta.function.d punctuation.terminator.d
  return () @trusted inout {};
//^^^^^^ keyword.control.flow.d
//       ^^ meta.function.parameters.d
//       ^ punctuation.section.parens.begin.d
//        ^ punctuation.section.parens.end.d
//          ^^^^^^^^^^^^^^^^^ meta.function.d
//                         ^^ meta.block.d
  (in ref a) {};
//^ punctuation.section.group.begin.d
// ^^ storage.modifier.d
//    ^^^ storage.modifier.d
//        ^ variable.parameter.d
//         ^ punctuation.section.group.end.d
//           ^^ meta.function.d meta.block.d
//           ^ punctuation.section.block.begin.d
//            ^ punctuation.section.block.end.d
//             ^ punctuation.terminator.d
  void delegate(int) shared dg1;
//^^^^ storage.type.d
//     ^^^^^^^^ keyword.other.d
//             ^ punctuation.section.group.begin.d
//              ^^^ storage.type.d
//                 ^ punctuation.section.group.end.d
//                   ^^^^^^ storage.modifier.d
//                          ^^^ variable.other.d
//                             ^ punctuation.terminator.d
  function(int a, string b) @trusted {};
//^^^^^^^^ meta.function.d keyword.other.d
//        ^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//        ^ punctuation.section.group.begin.d
//         ^^^ storage.type.d
//             ^ variable.parameter.d
//              ^ punctuation.separator.sequence.d
//                ^^^^^^ storage.type.d
//                       ^ variable.parameter.d
//                        ^ punctuation.section.group.end.d
//                          ^^^^^^^^^^^ meta.function.d
//                          ^^^^^^^^ storage.modifier.d
//                                   ^ punctuation.section.block.begin.d
//                                    ^ punctuation.section.block.end.d
//                                     ^ punctuation.terminator.d
  function size_t(foo a) {};
//^^^^^^^^^^^^^^^ meta.function.d
//^^^^^^^^ keyword.other.d
//         ^^^^^^ storage.type.d
//               ^^^^^^^ meta.function.parameters.d
//               ^ punctuation.section.group.begin.d
//                ^^^ storage.type.d
//                    ^ variable.parameter.d
//                     ^ punctuation.section.group.end.d
//                       ^^ meta.function.d meta.block.d
//                       ^ punctuation.section.block.begin.d
//                        ^ punctuation.section.block.end.d
//                         ^ punctuation.terminator.d
  void delegate(...) f;
//^^^^ storage.type.d
//     ^^^^^^^^ keyword.other.d
//             ^ punctuation.section.group.begin.d
//              ^^^ keyword.operator.variadic.d
//                 ^ punctuation.section.group.end.d
//                   ^ variable.other.d
//                    ^ punctuation.terminator.d

  __traits(foo, a);
//^^^^^^^^ keyword.other.d
//        ^ punctuation.section.parens.begin.d
//         ^^^ variable.function.d
//            ^ punctuation.separator.sequence.d
//              ^ meta.path.d variable.other.d
//               ^ punctuation.section.parens.end.d
//                ^ punctuation.terminator.d
  values ~= toValue(__traits(getMember, this, primaryKey));
//^^^^^^ meta.path.d variable.other.d
//       ^^ keyword.operator.assignment.d
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.d
//          ^^^^^^^ variable.function.d
//                 ^ punctuation.section.parens.begin.d
//                  ^^^^^^^^ keyword.other.d
//                          ^ punctuation.section.parens.begin.d
//                           ^^^^^^^^^ variable.function.d
//                                    ^ punctuation.separator.sequence.d
//                                      ^^^^ variable.language.d
//                                          ^ punctuation.separator.sequence.d
//                                            ^^^^^^^^^^ meta.path.d variable.other.d
//                                                      ^^ punctuation.section.parens.end.d
//                                                        ^ punctuation.terminator.d

  3 != 3 && "s" !in [2];
//^ constant.numeric.integer.decimal.d
//  ^^ keyword.operator.comparison.d
//     ^ constant.numeric.integer.decimal.d
//       ^^ keyword.operator.logical.d
//          ^^^ string.quoted.double.d
//              ^^^ keyword.operator.comparison.d
//                  ^ punctuation.section.brackets.begin.d
//                   ^ constant.numeric.integer.decimal.d
//                    ^ punctuation.section.brackets.end.d
//                     ^ punctuation.terminator.d
  j ^^= 11;
//^ variable.other.d
//  ^^^ keyword.operator.assignment.d
//      ^^ constant.numeric.integer.decimal.d
//        ^ punctuation.terminator.d
  k ^^ 11 == j;
//^ variable.other.d
//  ^^ keyword.operator.arithmetic.d
//     ^^ constant.numeric.integer.decimal.d
//        ^^ keyword.operator.comparison.d
//           ^ variable.other.d
//            ^ punctuation.terminator.d
  x *= 12345;
//^ variable.other.d
//  ^^ keyword.operator.assignment.d
//     ^^^^^ constant.numeric.integer.decimal.d
//          ^ punctuation.terminator.d
  foo();
//^^^^^ meta.function-call.d
//^^^ variable.function.d
//   ^ punctuation.section.parens.begin.d
//    ^ punctuation.section.parens.end.d
//     ^ punctuation.terminator.d
  a != 2;
//^ variable.other.d
//  ^^ keyword.operator.comparison.d
//     ^ constant.numeric.integer.decimal.d
//      ^ punctuation.terminator.d

  .AliasSeq!(immutable char, int);
//^ punctuation.accessor.dot.d
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.d
// ^^^^^^^^ variable.function.d
//         ^ punctuation.section.generic.begin.d
//          ^ punctuation.section.parens.begin.d
//           ^^^^^^^^^ storage.modifier.d
//                     ^^^^ storage.type.d
//                         ^ punctuation.separator.sequence.d
//                           ^^^ storage.type.d
//                              ^ punctuation.section.parens.end.d
//                               ^ punctuation.terminator.d

  cast(Unqual!T*).foo;
//^^^^ keyword.operator.word.d
//    ^ punctuation.section.parens.begin.d
//     ^^^^^^^^ meta.function-call.d
//     ^^^^^^ meta.path.d variable.function.d
//           ^ keyword.operator.d
//            ^ meta.path.d variable.other.d
//             ^ keyword.operator.pointer.d
//              ^ punctuation.section.parens.end.d
//               ^^^^ meta.path.d
//               ^ punctuation.accessor.dot.d
//                ^^^ variable.other.d
//                   ^ punctuation.terminator.d

  void toString(Writer)(ref Writer w, const ref FormatSpec!char fmt) {}
//^^^^ storage.type.d
//     ^^^^^^^^ meta.function.d entity.name.function.d
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//             ^ punctuation.section.group.begin.d
//              ^^^^^^ variable.parameter.d
//                    ^ punctuation.section.group.end.d
//                     ^ punctuation.section.group.begin.d
//                      ^^^ storage.modifier.d
//                          ^^^^^^ storage.type.d
//                                 ^ variable.parameter.d
//                                  ^ punctuation.separator.sequence.d
//                                    ^^^^^ storage.modifier.d
//                                          ^^^ storage.modifier.d
//                                              ^^^^^^^^^^^^^^^ meta.function-call.d
//                                              ^^^^^^^^^^ variable.function.d
//                                                        ^ keyword.operator.d
//                                                         ^^^^ storage.type.d
//                                                              ^^^ variable.parameter.d
//                                                                 ^ punctuation.section.group.end.d
//                                                                   ^^ meta.function.d meta.block.d
//                                                                   ^ punctuation.section.block.begin.d
//                                                                    ^ punctuation.section.block.end.d

  auto sc1 = const(S1)();
//^^^^ storage.modifier.d
//     ^^^ variable.other.d
//         ^ keyword.operator.assignment.d
//           ^^^^^ storage.modifier.d
//                ^ punctuation.section.group.begin.d
//                 ^^ storage.type.d
//                   ^ punctuation.section.group.end.d
//                    ^ punctuation.section.parens.begin.d
//                     ^ punctuation.section.parens.end.d
//                      ^ punctuation.terminator.d

  auto reference = new ubyte[](2048 + 1);
//^^^^ storage.modifier.d
//     ^^^^^^^^^ variable.other.d
//               ^ keyword.operator.assignment.d
//                 ^^^ keyword.operator.word.d
//                     ^^^^^ storage.type.d
//                          ^ punctuation.section.brackets.begin.d
//                           ^ punctuation.section.brackets.end.d
//                            ^ punctuation.section.parens.begin.d
//                             ^^^^ constant.numeric.integer.decimal.d
//                                  ^ keyword.operator.arithmetic.d
//                                    ^ constant.numeric.integer.decimal.d
//                                     ^ punctuation.section.parens.end.d
//                                      ^ punctuation.terminator.d

  auto staticArray(size_t n, T)(scope T a) {}
//^^^^ storage.modifier.d
//     ^^^^^^^^^^^ meta.function.d entity.name.function.d
//                ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//                ^ punctuation.section.group.begin.d
//                 ^^^^^^ storage.type.d
//                        ^ variable.parameter.d
//                         ^ punctuation.separator.sequence.d
//                           ^ variable.parameter.d
//                            ^ punctuation.section.group.end.d
//                             ^ punctuation.section.group.begin.d
//                              ^^^^^ storage.modifier.d
//                                    ^ storage.type.d
//                                      ^ variable.parameter.d
//                                       ^ punctuation.section.group.end.d
//                                         ^^ meta.function.d meta.block.d
//                                         ^ punctuation.section.block.begin.d
//                                          ^ punctuation.section.block.end.d

  static foreach (Sint; AliasSeq!(S, const S, immutable S))
//^^^^^^ keyword.control.loop.d
//       ^^^^^^^ keyword.control.loop.d
//               ^ punctuation.section.parens.begin.d
//                ^^^^ variable.parameter.d
//                    ^ punctuation.separator.sequence.d
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.d
//                      ^^^^^^^^ meta.path.d variable.function.d
//                              ^ punctuation.section.generic.begin.d
//                               ^ punctuation.section.parens.begin.d
//                                ^ meta.path.d variable.other.d
//                                 ^ punctuation.separator.sequence.d
//                                   ^^^^^ storage.modifier.d
//                                         ^ meta.path.d storage.type.d
//                                          ^ punctuation.separator.sequence.d
//                                            ^^^^^^^^^ storage.modifier.d
//                                                      ^ meta.path.d storage.type.d
//                                                       ^ punctuation.section.parens.end.d
//                                                        ^ punctuation.section.parens.end.d
  static foreach (Uint; AliasSeq!(U, const U, immutable U)) {}
//^^^^^^ keyword.control.loop.d
//       ^^^^^^^ keyword.control.loop.d
//               ^ punctuation.section.parens.begin.d
//                ^^^^ variable.parameter.d
//                    ^ punctuation.separator.sequence.d
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.d
//                      ^^^^^^^^ meta.path.d variable.function.d
//                              ^ punctuation.section.generic.begin.d
//                               ^ punctuation.section.parens.begin.d
//                                ^ meta.path.d variable.other.d
//                                 ^ punctuation.separator.sequence.d
//                                   ^^^^^ storage.modifier.d
//                                         ^ meta.path.d storage.type.d
//                                          ^ punctuation.separator.sequence.d
//                                            ^^^^^^^^^ storage.modifier.d
//                                                      ^ meta.path.d storage.type.d
//                                                       ^ punctuation.section.parens.end.d
//                                                        ^ punctuation.section.parens.end.d
//                                                          ^ punctuation.section.block.begin.d
//                                                           ^ punctuation.section.block.end.d

  switch (foo) with (bar) {}
//^^^^^^ keyword.control.flow.d
//       ^ punctuation.section.parens.begin.d
//        ^^^ meta.path.d variable.other.d
//           ^ punctuation.section.parens.end.d
//             ^^^^ keyword.other.with.d
//                  ^ punctuation.section.parens.begin.d
//                   ^^^ meta.path.d variable.other.d
//                      ^ punctuation.section.parens.end.d
//                        ^^ meta.block.d
//                        ^ punctuation.section.block.begin.d
//                         ^ punctuation.section.block.end.d

  Foo!2 foo;
//^^^^^ meta.function-call.d
//^^^ meta.path.d variable.function.d
//   ^ keyword.operator.d
//    ^ constant.numeric.integer.decimal.d
//      ^^^ variable.other.d
//         ^ punctuation.terminator.d

  void[int**]* foo;
//^^^^ storage.type.d
//    ^ punctuation.section.brackets.begin.d
//     ^^^ storage.type.d
//        ^^ keyword.operator.pointer.d
//          ^ punctuation.section.brackets.end.d
//           ^ keyword.operator.pointer.d
//             ^^^ variable.other.d
//                ^ punctuation.terminator.d
  a * 2;
//^ meta.path.d variable.other.d
//  ^ keyword.operator.arithmetic.d
//    ^ constant.numeric.integer.decimal.d
//     ^ punctuation.terminator.d
  void* foo() {}
//^^^^ storage.type.d
//    ^ keyword.operator.pointer.d
//      ^^^ meta.function.d entity.name.function.d
//         ^^ meta.function.parameters.d
//         ^ punctuation.section.group.begin.d
//          ^ punctuation.section.group.end.d
//            ^^ meta.function.d meta.block.d
//            ^ punctuation.section.block.begin.d
//             ^ punctuation.section.block.end.d
  a[b] * c;
//^ meta.path.d variable.other.d
// ^ punctuation.section.brackets.begin.d
//  ^ meta.path.d variable.other.d
//   ^ punctuation.section.brackets.end.d
//     ^ keyword.operator.pointer.d
//       ^ variable.other.d
//        ^ punctuation.terminator.d
  a **2;
//^ meta.path.d variable.other.d
//  ^^ keyword.operator.pointer.d
//    ^ invalid.illegal.d
//     ^ punctuation.terminator.d
  void*
//^^^^ storage.type.d
//    ^ keyword.operator.pointer.d
  foo();
//^^^ meta.function.d entity.name.function.d
//   ^^ meta.function.parameters.d
//   ^ punctuation.section.group.begin.d
//    ^ punctuation.section.group.end.d
//     ^ meta.function.d punctuation.terminator.d

  }
//^ invalid.illegal.d
  )
//^ invalid.illegal.d
  ]
//^ invalid.illegal.d

  extern extern(C) int a;
//^^^^^^ storage.modifier.external.d
//       ^^^^^^ keyword.other.external.d
//             ^ punctuation.section.parens.begin.d
//              ^ string.other.d
//               ^ punctuation.section.parens.end.d
//                 ^^^ meta.path.d storage.type.d
//                     ^ variable.other.d
//                      ^ punctuation.terminator.d

  assert(foo !is bar);
//^^^^^^ keyword.other.assert.d
//      ^ punctuation.section.parens.begin.d
//       ^^^ meta.path.d variable.other.d
//           ^^^ keyword.operator.comparison.d
//               ^^^ meta.path.d variable.other.d
//                  ^ punctuation.section.parens.end.d
//                   ^ punctuation.terminator.d

  a = (immutable ref Outer.Inner inner) => inner.x;
//^ meta.path.d variable.other.d
//  ^ keyword.operator.assignment.d
//    ^ punctuation.section.group.begin.d
//     ^^^^^^^^^ storage.modifier.d
//               ^^^ storage.modifier.d
//                   ^^^^^^^^^^^ meta.path.d
//                   ^^^^^ storage.type.d
//                        ^ punctuation.accessor.dot.d
//                         ^^^^^ storage.type.d
//                               ^^^^^ variable.parameter.d
//                                    ^ punctuation.section.group.end.d
//                                      ^^^^^^^^^^ meta.function.d
//                                      ^^ storage.type.function.d keyword.declaration.function.lambda.d
//                                         ^^^^^^^ meta.path.d
//                                         ^^^^^ variable.other.d
//                                              ^ punctuation.accessor.dot.d
//                                               ^ variable.other.d

  pure Pair!int* makePair(int x) {}
//^^^^ storage.modifier.d
//     ^^^^^^^^ meta.function-call.d
//     ^^^^ meta.path.d variable.function.d
//         ^ keyword.operator.d
//          ^^^ storage.type.d
//             ^ keyword.operator.pointer.d
//               ^^^^^^^^ meta.function.d entity.name.function.d
//                       ^^^^^^^ meta.function.parameters.d
//                       ^ punctuation.section.group.begin.d
//                        ^^^ meta.path.d storage.type.d
//                            ^ variable.parameter.d
//                             ^ punctuation.section.group.end.d
//                               ^^ meta.function.d meta.block.d
//                               ^ punctuation.section.block.begin.d
//                                ^ punctuation.section.block.end.d
  alias const(int) constInt;
//^^^^^ keyword.control.alias.d
//      ^^^^^ storage.modifier.d
//           ^ punctuation.section.group.begin.d
//            ^^^ meta.path.d storage.type.d
//               ^ punctuation.section.group.end.d
//                 ^^^^^^^^ entity.name.type.d
//                         ^ punctuation.terminator.d

  S s = { a: 1, b: "hi",
//^ meta.path.d storage.type.d
//  ^ variable.other.d
//    ^ keyword.operator.assignment.d
//      ^^^^^^^^^^^^^^^^^ meta.block.d
//      ^ punctuation.section.block.begin.d
//        ^ entity.name.label.d
//         ^ punctuation.separator.d
//           ^ constant.numeric.integer.decimal.d
//            ^ punctuation.separator.sequence.d
//              ^ variable.other.d
//               ^ punctuation.separator.mapping.key-value.d
//                 ^^^^ meta.string.d string.quoted.double.d
//                     ^ punctuation.separator.sequence.d
    c: 5.sqrt(12) }.foo();
//  ^^^^^^^^^^^^^^^ meta.block.d
//  ^ variable.other.d
//   ^ punctuation.separator.mapping.key-value.d
//     ^ constant.numeric.integer.decimal.d
//      ^ meta.path.d punctuation.accessor.dot.d
//       ^^^^ meta.function-call.d meta.path.d variable.function.d
//           ^ meta.function-call.d punctuation.section.parens.begin.d
//            ^^ meta.function-call.d constant.numeric.integer.decimal.d
//              ^ meta.function-call.d punctuation.section.parens.end.d
//                ^ punctuation.section.block.end.d
//                 ^ meta.path.d punctuation.accessor.dot.d
//                  ^^^^^ meta.function-call.d
//                  ^^^ meta.path.d variable.function.d
//                     ^ punctuation.section.parens.begin.d
//                      ^ punctuation.section.parens.end.d
//                       ^ punctuation.terminator.d

    s = 5._method(12._);
//      ^ constant.numeric.integer.decimal.d
//       ^ meta.path.d punctuation.accessor.dot.d
//        ^^^^^^^ meta.function-call.d meta.path.d variable.function.d
//               ^ meta.function-call.d punctuation.section.parens.begin.d
//                ^^ meta.function-call.d constant.numeric.integer.decimal.d
//                  ^ meta.function-call.d meta.path.d punctuation.accessor.dot.d
//                   ^ meta.function-call.d meta.path.d variable.other.d
//                    ^ meta.function-call.d punctuation.section.parens.end.d
//                     ^ punctuation.terminator.d
