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

/*
 * Merge Conflict Marker Tests
 */

<<<<<<< HEAD
// <- meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//^^^^^ meta.block.conflict.begin.diff punctuation.section.block.begin.diff
//     ^ meta.block.conflict.begin.diff - entity - punctuation
//      ^^^^ meta.block.conflict.begin.diff entity.name.section.diff
//          ^ meta.block.conflict.begin.diff - entity - punctuation

=======
// <- meta.block.conflict.separator.diff punctuation.section.block.diff
//^^^^^ meta.block.conflict.separator.diff punctuation.section.block.diff
//     ^ meta.block.conflict.separator.diff - punctuation

>>>>>>> master
// <- meta.block.conflict.end.diff punctuation.section.block.end.diff
//^^^^^ meta.block.conflict.end.diff punctuation.section.block.end.diff
//     ^ meta.block.conflict.end.diff - entity - punctuation
//      ^^^^^^ meta.block.conflict.end.diff entity.name.section.diff
//            ^ meta.block.conflict.end.diff - entity - punctuation

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

auto wysiwygInter = i`string $(this.foo)\r\nescaped: \$(bar) func: $(this.baz())\r\n`;
//                  ^ storage.modifier.string.d
//                   ^^^^^^^^ meta.string.d string.quoted.double.raw.backtick.d
//                           ^^^^^^^^^^^ meta.string.d meta.interpolation.d
//                           ^^ punctuation.section.interpolation.begin.d
//                             ^^^^ variable.language.d
//                                 ^ punctuation.accessor.dot.d
//                                  ^^^ variable.other.d
//                                     ^ punctuation.section.interpolation.end.d
//                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.d string.quoted.double.raw.backtick.d
//                                      ^^^^ - constant.character
//                                                   ^^ constant.character.escape.d
//                                                                 ^^^^^^^^^^^^^ meta.string.d meta.interpolation.d
//                                                                 ^^ punctuation.section.interpolation.begin.d
//                                                                   ^^^^ variable.language.d
//                                                                       ^ punctuation.accessor.dot.d
//                                                                        ^^^ variable.function.d
//                                                                           ^ punctuation.section.parens.begin.d
//                                                                            ^ punctuation.section.parens.end.d
//                                                                             ^ punctuation.section.interpolation.end.d
//                                                                              ^^^^^ meta.string.d string.quoted.double.raw.backtick.d
//                                                                              ^^^^ - constant.character
//                                                                                  ^ punctuation.definition.string.end.d
//                                                                                   ^ punctuation.terminator.d - meta.string

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

auto interpolated = i"string $(this.foo)\r\nescaped: \$(bar) func: $(this.baz())\r\n";
//                  ^ storage.modifier.string.d
//                   ^^^^^^^^ meta.string.d string.quoted.double.d
//                           ^^^^^^^^^^^ meta.string.d meta.interpolation.d
//                           ^^ punctuation.section.interpolation.begin.d
//                             ^^^^ variable.language.d
//                                 ^ punctuation.accessor.dot.d
//                                  ^^^ variable.other.d
//                                     ^ punctuation.section.interpolation.end.d
//                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.d string.quoted.double.d
//                                      ^^^^ constant.character.escape.d
//                                                   ^^ constant.character.escape.d
//                                                                 ^^^^^^^^^^^^^ meta.string.d meta.interpolation.d
//                                                                 ^^ punctuation.section.interpolation.begin.d
//                                                                   ^^^^ variable.language.d
//                                                                       ^ punctuation.accessor.dot.d
//                                                                        ^^^ variable.function.d
//                                                                           ^ punctuation.section.parens.begin.d
//                                                                            ^ punctuation.section.parens.end.d
//                                                                             ^ punctuation.section.interpolation.end.d
//                                                                              ^^^^^ meta.string.d string.quoted.double.d
//                                                                              ^^^^ constant.character.escape.d
//                                                                                  ^ punctuation.definition.string.end.d
//                                                                                   ^ punctuation.terminator.d - meta.string

auto hexString = x"00 ba
//               ^^^^^^^^ meta.string.d string.quoted.double.raw.d
//               ^ storage.modifier.string.d
//                ^ punctuation.definition.string.begin.d
    5 5 b";
// ^^^^^^^ meta.string.d string.quoted.double.raw.d
//  ^^^ string.quoted.double.raw.d constant.character.escape.d
//      ^ string.quoted.double.raw.d invalid.illegal.unknown-escape.d
//       ^ string.quoted.double.raw.d punctuation.definition.string.end.d
auto delimited = q"SQL_1
//               ^^^^^^^^ meta.string.d string.quoted.double.raw.d
//               ^ storage.modifier.string.d
//                ^ punctuation.definition.string.begin.d
//                 ^^^^^ constant.other.delimiter.d
    select foo \n
//  ^^^^^^^^^^^^^^ meta.string.d string.quoted.double.raw.d
SQL_1";
// <- meta.string.d string.quoted.double.raw.d constant.other.delimiter.d
//^^^^ meta.string.d string.quoted.double.raw.d
// ^^ constant.other.delimiter.d
//   ^ punctuation.definition.string.end.d
//    ^ punctuation.terminator.d
//    - meta.string.d
auto delimitedBad = q"SQL\
//                       ^ meta.string.d string.quoted.double.raw.d invalid.illegal.d
SQL";
auto delimitedNested = q"(f("))" + q"{f{"}}" + q"[f["]]" + q"<f<">>";
//                     ^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                     ^ storage.modifier.string.d
//                      ^^ punctuation.definition.string.begin.d
//                            ^^ punctuation.definition.string.end.d
//                                 ^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                                 ^ storage.modifier.string.d
//                                  ^^ punctuation.definition.string.begin.d
//                                        ^^ punctuation.definition.string.end.d
//                                             ^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                                             ^ storage.modifier.string.d
//                                              ^^ punctuation.definition.string.begin.d
//                                                    ^^ punctuation.definition.string.end.d
//                                                         ^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                                                         ^ storage.modifier.string.d
//                                                          ^^ punctuation.definition.string.begin.d
//                                                                ^^ punctuation.definition.string.end.d
auto delimitedAny = q"/foo(xxx)/";
//                  ^^^^^^^^^^^^^ meta.string.d string.quoted.double.raw.d
//                  ^ storage.modifier.string.d
//                   ^ punctuation.definition.string.begin.d
//                    ^ constant.other.delimiter.d
//                             ^ constant.other.delimiter.d
//                              ^ punctuation.definition.string.end.d
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
//                        ^^ meta.number.integer.decimal.d constant.numeric.value.d
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

auto tokenString = q{ if (params.help.}~n~q{) return printHelpUsage(CLIUsage.}~n~q{Usage); };
//                 ^^^^^^^^^^^^^^^^^^^^ meta.string.d
//                                     ^^^ - meta.string
//                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.d
//                                                                            ^^^ - meta.string
//                                                                               ^^^^^^^^^^^ meta.string.d
//                 ^^ string.unquoted.embedded.d
//                 ^ storage.modifier.string.d
//                  ^ punctuation.definition.string.begin.d
//                   ^^^^^^^^^^^^^^^^^ - string
//                    ^^ keyword.d
//                       ^ punctuation.section.parens.begin.d
//                                    ^ string.unquoted.embedded.d punctuation.definition.string.end.d
//                                        ^^ string.unquoted.embedded.d
//                                        ^ storage.modifier.string.d
//                                         ^ punctuation.definition.string.begin.d
//                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - string
//                                          ^ punctuation.section.parens.end.d
//                                            ^^^^^^ keyword.d
//                                                                 ^ punctuation.section.parens.begin.d
//                                                                           ^ string.unquoted.embedded.d punctuation.definition.string.end.d
//                                                                               ^^ string.unquoted.embedded.d
//                                                                               ^ storage.modifier.string.d
//                                                                                ^ punctuation.definition.string.begin.d
//                                                                                 ^^^^^^^^ - string
//                                                                                      ^ punctuation.section.parens.end.d
//                                                                                       ^ punctuation.terminator.d
//                                                                                         ^ string.unquoted.embedded.d punctuation.definition.string.end.d
//                                                                                          ^ punctuation.terminator.d - string

auto tokenString = q{ if { () /*}*/ else /*{*/ } };
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.d
//                 ^^ string.unquoted.embedded.d
//                 ^ storage.modifier.string.d
//                  ^ punctuation.definition.string.begin.d
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - string
//                       ^ punctuation.section.braces.begin.d
//                         ^ punctuation.section.parens.begin.d
//                          ^ punctuation.section.parens.end.d
//                            ^^^^^ comment.block.d
//                                  ^^^^ keyword.d
//                                       ^^^^^ comment.block.d
//                                             ^ punctuation.section.braces.end.d
//                                               ^ string.unquoted.embedded.d punctuation.definition.string.end.d
//                                                ^ punctuation.terminator.d

auto interpolTokenStr = iq{ if $(this.var) { me = $(this.bar) } }
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.d
//                      ^^ storage.modifier.string.d
//                        ^ punctuation.definition.string.begin.d
//                          ^^ keyword.d
//                             ^^^^^^^^^^^ meta.interpolation.d
//                             ^^ punctuation.section.interpolation.begin.d
//                               ^^^^ variable.language.d
//                                   ^ punctuation.accessor.dot.d
//                                    ^^^ variable.other.d
//                                       ^ punctuation.section.interpolation.end.d
//                                         ^ punctuation.section.braces.begin.d
//                                              ^ keyword.operator.assignment.d
//                                                ^^^^^^^^^^^ meta.interpolation.d
//                                                ^^ punctuation.section.interpolation.begin.d
//                                                  ^^^^ variable.language.d
//                                                      ^ punctuation.accessor.dot.d
//                                                       ^^^ variable.other.d
//                                                          ^ punctuation.section.interpolation.end.d
//                                                            ^ punctuation.section.braces.end.d
//                                                              ^ punctuation.definition.string.end.d

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
//         ^^^^^^^^ meta.number.integer.decimal.d constant.numeric.value.d
dec = 1L;
//    ^^ meta.number.integer.decimal.d
//    ^ constant.numeric.value.d
//     ^ constant.numeric.suffix.d
dec = 1u;
//    ^^ meta.number.integer.decimal.d
//    ^ constant.numeric.value.d
//     ^ constant.numeric.suffix.d
dec = 1U;
//    ^^ meta.number.integer.decimal.d
//    ^ constant.numeric.value.d
//     ^ constant.numeric.suffix.d
dec = 1Lu;
//    ^^^ meta.number.integer.decimal.d
//    ^ constant.numeric.value.d
//     ^^ constant.numeric.suffix.d
dec = 1LU;
//    ^^^ meta.number.integer.decimal.d
//    ^ constant.numeric.value.d
//     ^^ constant.numeric.suffix.d
dec = 1uL;
//    ^^^ meta.number.integer.decimal.d
//    ^ constant.numeric.value.d
//     ^^ constant.numeric.suffix.d
dec = 1UL;
//    ^^^ meta.number.integer.decimal.d
//    ^ constant.numeric.value.d
//     ^^ constant.numeric.suffix.d
auto bin = 0b1;
//         ^^^ meta.number.integer.binary.d
//         ^^ constant.numeric.base.d
//           ^ constant.numeric.value.d
bin = 0b10__1;
//    ^^^^^^^ meta.number.integer.binary.d
//    ^^ constant.numeric.base.d
//      ^^^^^ constant.numeric.value.d
bin = 0B1;
//    ^^^ meta.number.integer.binary.d
//    ^^ constant.numeric.base.d
//      ^ constant.numeric.value.d
auto hex = 0xFf;
//         ^^^^ meta.number.integer.hexadecimal.d
//         ^^ constant.numeric.base.d
//           ^^ constant.numeric.value.d
hex = 0x012_3;
//    ^^^^^^^ meta.number.integer.hexadecimal.d
//    ^^ constant.numeric.base.d
//      ^^^^^ constant.numeric.value.d
hex = 0X1;
//    ^^^ meta.number.integer.hexadecimal.d
//    ^^ constant.numeric.base.d
//      ^ constant.numeric.value.d

imag = 123_45i + 0_.1_i + 12_.e1i;
//     ^^^^^^^ meta.number.imaginary.decimal.d
//     ^^^^^^ constant.numeric.value.d
//           ^ constant.numeric.suffix.d
//             ^ keyword.operator.arithmetic.d
//               ^^^^^^ meta.number.imaginary.decimal.d
//               ^^^^^ constant.numeric.value.d
//                 ^ punctuation.separator.decimal.d
//                    ^ constant.numeric.suffix.d
//                        ^^^^^^^ meta.number.imaginary.decimal.d
//                        ^^^ constant.numeric.value.d - punctuation
//                           ^ constant.numeric.value.d punctuation.separator.decimal.d
//                            ^^ constant.numeric.value.d - punctuation
//                              ^ constant.numeric.suffix.d - punctuation
imag = 23134723__742e1i;
//     ^^^^^^^^^^^^^^^^ meta.number.imaginary.decimal.d
//     ^^^^^^^^^^^^^^^ constant.numeric.value.d
//                    ^ constant.numeric.suffix.d
imag = 0x_3472389742f_i;
//     ^^^^^^^^^^^^^^^^ meta.number.imaginary.hexadecimal.d
//     ^^ constant.numeric.base.d
//       ^ invalid.illegal.numeric.d
//        ^^^^^^^^^^^^ constant.numeric.value.d
//                    ^ constant.numeric.suffix.d
imag = 0x_34723897p-34i;
//     ^^^^^^^^^^^^^^^^ meta.number.imaginary.hexadecimal.d
//     ^^ constant.numeric.base.d
//       ^ invalid.illegal.numeric.d
//        ^^^^^^^^^^^^ constant.numeric.value.d
//                    ^ constant.numeric.suffix.d
imag = 0x347._23897p-34i;
//     ^^^^^ meta.number.integer.hexadecimal.d
//     ^^ constant.numeric.base.d
//       ^^^ constant.numeric.value.d
//          ^ punctuation.accessor.dot.d
//           ^^^^^^^ variable.other.d
//                  ^ keyword.operator.arithmetic.d
//                   ^^^ meta.number.imaginary.decimal.d
imag = 0b_0100_010_00_i;
//     ^^^^^^^^^^^^^^^^ meta.number.imaginary.binary.d
//     ^^ constant.numeric.base.d
//       ^ invalid.illegal.numeric.d
//        ^^^^^^^^^^^^ constant.numeric.value.d
//                    ^ constant.numeric.suffix.d

auto f = 0_.0_;
//       ^^^^^ meta.number.float.decimal.d
//       ^^^^^ constant.numeric.value.d
//         ^ punctuation.separator.decimal.d
f = 0_.;
//  ^^^ meta.number.float.decimal.d
//  ^^ constant.numeric.value.d - punctuation
//    ^ constant.numeric.value.d punctuation.separator.decimal.d
f = .123_1243;
//  ^^^^^^^^^ meta.number.float.decimal.d
//  ^ constant.numeric.value.d punctuation.separator.decimal.d
//   ^^^^^^^^ constant.numeric.value.d - punctuation
f = ._123_1243 + 1._123;
//  ^ punctuation.accessor.dot.d
//   ^^^^^^^^^ variable.other.d
//             ^ keyword.operator.arithmetic.d
//               ^ meta.number.integer.decimal.d constant.numeric.value.d
//                ^ punctuation.accessor.dot.d
//                 ^^^^ variable.other.d
f = 3423.2e-45;
//  ^^^^^^^^^^ meta.number.float.decimal.d
//  ^^^^ constant.numeric.value.d - punctuation
//      ^ constant.numeric.value.d punctuation.separator.decimal.d
//       ^^^^^ constant.numeric.value.d - punctuation
f = 2.e-45;
//  ^^^^^^ meta.number.float.decimal.d
//  ^ constant.numeric.value.d - punctuation
//   ^ constant.numeric.value.d punctuation.separator.decimal.d
//    ^^^^ constant.numeric.value.d - punctuation
f = .4E+4L;
//  ^^^^^^ meta.number.float.decimal.d
//  ^ constant.numeric.value.d punctuation.separator.decimal.d
//   ^^^^ constant.numeric.value.d - punctuation
//       ^ constant.numeric.suffix.d
f =  1f;
//   ^^ meta.number.float.decimal.d
//   ^ constant.numeric.value.d
//    ^ constant.numeric.suffix.d
f = 0x123p2f;
//  ^^^^^^^^ meta.number.float.hexadecimal.d
//  ^^ constant.numeric.base.d
//    ^^^^^ constant.numeric.value.d
//         ^ constant.numeric.suffix.d
f = 0b10101101f;
//  ^^^^^^^^^^^ meta.number.float.binary.d
//  ^^ constant.numeric.base.d
//    ^^^^^^^^ constant.numeric.value.d
//            ^ constant.numeric.suffix.d
f = 0x.1aFp2;
//  ^^^^^^^^ meta.number.float.hexadecimal.d
//  ^^ constant.numeric.base.d
//    ^ constant.numeric.value.d punctuation.separator.decimal.d
//     ^^^^^ constant.numeric.value.d - punctuation
f = 0xF.AP-2f;
//  ^^^^^^^^^ meta.number.float.hexadecimal.d
//  ^^ constant.numeric.base.d
//    ^ constant.numeric.value.d - punctuation
//     ^ constant.numeric.value.d punctuation.separator.decimal.d
//      ^^^^ constant.numeric.value.d - punctuation
//          ^ constant.numeric.suffix.d

  @Foo!5
//^ punctuation.definition.annotation.begin.d
// ^^^ meta.path.d storage.type.d
//    ^ punctuation.section.generic.begin.d
//     ^ constant.numeric.value.d
  struct Bar {}
//^^^^^^^^^^^^^ meta.struct.d
//^^^^^^ keyword.declaration.struct.d
//       ^^^ entity.name.struct.d

  @Foo!(int)
//^ punctuation.definition.annotation.begin.d
// ^^^ meta.path.d storage.type.d
//    ^ punctuation.section.generic.begin.d
//     ^ punctuation.section.parens.begin.d
//      ^^^ storage.type.d
//         ^ punctuation.section.parens.end.d
  struct Bar {}
//^^^^^^^^^^^^^ meta.struct.d
//^^^^^^ keyword.declaration.struct.d
//       ^^^ entity.name.struct.d

  @(Foo!5)
//^ punctuation.definition.annotation.begin.d
// ^ punctuation.section.parens.begin.d
//  ^^^ meta.function-call.template.d meta.path.d variable.function.d
//     ^ meta.function-call.template.d punctuation.section.generic.begin.d
//      ^ meta.function-call.template.d constant.numeric.value.d
  struct Baz {}
//^^^^^^^^^^^^^ meta.struct.d
//^^^^^^ keyword.declaration.struct.d
//       ^^^ entity.name.struct.d

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
//                  ^ meta.number.integer.decimal.d
//                     ^ meta.number.integer.decimal.d
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
//            ^ meta.number.integer.decimal.d
//             ^ punctuation.section.parens.end.d
//               ^^^^^ keyword.other.alignment.d
//                    ^ punctuation.section.parens.begin.d
//                     ^^^ variable.other.d
//                         ^ keyword.operator.arithmetic.d
//                           ^ meta.number.integer.decimal.d
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
  pragma(inline) pragma(mangle, "main"):
//^^^^^^ keyword.other.pragma.d
//      ^ punctuation.section.parens.begin.d
//       ^^^^^^ constant.other.d
//             ^ punctuation.section.parens.end.d
//               ^^^^^^ keyword.other.pragma.d
//                     ^ punctuation.section.parens.begin.d
//                      ^^^^^^ constant.other.d
//                              ^^^^^^ string.quoted.double.d
//                                    ^ punctuation.section.parens.end.d
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
//^^^^^^ support.type.builtin-alias.d
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
//              ^^^^^^^^^^^^ meta.function-call.template.d
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
//                     ^^^^^^^^ meta.brackets.d
//                     ^ punctuation.section.brackets.begin.d
//                      ^^^^^^ support.type.builtin-alias.d
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
//               ^^^^^^^^ meta.brackets.d
//               ^ punctuation.section.brackets.begin.d
//                ^^^^^^ support.type.builtin-alias.d
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
//                ^^ keyword.declaration.function.anonymous.d
//                   ^ meta.path.d variable.other.d
//                    ^ punctuation.terminator.d

  int a;
//^^^ storage.type.d
//    ^ variable.other.d
//     ^ punctuation.terminator.d
  foo[string] b = 123;
//^^^ storage.type.d
//   ^^^^^^^^ meta.brackets.d
//   ^ punctuation.section.brackets.begin.d
//    ^^^^^^ support.type.builtin-alias.d
//          ^ punctuation.section.brackets.end.d
//            ^ variable.other.d
//              ^ keyword.operator.assignment.d
//                ^^^ meta.number.integer.decimal.d
//                   ^ punctuation.terminator.d
  bar* some_long_Name;
//^^^ storage.type.d
//   ^ keyword.operator.pointer.d
//     ^^^^^^^^^^^^^^ variable.other.d
//                   ^ punctuation.terminator.d
  bar *some_long_Name;
//^^^ storage.type.d
//    ^ keyword.operator.pointer.d
//     ^^^^^^^^^^^^^^ variable.other.d
//                   ^ punctuation.terminator.d
  foo[BAR] baz;
//^^^ storage.type.d
//   ^^^^^ meta.brackets.d
//   ^ punctuation.section.brackets.begin.d
//    ^^^ variable.other.d
//       ^ punctuation.section.brackets.end.d
//         ^^^ variable.other.d
//            ^ punctuation.terminator.d
  foo bar;
//^^^ storage.type.d
//    ^^^ variable.other.d
//       ^ punctuation.terminator.d
  foo* bar;
//^^^ storage.type.d
//   ^ keyword.operator.pointer.d
//     ^^^ variable.other.d
//        ^ punctuation.terminator.d
  foo** bar;
//^^^ storage.type.d
//   ^^ keyword.operator.pointer.d
//      ^^^ variable.other.d
//         ^ punctuation.terminator.d
  foo **bar;
//^^^ storage.type.d
//    ^^ keyword.operator.pointer.d
//      ^^^ variable.other.d
//         ^ punctuation.terminator.d
  foo*bar;
//^^^ storage.type.d
//   ^ keyword.operator.pointer.d
//    ^^^ variable.other.d
//       ^ punctuation.terminator.d
  foo**bar;
//^^^ storage.type.d
//   ^^ keyword.operator.pointer.d
//     ^^^ variable.other.d
//        ^ punctuation.terminator.d
  foo[] bar;
//^^^ storage.type.d
//   ^^ punctuation.section.brackets
//      ^^^ variable.other.d
//         ^ punctuation.terminator.d
  foo*[] bar;
//^^^ storage.type.d
//   ^ keyword.operator.pointer.d
//    ^^ punctuation.section.brackets
//       ^^^ variable.other.d
//          ^ punctuation.terminator.d
  foo**[] bar;
//^^^ storage.type.d
//   ^^ keyword.operator.pointer.d
//     ^^ punctuation.section.brackets
//        ^^^ variable.other.d
//           ^ punctuation.terminator.d
  foo[]bar;
//^^^ storage.type.d
//   ^^ punctuation.section.brackets
//     ^^^ variable.other.d
//        ^ punctuation.terminator.d
  foo*[]bar;
//^^^ storage.type.d
//   ^ keyword.operator.pointer.d
//    ^^ punctuation.section.brackets
//      ^^^ variable.other.d
//         ^ punctuation.terminator.d
  foo**[]bar;
//^^^ storage.type.d
//   ^^ keyword.operator.pointer.d
//     ^^ punctuation.section.brackets
//       ^^^ variable.other.d
//          ^ punctuation.terminator.d
  foo.bar baz;
//^^^^^^^ meta.path.d
//^^^ storage.type.d
//   ^ punctuation.accessor.dot.d
//    ^^^ meta.path.d storage.type.d
//        ^^^ variable.other.d
//           ^ punctuation.terminator.d
  foo.bar.baz**var;
//^^^^^^^^^^^ meta.path.d
//^^^ storage.type.d
//   ^ punctuation.accessor.dot.d
//    ^^^ storage.type.d
//       ^ punctuation.accessor.dot.d
//        ^^^ storage.type.d
//           ^^ keyword.operator.pointer.d
//             ^^^ variable.other.d
//                ^ punctuation.terminator.d
  foo.bar.baz**[] var;
//^^^^^^^^^^^ meta.path.d
//^^^ storage.type.d
//   ^ punctuation.accessor.dot.d
//    ^^^ storage.type.d
//       ^ punctuation.accessor.dot.d
//        ^^^ storage.type.d
//           ^^ keyword.operator.pointer.d
//             ^^ punctuation.section.brackets
//                ^^^ variable.other.d
//                   ^ punctuation.terminator.d
  auto foo = 3;
//^^^^ storage.modifier.d
//     ^^^ variable.other.d
//         ^ keyword.operator.assignment.d
//           ^ meta.number.integer.decimal.d
//            ^ punctuation.terminator.d
  auto
//^^^^ storage.modifier.d
  asjfaisdjaksdjaklsjdnaskjjks = 3;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.other.d
//                             ^ keyword.operator.assignment.d
//                               ^ meta.number.integer.decimal.d
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
//^^^^^ keyword.declaration.class.d
//      ^^^ entity.name.class.d
//         ^ punctuation.terminator.d

  class Bar : Foo, b {
//^^^^^^^^^^^^^^^^^^^^^ meta.class.d
//^^^^^ keyword.declaration.class.d
//      ^^^ entity.name.class.d
//          ^ punctuation.separator.mapping.d
//            ^^^ storage.type.d
//               ^ punctuation.separator.sequence.d
//                 ^ storage.type.d
//                   ^ punctuation.section.block.begin.d
    class b {}
  //^^^^^^^^^^ meta.class.d meta.block.d meta.class.d
  //^^^^^ keyword.declaration.class.d
  //      ^ entity.name.class.d
  //        ^ punctuation.section.block.begin.d
  //         ^ punctuation.section.block.end.d
  }
//^ meta.class.d punctuation.section.block.end.d
  class b(T, int s) {
//^^^^^^^^^^^^^^^^^^^^ meta.class.d
//^^^^^ keyword.declaration.class.d
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

  class Foo : Bar
  if (true) {}
//^^^ meta.class.d - meta.parens
//   ^^^^^^ meta.class.d meta.parens.d
//         ^ meta.class.d - meta.parens - meta.block
//          ^^ meta.class.d meta.block.d
//            ^ - meta.class
//^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^^^^ constant.language.d
//        ^ punctuation.section.parens.end.d
//          ^ punctuation.section.block.begin.d
//           ^ punctuation.section.block.end.d

  interface S;
//^^^^^^^^^^^^ meta.interface.d
//^^^^^^^^^ keyword.declaration.interface.d
//          ^ entity.name.interface.d
//           ^ punctuation.terminator.d
  interface Foo: Bar, Baz {
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.d
//^^^^^^^^^ keyword.declaration.interface.d
//          ^^^ entity.name.interface.d
//             ^ punctuation.separator.mapping.d
//               ^^^ storage.type.d
//                  ^ punctuation.separator.sequence.d
//                    ^^^ storage.type.d
//                        ^ punctuation.section.block.begin.d
    interface c{}
  //^^^^^^^^^^^^^ meta.interface.d meta.block.d meta.interface.d
  //^^^^^^^^^ keyword.declaration.interface.d
  //          ^ entity.name.interface.d
  //           ^ punctuation.section.block.begin.d
  //            ^ punctuation.section.block.end.d
  }
//^ meta.interface.d meta.block.d punctuation.section.block.end.d
  interface A(T, float f) {
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interface.d
//^^^^^^^^^ keyword.declaration.interface.d
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
//^^^^^^ keyword.declaration.struct.d
//       ^^^ entity.name.struct.d
//           ^ punctuation.section.block.begin.d
    struct {
  //^^^^^^^^^ meta.struct.d meta.block.d meta.struct.d
  //^^^^^^ keyword.declaration.struct.d
  //       ^ punctuation.section.block.begin.d
      union {}
    //^^^^^^^^ meta.struct.d meta.block.d meta.struct.d meta.block.d meta.union.d
    //^^^^^ keyword.declaration.union.d
    //      ^ punctuation.section.block.begin.d
    //       ^ punctuation.section.block.end.d
    }
  //^ meta.struct.d meta.block.d meta.struct.d meta.block.d punctuation.section.block.end.d
  }
//^ meta.struct.d meta.block.d punctuation.section.block.end.d
  struct F(int a, T) {
//^^^^^^^^^^^^^^^^^^^^^ meta.struct.d
//^^^^^^ keyword.declaration.struct.d
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
//^^^^^ keyword.declaration.union.d
//      ^^^ entity.name.union.d
//          ^ punctuation.section.block.begin.d
//           ^ punctuation.section.block.end.d
  union Test(string s, F) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.union.d
//^^^^^ keyword.declaration.union.d
//      ^^^^ entity.name.union.d
//          ^ punctuation.section.group.begin.d
//           ^^^^^^ support.type.builtin-alias.d
//                  ^ variable.parameter.d
//                   ^ punctuation.separator.sequence.d
//                     ^ variable.parameter.d
//                      ^ punctuation.section.group.end.d
//                        ^ punctuation.section.block.begin.d
//                         ^ punctuation.section.block.end.d

  enum Foo {
//^^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
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
  //      ^ meta.number.integer.decimal.d
  //       ^ punctuation.separator.sequence.d
    1
  //^ meta.enum.d invalid.illegal.d
  }
  enum Boo {
//^^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
//     ^^^ entity.name.enum.d
//         ^ punctuation.section.block.begin.d
    deprecated foo,
  //^^^^^^^^^^^^^^^^ meta.enum.d
  //^^^^^^^^^^ keyword.other.deprecated.d
  //           ^^^ entity.name.constant.d
  //              ^ punctuation.separator.sequence.d
    @Test bar = 2,
  //^^^^^^^^^^^^^^^ meta.enum.d
  //^ punctuation.definition.annotation.begin.d
  // ^^^^ meta.path.d storage.type.d
  //      ^^^ entity.name.constant.d
  //          ^ keyword.operator.assignment.d
  //            ^ meta.number.integer.decimal.d
  //             ^ punctuation.separator.sequence.d
    deprecated( "Oops!" ) boo,
  //^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
  //^^^^^^^^^^ keyword.other.deprecated.d
  //          ^ punctuation.section.parens.begin.d
  //            ^^^^^^^ string.quoted.double.d
  //                    ^ punctuation.section.parens.end.d
  //                      ^^^ entity.name.constant.d
  //                         ^ punctuation.separator.sequence.d
    @("Test") par = 2,
  //^^^^^^^^^^^^^^^^^^^ meta.enum.d
  //^ punctuation.definition.annotation.begin.d
  // ^ punctuation.section.parens.begin.d
  //  ^^^^^^ string.quoted.double.d
  //        ^ punctuation.section.parens.end.d
  //          ^^^ entity.name.constant.d
  //              ^ keyword.operator.assignment.d
  //                ^ meta.number.integer.decimal.d
  //                 ^ punctuation.separator.sequence.d
  }
//^ meta.enum.d punctuation.section.block.end.d
  enum Foo : int { a = 12 }
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
//     ^^^ entity.name.enum.d
//         ^ punctuation.separator.mapping.d
//           ^^^ storage.type.d
//               ^ punctuation.section.block.begin.d
//                 ^ entity.name.constant.d
//                   ^ keyword.operator.assignment.d
//                     ^^ meta.number.integer.decimal.d
//                        ^ punctuation.section.block.end.d
  enum : foo[string] { TEST }
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
//     ^ punctuation.separator.mapping.d
//       ^^^ storage.type.d
//          ^^^^^^^^ meta.brackets.d
//          ^ punctuation.section.brackets.begin.d
//           ^^^^^^ support.type.builtin-alias.d
//                 ^ punctuation.section.brackets.end.d
//                   ^ punctuation.section.block.begin.d
//                     ^^^^ entity.name.constant.d
//                          ^ punctuation.section.block.end.d
  enum { int a = 12,
//^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
//     ^ punctuation.section.block.begin.d
//       ^^^ storage.type.d
//           ^ entity.name.constant.d
//             ^ keyword.operator.assignment.d
//               ^^ meta.number.integer.decimal.d
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
//^^^^ keyword.declaration.enum.d
//     ^ entity.name.enum.d
//       ^ keyword.operator.assignment.d
//         ^^ meta.number.integer.decimal.d
//           ^ punctuation.terminator.d
  enum f(x, int t) = cast(x)t;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
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
//^^^^ keyword.declaration.enum.d
//     ^^^^ storage.type.d
//         ^ punctuation.section.brackets.begin.d
//          ^ punctuation.section.brackets.end.d
//            ^^^ entity.name.enum.d
//                ^ keyword.operator.assignment.d
//                  ^^ meta.number.integer.decimal.d
//                    ^ punctuation.terminator.d
  enum fool
//^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
//     ^^^^ entity.name.enum.d
  {
//^ meta.enum.d punctuation.section.block.begin.d
  }
//^ meta.enum.d punctuation.section.block.end.d
  enum uint a = 1, b = 2, exponentBits = 3;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
//     ^^^^ storage.type.d
//          ^ entity.name.enum.d
//            ^ keyword.operator.assignment.d
//              ^ meta.number.integer.decimal.d
//               ^ punctuation.separator.sequence.d
//                 ^ entity.name.enum.d
//                   ^ keyword.operator.assignment.d
//                     ^ meta.number.integer.decimal.d
//                      ^ punctuation.separator.sequence.d
//                        ^^^^^^^^^^^^ entity.name.enum.d
//                                     ^ keyword.operator.assignment.d
//                                       ^ meta.number.integer.decimal.d
//                                        ^ punctuation.terminator.d
  enum immutable(Char)[] seqBefore = "[";
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
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
//^^^^ keyword.declaration.enum.d
//     ^^^ entity.name.enum.d
//         ^ punctuation.separator.mapping.d
//           ^^^ meta.path.d storage.type.d
//              ^ punctuation.terminator.d
  enum ulong
//^^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
//     ^^^^^ storage.type.d
    a = 1 << 2,
  //^^^^^^^^^^^^ meta.enum.d
  //^ entity.name.enum.d
  //  ^ keyword.operator.assignment.d
  //    ^ meta.number.integer.decimal.d
  //      ^^ keyword.operator.bitwise.d
  //         ^ meta.number.integer.decimal.d
  //          ^ punctuation.separator.sequence.d
    b = 1 << 3;
  //^^^^^^^^^^^ meta.enum.d
  //^ entity.name.enum.d
  //  ^ keyword.operator.assignment.d
  //    ^ meta.number.integer.decimal.d
  //      ^^ keyword.operator.bitwise.d
  //         ^ meta.number.integer.decimal.d
  //          ^ punctuation.terminator.d
  enum foo
//^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d
//     ^^^ entity.name.enum.d
    bar = 2;
  //^^^^^^^^ meta.enum.d
  //^^^ entity.name.enum.d
  //    ^ keyword.operator.assignment.d
  //      ^ meta.number.integer.decimal.d
  //       ^ punctuation.terminator.d
  enum Attr;
//^^^^^^^^^^ meta.enum.d
//^^^^ keyword.declaration.enum.d

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
//        ^ meta.number.integer.decimal.d
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
//        ^ meta.number.integer.decimal.d
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
//   ^ meta.number.integer.decimal.d
//    ^ punctuation.terminator.d
  int foo = true;
  static if (12 + 5):
//^^^^^^ storage.modifier.d
//       ^^ keyword.control.conditional.d
//          ^ punctuation.section.parens.begin.d
//           ^^ meta.number.integer.decimal.d
//              ^ keyword.operator.arithmetic.d
//                ^ meta.number.integer.decimal.d
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
//           ^ meta.number.integer.decimal.d
//            ^ punctuation.section.parens.end.d
//              ^ punctuation.section.block.begin.d
  } else static if (1) {
//^ punctuation.section.block.end.d
//  ^^^^ keyword.control.conditional.d
//       ^^^^^^ storage.modifier.d
//              ^^ keyword.control.conditional.d
//                 ^ punctuation.section.parens.begin.d
//                  ^ meta.number.integer.decimal.d
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
  //                       ^^^ meta.number.integer.decimal.d
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
//              ^^ meta.number.integer.decimal.d
//                ^ punctuation.section.parens.end.d
//                 ^ punctuation.terminator.d
  static assert(12, "foobar");
//^^^^^^ keyword.other.assert.d
//       ^^^^^^ keyword.other.assert.d
//             ^ punctuation.section.parens.begin.d
//              ^^ meta.number.integer.decimal.d
//                ^ punctuation.separator.sequence.d
//                  ^^^^^^^^ string.quoted.double.d
//                          ^ punctuation.section.parens.end.d
//                           ^ punctuation.terminator.d

  int[string] foo() {}
//^^^ storage.type.d
//   ^^^^^^^^ meta.brackets.d
//   ^ punctuation.section.brackets.begin.d
//    ^^^^^^ support.type.builtin-alias.d
//          ^ punctuation.section.brackets.end.d
//            ^^^ meta.function.d entity.name.function.d
//               ^^ meta.function.parameters.d
//               ^ punctuation.section.group.begin.d
//                ^ punctuation.section.group.end.d
//                  ^^ meta.function.d meta.block.d
//                  ^ punctuation.section.block.begin.d
//                   ^ punctuation.section.block.end.d

  int boo() => 5;
//^^^^^^^^^^^^^^^ - meta.function meta.function
//^^^ storage.type.d
//    ^^^ meta.function.d entity.name.function.d
//       ^^ meta.function.parameters.d
//       ^ punctuation.section.group.begin.d
//        ^ punctuation.section.group.end.d
//          ^^ meta.function.d keyword.declaration.function.d
//             ^ meta.number.integer.decimal.d
//              ^ meta.function.d punctuation.terminator.d

  int par(T)() if(true) => 7;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
//^^^ storage.type.d
//    ^^^ meta.function.d entity.name.function.d
//       ^^^^^ meta.function.parameters.d
//       ^ punctuation.section.group.begin.d
//        ^ variable.parameter.d
//         ^ punctuation.section.group.end.d
//          ^ punctuation.section.group.begin.d
//           ^ punctuation.section.group.end.d
//             ^^^^^^^^^^^^^ meta.function.d
//             ^^ keyword.control.conditional.d
//               ^ punctuation.section.parens.begin.d
//                ^^^^ constant.language.d
//                    ^ punctuation.section.parens.end.d
//                      ^^ meta.function.d keyword.declaration.function.d
//                         ^ meta.number.integer.decimal.d
//                          ^ meta.function.d punctuation.terminator.d

  // shortened function with InContractExpression
  int par(int T) in(T) => 7;
//^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
//^^^ storage.type.d
//    ^^^ meta.function.d entity.name.function.d
//       ^^^^^^^ meta.function.parameters.d
//               ^^^^^^^^^^^ meta.function.d
//               ^^ keyword.control.conditional.d
//                 ^ punctuation.section.parens.begin.d
//                  ^ variable.other.d
//                   ^ punctuation.section.parens.end.d
//                     ^^ keyword.declaration.function.d
//                        ^ constant.numeric.value.d
//                         ^ punctuation.terminator.d

  // shortened function with OutContractExpression
  int par(int T) out(;) => 7;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
//^^^ storage.type.d
//    ^^^ meta.function.d entity.name.function.d
//       ^^^^^^^ meta.function.parameters.d
//               ^^^^^^^^^^^^ meta.function.d
//               ^^^ keyword.control.conditional.d
//                  ^ punctuation.section.parens.begin.d
//                   ^ punctuation.separator.sequence.d
//                    ^ punctuation.section.parens.end.d
//                      ^^ keyword.declaration.function.d
//                         ^ constant.numeric.value.d
//                          ^ punctuation.terminator.d

  // shortened function with OutContractExpression
  int par(int T) out(; arg) => 7;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
//^^^ storage.type.d
//    ^^^ meta.function.d entity.name.function.d
//       ^^^^^^^ meta.function.parameters.d
//               ^^^^^^^^^^^^^^^^ meta.function.d
//               ^^^ keyword.control.conditional.d
//                  ^ punctuation.section.parens.begin.d
//                   ^ punctuation.separator.sequence.d
//                     ^^^ variable.other.d
//                        ^ punctuation.section.parens.end.d
//                          ^^ keyword.declaration.function.d
//                             ^ constant.numeric.value.d
//                              ^ punctuation.terminator.d

  // No shortened function due to OutStatement `out(...)`
  int par(int T) out(T) => 7;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
//^^^ storage.type.d
//    ^^^ meta.function.d entity.name.function.d
//       ^^^^^^^ meta.function.parameters.d
//               ^^^^^^^^^ meta.function.d
//               ^^^ keyword.control.conditional.d
//                  ^ punctuation.section.parens.begin.d
//                   ^ variable.parameter.d
//                    ^ punctuation.section.parens.end.d
//                      ^^ invalid.illegal.d
//                         ^ constant.numeric.value.d
//                          ^ punctuation.terminator.d

  void bar();
//^^^^ storage.type.d
//     ^^^ meta.function.d entity.name.function.d
//        ^^ meta.function.parameters.d
//        ^ punctuation.section.group.begin.d
//         ^ punctuation.section.group.end.d
//          ^ meta.function.d punctuation.terminator.d
  int[] map(int[] array, ) {
//^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
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
// <- meta.function.d meta.block.d punctuation.section.block.end.d
  T[] map(T, void fn)(T[] array) {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
//^ storage.type.d
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
// <- meta.function.d meta.block.d punctuation.section.block.end.d
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
//             ^^^^^^ support.type.builtin-alias.d
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
//                         ^ meta.number.integer.decimal.d
//                          ^ punctuation.separator.sequence.d
//                            ^ meta.number.integer.decimal.d
//                             ^ punctuation.separator.sequence.d
//                               ^ meta.number.integer.decimal.d
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
//      ^^^^^^ support.type.builtin-alias.d
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
//                  ^^^^^^ support.type.builtin-alias.d
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
  //    ^ meta.number.integer.decimal.d
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
//^^^^^^^^^^^^^^^ - meta.function meta.function
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
//^^^^^^^^^^^^^^^^^ - meta.function meta.function
//^^^^^ meta.function.d entity.name.function.destructor.d
//     ^^ meta.function.parameters.d
//     ^ punctuation.section.group.begin.d
//      ^ punctuation.section.group.end.d
//        ^^^^^^^^^ meta.function.d
//        ^^^^^^^^ storage.modifier.d
//                ^ punctuation.terminator.d
  this(this) {}
//^^^^^^^^^^^^^ meta.function - meta.function meta.function
//^^^^ entity.name.function.post-blit.d
//    ^^^^^^ meta.function.parameters.d
//    ^ punctuation.section.group.begin.d
//     ^^^^ variable.language.d
//         ^ punctuation.section.group.end.d
//           ^^ meta.block.d
//           ^ punctuation.section.block.begin.d
//            ^ punctuation.section.block.end.d
  this(1, 2, 3);
//^^^^^^^^^^^^^^ - meta.function meta.function
//^^^^ meta.function.d entity.name.function.constructor.d
//    ^^^^^^^^^ meta.function.parameters.d
//    ^ punctuation.section.group.begin.d
//     ^ meta.number.integer.decimal.d
//      ^ punctuation.separator.sequence.d
//        ^ meta.number.integer.decimal.d
//         ^ punctuation.separator.sequence.d
//           ^ meta.number.integer.decimal.d
//            ^ punctuation.section.group.end.d
//             ^ meta.function.d punctuation.terminator.d
  this(T)(T foo);
//^^^^^^^^^^^^^^^ - meta.function meta.function
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
//^^^^^^^^^^^^^^^^^^^^^ - meta.function meta.function
//^^^^ meta.function.d entity.name.function.constructor.d
//    ^^^^^^^^^^^^^^ meta.function.parameters.d
//    ^ punctuation.section.group.begin.d
//     ^^ storage.modifier.d
//        ^^^ storage.modifier.d
//            ^^^ storage.type.d
//                ^ variable.parameter.d
//                 ^ punctuation.section.group.end.d
//                   ^^ meta.function.d meta.block.d
//                   ^ punctuation.section.block.begin.d
//                    ^ punctuation.section.block.end.d
  this(a...) {}
//^^^^ meta.function.d entity.name.function.constructor.d
//    ^^^^^^ meta.function.parameters.d
//    ^ punctuation.section.group.begin.d
//     ^ meta.path.d variable.other.d
//      ^^^ keyword.operator.variadic.d
//         ^ punctuation.section.group.end.d
//           ^^ meta.function.d meta.block.d
//           ^ punctuation.section.block.begin.d
//            ^ punctuation.section.block.end.d

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
//          ^ meta.number.integer.decimal.d
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
//^^^^^^^^ keyword.declaration.template.d
//         ^^^ entity.name.template.d
//            ^ punctuation.section.group.begin.d
//             ^ variable.parameter.d
//              ^ punctuation.separator.sequence.d
//                ^ variable.parameter.d
//                 ^ punctuation.section.group.end.d
//                   ^ punctuation.section.block.begin.d
    template a(size_t f) {
  //^^^^^^^^ keyword.declaration.template.d
  //         ^ entity.name.template.d
  //          ^ punctuation.section.group.begin.d
  //           ^^^^^^ support.type.builtin-alias.d
  //                  ^ variable.parameter.d
  //                   ^ punctuation.section.group.end.d
  //                     ^ punctuation.section.block.begin.d
    }
  //^ punctuation.section.block.end.d
  }
//^ punctuation.section.block.end.d
  template foo(T) if (is(T : class)) {}
//^^^^^^^^ keyword.declaration.template.d
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
//                           ^^^^^ keyword.declaration.d
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
//      ^^^^^^^^ keyword.declaration.template.d
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
//      ^^^^^^^^^^^ meta.function-call.template.d
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
  is(mixin("int") == int);
//^^ keyword.other.d
//  ^ punctuation.section.parens.begin.d
//   ^^^^^ keyword.control.d
//        ^ punctuation.section.parens.begin.d
//         ^ meta.string.d string.quoted.double.d punctuation.definition.string.begin.d
//          ^^^^ meta.string.d string.quoted.double.d
//              ^ punctuation.section.parens.end.d
//                ^^ keyword.operator.comparison.d
//                   ^^^ meta.path.d storage.type.d
//                      ^ punctuation.section.parens.end.d
//                       ^ punctuation.terminator.d

  mixin("int") foo() {}
//^^^^^ keyword.control.d
//     ^ punctuation.section.parens.begin.d
//      ^ meta.string.d string.quoted.double.d punctuation.definition.string.begin.d
//       ^^^^ meta.string.d string.quoted.double.d
//           ^ punctuation.section.parens.end.d
//             ^^^ meta.function.d entity.name.function.d
//                ^ meta.function.parameters.d punctuation.section.group.begin.d
//                 ^ meta.function.parameters.d punctuation.section.group.end.d
//                   ^ meta.function.d meta.block.d punctuation.section.block.begin.d
//                    ^ meta.function.d meta.block.d punctuation.section.block.end.d

  mixin("alias A", "= B;") foo() {};
//^^^^^ keyword.control.d
//     ^ punctuation.section.parens.begin.d
//      ^^^^^^^^^ meta.string.d string.quoted.double.d
//               ^ punctuation.separator.sequence.d
//                 ^^^^^^ meta.string.d string.quoted.double.d
//                       ^ punctuation.section.parens.end.d
//                         ^^^ meta.function.d entity.name.function.d
//                            ^ meta.function.parameters.d punctuation.section.group.begin.d
//                             ^ meta.function.parameters.d punctuation.section.group.end.d
//                               ^ meta.function.d meta.block.d punctuation.section.block.begin.d
//                                ^ meta.function.d meta.block.d punctuation.section.block.end.d
//                                 ^ punctuation.terminator.d

  function mixin("alias A", "= B;") () {};
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.d
//                                  ^^ meta.function.parameters.d
//                                     ^^ meta.function.d meta.block.d
//         ^^^^^ keyword.control.d
//              ^ punctuation.section.parens.begin.d
//               ^^^^^^^^^ meta.string.d string.quoted.double.d
//                        ^ punctuation.separator.sequence.d
//                          ^^^^^^ meta.string.d string.quoted.double.d
//                                ^ punctuation.section.parens.end.d
//                                  ^ punctuation.section.group.begin.d
//                                   ^ punctuation.section.group.end.d
//                                     ^ punctuation.section.block.begin.d
//                                      ^ punctuation.section.block.end.d
//                                       ^ punctuation.terminator.d

  foo:
//^^^ entity.name.label.d
//   ^ punctuation.separator.d

  if (2) {
//^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^ meta.number.integer.decimal.d
//     ^ punctuation.section.parens.end.d
//       ^ punctuation.section.block.begin.d
  }
//^ punctuation.section.block.end.d
  if (1) {} else {}
//^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^ meta.number.integer.decimal.d
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
//    ^ meta.number.integer.decimal.d
//     ^ punctuation.section.parens.end.d
//       ^ punctuation.section.block.begin.d
//        ^ punctuation.section.block.end.d
//          ^^^^ keyword.control.conditional.d
//               ^ meta.number.integer.decimal.d
  if (int a = 2) {}
//^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^^^ storage.type.d
//        ^ variable.other.d
//          ^ keyword.operator.assignment.d
//            ^ meta.number.integer.decimal.d constant.numeric.value.d
//             ^ punctuation.section.parens.end.d
//               ^^ meta.block.d
//               ^ punctuation.section.block.begin.d
//                ^ punctuation.section.block.end.d

  if (a in b) {}
//^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^ variable.other.d
//      ^^ keyword.operator.comparison.d
//         ^ variable.other.d
//          ^ punctuation.section.parens.end.d
//            ^^ meta.block.d
//            ^ punctuation.section.block.begin.d
//             ^ punctuation.section.block.end.d

  if (a !in b) {}
//^^ keyword.control.conditional.d
//   ^ punctuation.section.parens.begin.d
//    ^ variable.other.d
//       ^^ keyword.operator.comparison.d
//          ^ variable.other.d
//           ^ punctuation.section.parens.end.d
//             ^^ meta.block.d
//             ^ punctuation.section.block.begin.d
//              ^ punctuation.section.block.end.d

  while (2) 1;
//^^^^^ keyword.control.loop.d
//      ^ punctuation.section.parens.begin.d
//       ^ meta.number.integer.decimal.d
//        ^ punctuation.section.parens.end.d
//          ^ meta.number.integer.decimal.d
  while (2)
//^^^^^ keyword.control.loop.d
//      ^ punctuation.section.parens.begin.d
//       ^ meta.number.integer.decimal.d
//        ^ punctuation.section.parens.end.d
  {
//^ punctuation.section.block.begin.d
    do 2;
  //^^ keyword.control.loop.d
  //   ^ meta.number.integer.decimal.d
    while (3);
  //^^^^^ keyword.control.loop.d
  //      ^ punctuation.section.parens.begin.d
  //       ^ meta.number.integer.decimal.d
  //        ^ punctuation.section.parens.end.d
    do
  //^^ keyword.control.loop.d
    {
  //^ punctuation.section.block.begin.d
    } while (1);
  //^ punctuation.section.block.end.d
  //  ^^^^^ keyword.control.loop.d
  //        ^ punctuation.section.parens.begin.d
  //         ^ meta.number.integer.decimal.d
  //          ^ punctuation.section.parens.end.d
  }
//^ punctuation.section.block.end.d
  while (int a = 2) a;
//^^^^^ keyword.control.loop.d
//      ^ punctuation.section.parens.begin.d
//       ^^^ storage.type.d
//           ^ variable.other.d
//             ^ keyword.operator.assignment.d
//               ^ meta.number.integer.decimal.d constant.numeric.value.d
//                ^ punctuation.section.parens.end.d
//                  ^ meta.path.d variable.other.d
//                   ^ punctuation.terminator.d
  for (1; 2; 3) {
//^^^ keyword.control.loop.d
//    ^ punctuation.section.parens.begin.d
//     ^ meta.number.integer.decimal.d
//      ^ punctuation.terminator.d
//        ^ meta.number.integer.decimal.d
//         ^ punctuation.terminator.d
//           ^ meta.number.integer.decimal.d
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
//           ^^ meta.number.integer.decimal.d
//             ^ punctuation.section.parens.end.d
//               ^ punctuation.section.block.begin.d
  }
  for (size_t i; !val.empty; val.popFront(), ++i) {}
//^^^ keyword.control.loop.d
//    ^ punctuation.section.parens.begin.d
//     ^^^^^^ support.type.builtin-alias.d
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
//                       ^ meta.number.integer.decimal.d
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
//                ^ meta.number.integer.decimal.d
//                 ^^ keyword.operator.slice.d
//                   ^ meta.number.integer.decimal.d
//                    ^ punctuation.section.parens.end.d
//                      ^ punctuation.section.block.begin.d
    foreach_reverse (int a; 2) {
  //^^^^^^^^^^^^^^^ keyword.control.loop.d
  //                ^ punctuation.section.parens.begin.d
  //                 ^^^ storage.type.d
  //                     ^ variable.parameter.d
  //                      ^ punctuation.separator.sequence.d
  //                        ^ meta.number.integer.decimal.d
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
//       ^ meta.number.integer.decimal.d
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
//          ^ meta.number.integer.decimal.d
//           ^ punctuation.terminator.d

  with (2) {}
//^^^^ keyword.other.with.d
//     ^ punctuation.section.parens.begin.d
//      ^ meta.number.integer.decimal.d
//       ^ punctuation.section.parens.end.d
//         ^ punctuation.section.block.begin.d
//          ^ punctuation.section.block.end.d
  with (2) 3;
//^^^^ keyword.other.with.d
//     ^ punctuation.section.parens.begin.d
//      ^ meta.number.integer.decimal.d
//       ^ punctuation.section.parens.end.d
//         ^ meta.number.integer.decimal.d

  synchronized (3) {}
//^^^^^^^^^^^^ keyword.other.synchronized.d
//             ^ punctuation.section.parens.begin.d
//              ^ meta.number.integer.decimal.d
//               ^ punctuation.section.parens.end.d
//                 ^ punctuation.section.block.begin.d
//                  ^ punctuation.section.block.end.d
  synchronized(3);
//^^^^^^^^^^^^ keyword.other.synchronized.d
//            ^ punctuation.section.parens.begin.d
//             ^ meta.number.integer.decimal.d
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
//      ^ meta.number.integer.decimal.d

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
//               ^ meta.number.integer.decimal.d

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
//           ^^ meta.number.integer.decimal.d
//             ^ punctuation.separator.sequence.d
//               ^^^^^ string.quoted.double.d
//                    ^ punctuation.section.parens.end.d
//                      ^^^^^^ support.type.builtin-alias.d
//                            ^^^^ meta.brackets.d
//                            ^ punctuation.section.brackets.begin.d
//                             ^^ meta.number.integer.decimal.d
//                               ^ punctuation.section.brackets.end.d
//                                ^ punctuation.section.parens.begin.d
//                                 ^^^^^ string.quoted.double.d
//                                      ^ punctuation.separator.sequence.d
//                                        ^^^^^ string.quoted.double.d
//                                             ^ punctuation.section.parens.end.d
//                                              ^ punctuation.section.brackets.begin.d
//                                               ^^ meta.number.integer.decimal.d
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
//    ^ meta.number.integer.decimal.d
//     ^ punctuation.separator.sequence.d
//       ^ meta.number.integer.decimal.d
//        ^ punctuation.separator.sequence.d
//          ^ meta.number.integer.decimal.d
//           ^ punctuation.section.parens.end.d
//             ^^^^^^ support.type.builtin-alias.d
//                   ^^^^ meta.brackets.d
//                   ^ punctuation.section.brackets.begin.d
//                    ^^ meta.number.integer.decimal.d
//                      ^ punctuation.section.brackets.end.d
//                       ^ punctuation.terminator.d
  auto c = new class (12) T, Bar {
//^^^^ storage.modifier.d
//     ^ variable.other.d
//       ^ keyword.operator.assignment.d
//         ^^^ keyword.operator.word.d
//             ^^^^^^^^^^^^^^^^^^^^ meta.class.d
//             ^^^^^ keyword.declaration.class.d
//                   ^ punctuation.section.parens.begin.d
//                    ^^ meta.number.integer.decimal.d
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
    //             ^ meta.number.integer.decimal.d
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
//              ^^ meta.number.integer.decimal.d
//                 ^^ keyword.operator.arithmetic.d
//                    ^ meta.number.integer.decimal.d
//                     ^ punctuation.section.group.end.d
//                       ^ keyword.operator.arithmetic.d
//                         ^ meta.number.integer.decimal.d
//                           ^ keyword.operator.arithmetic.d
//                             ^ punctuation.section.group.begin.d
//                              ^ meta.number.integer.decimal.d
//                               ^^ keyword.operator.arithmetic.d
//                                  ^ keyword.operator.arithmetic.d
//                                    ^^ keyword.operator.arithmetic.d
//                                      ^ meta.number.integer.decimal.d
//                                       ^ punctuation.section.group.end.d
//                                         ^ keyword.operator.concatenation.d
//                                           ^^^^^ string.quoted.double.d
//                                                ^ punctuation.terminator.d

  foo* bar = foo* bar;
//^^^ storage.type.d
//   ^ keyword.operator.pointer.d
//     ^^^ variable.other.d
//         ^ keyword.operator.assignment.d
//           ^^^ variable.other.d
//              ^ keyword.operator.arithmetic.d
//                ^^^ variable.other.d
//                   ^ punctuation.terminator.d

  foo bar = (baz *var[foo* bar]);
//^^^ storage.type.d
//    ^^^ variable.other.d
//        ^ keyword.operator.assignment.d
//          ^ punctuation.section.group.begin.d
//           ^^^ variable.other.d
//               ^ keyword.operator.arithmetic.d
//                ^^^ variable.other.d
//                   ^^^^^^^^^^ meta.brackets.d
//                   ^ punctuation.section.brackets.begin.d
//                    ^^^ variable.other.d
//                       ^ keyword.operator.arithmetic.d
//                         ^^^ variable.other.d
//                            ^ punctuation.section.brackets.end.d
//                             ^ punctuation.section.group.end.d
//                              ^ punctuation.terminator.d

  auto f = foo ? 12 : 15;
//^^^^ storage.modifier.d
//     ^ variable.other.d
//       ^ keyword.operator.assignment.d
//         ^^^ meta.path.d variable.other.d
//             ^ keyword.operator.ternary.d
//               ^^ meta.number.integer.decimal.d
//                  ^ keyword.operator.ternary.d
//                    ^^ meta.number.integer.decimal.d
//                      ^ punctuation.terminator.d

  int a = b ? c : d;
//^^^ storage.type.d
//    ^ variable.other.d
//      ^ keyword.operator.assignment.d
//        ^ meta.path.d variable.other.d
//          ^ keyword.operator.ternary.d
//            ^ meta.path.d variable.other.d
//              ^ keyword.operator.ternary.d
//                ^ meta.path.d variable.other.d
//                 ^ punctuation.terminator.d

  int a=b?c:d;
//^^^ storage.type.d
//    ^ variable.other.d
//     ^ keyword.operator.assignment.d
//      ^ meta.path.d variable.other.d
//       ^ keyword.operator.ternary.d
//        ^ meta.path.d variable.other.d
//         ^ keyword.operator.ternary.d
//          ^ meta.path.d variable.other.d
//           ^ punctuation.terminator.d

  int a = c ? x ? r1 : r2 : y ? r3 : r4;
//^^^ storage.type.d
//    ^ variable.other.d
//      ^ keyword.operator.assignment.d
//        ^ variable.other.d
//          ^ keyword.operator.ternary.d
//            ^ variable.other.d
//              ^ keyword.operator.ternary.d
//                ^^ variable.other.d
//                   ^ keyword.operator.ternary.d
//                     ^^ variable.other.d
//                        ^ keyword.operator.ternary.d
//                          ^ variable.other.d
//                            ^ keyword.operator.ternary.d
//                              ^^ variable.other.d
//                                 ^ keyword.operator.ternary.d
//                                   ^^ variable.other.d
//                                     ^ punctuation.terminator.d

    int x = a ? b - c : d;
//  ^^^ meta.path.d storage.type.d
//      ^ variable.other.d
//        ^ keyword.operator.assignment.d
//          ^ meta.path.d variable.other.d
//            ^ keyword.operator.ternary.d
//              ^ meta.path.d variable.other.d
//                ^ keyword.operator.arithmetic.d
//                  ^ meta.path.d variable.other.d
//                    ^ keyword.operator.ternary.d
//                      ^ meta.path.d variable.other.d
//                       ^ punctuation.terminator.d

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
//        ^ meta.number.integer.decimal.d
//         ^ punctuation.separator.sequence.d
//           ^ variable.other.d
//             ^ keyword.operator.assignment.d
//               ^ meta.number.integer.decimal.d
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
//^^^^^^ support.type.builtin-alias.d
//      ^ punctuation.section.brackets.begin.d
//       ^ punctuation.section.brackets.end.d
//         ^ variable.other.d
//           ^ keyword.operator.assignment.d
//             ^ punctuation.section.brackets.begin.d
    1: 2,
  //^ meta.number.integer.decimal.d
  // ^ punctuation.separator.key-value.d
  //   ^ meta.number.integer.decimal.d
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
//        ^ meta.number.integer.decimal.d
//          ^ keyword.operator.arithmetic.d
//            ^ meta.number.integer.decimal.d
//             ^ punctuation.section.parens.end.d
  {
//^ punctuation.section.block.begin.d
    case 2 ^^ 2:
  //^^^^ keyword.control.flow.d
  //     ^ meta.number.integer.decimal.d
  //       ^^ keyword.operator.arithmetic.d
  //          ^ meta.number.integer.decimal.d
  //           ^ punctuation.separator.case-statement.d
    case foo:
  //^^^^ keyword.control.flow.d
  //     ^^^ meta.path.d variable.other.d
  //        ^ punctuation.separator.case-statement.d
      baz();
  //  ^^^^^ meta.block.d meta.function-call.d
  //       ^ punctuation.terminator.d
    case foo, bar:
  //^^^^ keyword.control.flow.d
  //     ^^^ meta.path.d variable.other.d
  //        ^ punctuation.separator.sequence.d
  //          ^^^ meta.path.d variable.other.d
  //             ^ punctuation.separator.case-statement.d
      baz();
  //  ^^^^^ meta.block.d meta.function-call.d
  //       ^ punctuation.terminator.d
    case 2, "foo":
  //^^^^ keyword.control.flow.d
  //     ^ meta.number.integer.decimal.d
  //      ^ punctuation.separator.sequence.d
  //        ^ meta.string.d string.quoted.double.d punctuation.definition.string.begin.d
  //         ^^^^ meta.string.d string.quoted.double.d
  //             ^ punctuation.separator.case-statement.d
  //^^^^^^^^^^^^^^ meta.block.d
    case 2: .. case 4:
  //^^^^ keyword.control.flow.d
  //     ^ meta.number.integer.decimal.d
  //      ^ punctuation.separator.case-statement.d
  //        ^^ keyword.operator.d
  //           ^^^^ keyword.control.flow.d
  //                ^ meta.number.integer.decimal.d
  //                 ^ punctuation.separator.case-statement.d
    case NO_KEY:
  //^^^^ keyword.control.flow.d
  //     ^^^^^^ meta.path.d variable.other.d
  //           ^ punctuation.separator.case-statement.d
      if (foo) {
  //  ^^ keyword.control.conditional.d
      }
      break;
  //  ^^^^^ keyword.control.flow.d
  //       ^ punctuation.terminator.d
    case no_key: .. case NO_KEY:
  //^^^^ keyword.control.flow.d
  //     ^^^^^^ meta.path.d variable.other.d
  //           ^ punctuation.separator.case-statement.d
  //             ^^ keyword.operator.d
  //                ^^^^ keyword.control.flow.d
  //                     ^^^^^^ meta.path.d variable.other.d
  //                           ^ punctuation.separator.case-statement.d
      if (foo) {
  //  ^^ keyword.control.conditional.d
      }
      break;
  //  ^^^^^ keyword.control.flow.d
  //       ^ punctuation.terminator.d
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
//            ^^^^^ keyword.declaration.d
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
//         ^^^^^ keyword.declaration.d
//              ^ punctuation.section.parens.end.d
//               ^ punctuation.terminator.d

  typeof(2) a(typeof('f') b);
//^^^^^^ keyword.other.d
//      ^ punctuation.section.parens.begin.d
//       ^ meta.number.integer.decimal.d
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
//            ^^ keyword.declaration.function.anonymous.d
//               ^ meta.number.integer.decimal.d
//                ^ punctuation.terminator.d
  (a => 2);
//^ punctuation.section.group.begin.d
// ^^^^^^ meta.function.d
// ^ variable.parameter.d
//   ^^ keyword.declaration.function.anonymous.d
//      ^ meta.number.integer.decimal.d
//       ^ punctuation.section.group.end.d
//        ^ punctuation.terminator.d
  (foo) @trusted => foo(3);
//^ punctuation.section.group.begin.d
// ^^^ variable.other.d
//    ^ punctuation.section.group.end.d
//      ^^^^^^^^^^^^^^^^^^ meta.function.d
//      ^^^^^^^^ storage.modifier.d
//               ^^ keyword.declaration.function.anonymous.d
//                  ^^^^^^ meta.function-call.d
//                  ^^^ variable.function.d
//                     ^ punctuation.section.parens.begin.d
//                      ^ meta.number.integer.decimal.d
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
//                ^^^^^^ support.type.builtin-alias.d
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
//         ^^^^^^ support.type.builtin-alias.d
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
//         ^^^ invalid.illegal.d
//            ^ punctuation.separator.sequence.d
//              ^ meta.path.d variable.other.d
//               ^ invalid.illegal.d
//                ^ punctuation.terminator.d
  values ~= toValue(__traits(getMember, this, primaryKey));
//^^^^^^ meta.path.d variable.other.d
//       ^^ keyword.operator.assignment.d
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.d
//          ^^^^^^^ variable.function.d
//                 ^ punctuation.section.parens.begin.d
//                  ^^^^^^^^ keyword.other.d
//                          ^ punctuation.section.parens.begin.d
//                           ^^^^^^^^^ constant.other.d
//                                    ^ punctuation.separator.sequence.d
//                                      ^^^^ variable.language.d
//                                          ^ punctuation.separator.sequence.d
//                                            ^^^^^^^^^^ meta.path.d variable.other.d
//                                                      ^^ punctuation.section.parens.end.d
//                                                        ^ punctuation.terminator.d

  3 != 3 && "s" !in [2];
//^ meta.number.integer.decimal.d
//  ^^ keyword.operator.comparison.d
//     ^ meta.number.integer.decimal.d
//       ^^ keyword.operator.logical.d
//          ^^^ string.quoted.double.d
//              ^^^ keyword.operator.comparison.d
//                  ^ punctuation.section.brackets.begin.d
//                   ^ meta.number.integer.decimal.d
//                    ^ punctuation.section.brackets.end.d
//                     ^ punctuation.terminator.d
  j ^^= 11;
//^ variable.other.d
//  ^^^ keyword.operator.assignment.d
//      ^^ meta.number.integer.decimal.d
//        ^ punctuation.terminator.d
  k ^^ 11 == j;
//^ variable.other.d
//  ^^ keyword.operator.arithmetic.d
//     ^^ meta.number.integer.decimal.d
//        ^^ keyword.operator.comparison.d
//           ^ variable.other.d
//            ^ punctuation.terminator.d
  x *= 12345;
//^ variable.other.d
//  ^^ keyword.operator.assignment.d
//     ^^^^^ meta.number.integer.decimal.d
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
//     ^ meta.number.integer.decimal.d
//      ^ punctuation.terminator.d

  .AliasSeq!(immutable char, int);
//^ punctuation.accessor.dot.d
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.template.d
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
//     ^^^^^^^^ meta.function-call.template.d
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
//                                              ^^^^^^^^^^^^^^^ meta.function-call.template.d
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
//                             ^^^^ meta.number.integer.decimal.d
//                                  ^ keyword.operator.arithmetic.d
//                                    ^ meta.number.integer.decimal.d
//                                     ^ punctuation.section.parens.end.d
//                                      ^ punctuation.terminator.d

  auto staticArray(size_t n, T)(scope T a) {}
//^^^^ storage.modifier.d
//     ^^^^^^^^^^^ meta.function.d entity.name.function.d
//                ^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.d
//                ^ punctuation.section.group.begin.d
//                 ^^^^^^ support.type.builtin-alias.d
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
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.template.d
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
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.template.d
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
//^^^^^ meta.function-call.template.d
//^^^ meta.path.d variable.function.d
//   ^ keyword.operator.d
//    ^ meta.number.integer.decimal.d
//      ^^^ variable.other.d
//         ^ punctuation.terminator.d

  void[int**]* foo;
//^^^^ storage.type.d
//    ^^^^^^^ meta.brackets.d
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
//    ^ meta.number.integer.decimal.d
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
// ^^^ meta.brackets.d
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
//                                      ^^ keyword.declaration.function.anonymous.d
//                                         ^^^^^^^ meta.path.d
//                                         ^^^^^ variable.other.d
//                                              ^ punctuation.accessor.dot.d
//                                               ^ variable.other.d

  pure Pair!int* makePair(int x) {}
//^^^^ storage.modifier.d
//     ^^^^^^^^ meta.function-call.template.d
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
//           ^ meta.number.integer.decimal.d
//            ^ punctuation.separator.sequence.d
//              ^ variable.other.d
//               ^ punctuation.separator.key-value.d
//                 ^^^^ meta.string.d string.quoted.double.d
//                     ^ punctuation.separator.sequence.d
    c: 5.sqrt(12) }.foo();
//  ^^^^^^^^^^^^^^^ meta.block.d
//  ^ variable.other.d
//   ^ punctuation.separator.key-value.d
//     ^ meta.number.integer.decimal.d
//      ^ meta.path.d punctuation.accessor.dot.d
//       ^^^^ meta.function-call.d meta.path.d variable.function.d
//           ^ meta.function-call.d punctuation.section.parens.begin.d
//            ^^ meta.function-call.d meta.number.integer.decimal.d
//              ^ meta.function-call.d punctuation.section.parens.end.d
//                ^ punctuation.section.block.end.d
//                 ^ meta.path.d punctuation.accessor.dot.d
//                  ^^^^^ meta.function-call.d
//                  ^^^ meta.path.d variable.function.d
//                     ^ punctuation.section.parens.begin.d
//                      ^ punctuation.section.parens.end.d
//                       ^ punctuation.terminator.d

    s = 5._method(12._);
//      ^ meta.number.integer.decimal.d
//       ^ meta.path.d punctuation.accessor.dot.d
//        ^^^^^^^ meta.function-call.d meta.path.d variable.function.d
//               ^ meta.function-call.d punctuation.section.parens.begin.d
//                ^^ meta.function-call.d meta.number.integer.decimal.d
//                  ^ meta.function-call.d meta.path.d punctuation.accessor.dot.d
//                   ^ meta.function-call.d meta.path.d variable.other.d
//                    ^ meta.function-call.d punctuation.section.parens.end.d
//                     ^ punctuation.terminator.d

    constant = true;
//  ^^^^^^^^ meta.path.d variable.other.d - storage
//           ^ keyword.operator.assignment.d
//             ^^^^ constant.language.d
//                 ^ punctuation.terminator.d

    myFn(x: 10, y: 20);
//  ^^^^^^^^^^^^^^^^^^ meta.function-call.d
//      ^ punctuation.section.parens.begin.d
//       ^ variable.parameter.d
//        ^ keyword.operator.assignment.d
//          ^^ constant.numeric.value.d
//            ^ punctuation.separator.sequence.d
//              ^ variable.parameter.d
//               ^ keyword.operator.assignment.d
//                 ^^ constant.numeric.value.d
//                   ^ punctuation.section.parens.end.d
