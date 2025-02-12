// SYNTAX TEST "Packages/C++/C.sublime-syntax" 

    // Comment
//  ^^^^^^^^^^ comment.line.double-slash.c 
//  ^^ punctuation.definition.comment.c 

    // My \
    Comment
//^^^^^^^^^ comment.line.double-slash.c 

    /* Foo Bar Baz*/
//  ^^^^^^^^^^^^^^^^ comment.block.c 
//  ^^ punctuation.definition.comment.c 
//                ^^ punctuation.definition.comment.c 

    */
//  ^^ invalid.illegal.stray-comment-end.c 

/////////////////////////////////////////////
// Numbers
/////////////////////////////////////////////

    1234567890
//  ^^^^^^^^^^ meta.number.integer.decimal.c constant.numeric.value.c 
    1'234'567'890
//  ^^^^^^^^^^^^^ meta.number.integer.decimal.c constant.numeric.value.c 

    0x123456789abcdef
//  ^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.c 
//  ^^ constant.numeric.base.c 
//    ^^^^^^^^^^^^^^^ constant.numeric.value.c 
    0x123'456'789'abc'def
//  ^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.c 
//  ^^ constant.numeric.base.c 
//    ^^^^^^^^^^^^^^^^^^^ constant.numeric.value.c 
    012345670
//  ^^^^^^^^^ meta.number.integer.octal.c 
//  ^ constant.numeric.base.c 
//   ^^^^^^^^ constant.numeric.value.c 
    012'345'670
//  ^^^^^^^^^^^ meta.number.integer.octal.c 
//  ^ constant.numeric.base.c 
//   ^^^^^^^^^^ constant.numeric.value.c 
    0b100110
//  ^^^^^^^^ meta.number.integer.binary.c 
//  ^^ constant.numeric.base.c 
//    ^^^^^^ constant.numeric.value.c 
    0b100'110
//  ^^^^^^^^^ meta.number.integer.binary.c 
//  ^^ constant.numeric.base.c 
//    ^^^^^^^ constant.numeric.value.c 

    314lUJ 314uLLj 314iLu 314llI 314F 314f
//  ^^^^^^ meta.number.integer.decimal.c 
//  ^^^ constant.numeric.value.c 
//     ^^^ constant.numeric.suffix.c 
//         ^^^^^^^ meta.number.integer.decimal.c 
//         ^^^ constant.numeric.value.c 
//            ^^^^ constant.numeric.suffix.c 
//                 ^^^^^^ meta.number.integer.decimal.c 
//                 ^^^ constant.numeric.value.c 
//                    ^^^ constant.numeric.suffix.c 
//                        ^^^^^^ meta.number.integer.decimal.c 
//                        ^^^ constant.numeric.value.c 
//                           ^^^ constant.numeric.suffix.c 
//                               ^^^^ meta.number.float.decimal.c 
//                               ^^^ constant.numeric.value.c 
//                                  ^ constant.numeric.suffix.c 
//                                    ^^^^ meta.number.float.decimal.c 
//                                    ^^^ constant.numeric.value.c 
//                                       ^ constant.numeric.suffix.c 
    3.14f 314.l 3.14L
//  ^^^^^ meta.number.float.decimal.c 
//  ^^^^ constant.numeric.value.c 
//   ^ punctuation.separator.decimal.c 
//      ^ constant.numeric.suffix.c 
//        ^^^^^ meta.number.float.decimal.c 
//        ^^^^ constant.numeric.value.c 
//           ^ punctuation.separator.decimal.c 
//            ^ constant.numeric.suffix.c 
//              ^^^^^ meta.number.float.decimal.c 
//              ^^^^ constant.numeric.value.c 
//               ^ punctuation.separator.decimal.c 
//                  ^ constant.numeric.suffix.c 
    314e15 3.14e-15
//  ^^^^^^ meta.number.float.decimal.c constant.numeric.value.c 
//         ^^^^^^^^ meta.number.float.decimal.c constant.numeric.value.c 
//          ^ punctuation.separator.decimal.c 
    0xdead.beefp+7f
//  ^^^^^^^^^^^^^^^ meta.number.float.hexadecimal.c 
//  ^^ constant.numeric.base.c 
//    ^^^^^^^^^^^^ constant.numeric.value.c 
//        ^ punctuation.separator.decimal.c 
//                ^ constant.numeric.suffix.c 
    012345670 0314llU
//  ^^^^^^^^^ meta.number.integer.octal.c 
//  ^ constant.numeric.base.c 
//   ^^^^^^^^ constant.numeric.value.c 
//            ^^^^^^^ meta.number.integer.octal.c 
//            ^ constant.numeric.base.c 
//             ^^^ constant.numeric.value.c 
//                ^^^ constant.numeric.suffix.c 
    0b10 0b10iLu
//  ^^^^ meta.number.integer.binary.c 
//  ^^ constant.numeric.base.c 
//    ^^ constant.numeric.value.c 
//       ^^^^^^^ meta.number.integer.binary.c 
//       ^^ constant.numeric.base.c 
//         ^^ constant.numeric.value.c 
//           ^^^ constant.numeric.suffix.c 

    0271828 0b10410 0xbag50 314a123
//  ^^^^^^^ meta.number.integer.octal.c 
//  ^ constant.numeric.base.c 
//   ^^^ constant.numeric.value.c 
//      ^^^ invalid.illegal.numeric.suffix.c 
//          ^^^^^^^ meta.number.integer.binary.c 
//          ^^ constant.numeric.base.c 
//            ^^ constant.numeric.value.c 
//              ^^^ invalid.illegal.numeric.suffix.c 
//                  ^^^^^^^ meta.number.integer.hexadecimal.c 
//                  ^^ constant.numeric.base.c 
//                    ^^ constant.numeric.value.c 
//                      ^^^ invalid.illegal.numeric.suffix.c 
//                          ^^^^^^^ meta.number.integer.decimal.c 
//                          ^^^ constant.numeric.value.c 
//                             ^^^^ invalid.illegal.numeric.suffix.c 
    314Ll 314lul 314iJ 314.ll 314.lf
//  ^^^^^ meta.number.integer.decimal.c 
//  ^^^ constant.numeric.value.c 
//     ^^ invalid.illegal.numeric.suffix.c 
//        ^^^^^^ meta.number.integer.decimal.c 
//        ^^^ constant.numeric.value.c 
//           ^^^ invalid.illegal.numeric.suffix.c 
//               ^^^^^ meta.number.integer.decimal.c 
//               ^^^ constant.numeric.value.c 
//                  ^^ invalid.illegal.numeric.suffix.c 
//                     ^^^^^^ meta.number.float.decimal.c 
//                     ^^^^ constant.numeric.value.c 
//                        ^ punctuation.separator.decimal.c 
//                         ^ constant.numeric.suffix.c 
//                          ^ invalid.illegal.numeric.suffix.c 
//                            ^^^^^^ meta.number.float.decimal.c 
//                            ^^^^ constant.numeric.value.c 
//                               ^ punctuation.separator.decimal.c 
//                                ^ constant.numeric.suffix.c 
//                                 ^ invalid.illegal.numeric.suffix.c 
    0x314.1p5af 0b10e20 314e+30llu
//  ^^^^^^^^^^^ meta.number.float.hexadecimal.c 
//  ^^ constant.numeric.base.c 
//    ^^^^^^^ constant.numeric.value.c 
//       ^ punctuation.separator.decimal.c 
//           ^^ invalid.illegal.numeric.suffix.c 
//              ^^^^^^^ meta.number.integer.binary.c 
//              ^^ constant.numeric.base.c 
//                ^^ constant.numeric.value.c 
//                  ^^^ invalid.illegal.numeric.suffix.c 
//                      ^^^^^^^^^^ meta.number.float.decimal.c 
//                      ^^^^^^^ constant.numeric.value.c 
//                             ^ constant.numeric.suffix.c 
//                              ^^ invalid.illegal.numeric.suffix.c 

/////////////////////////////////////////////
// Operators
/////////////////////////////////////////////

    1 + 2 - 3 * 4 / 5 % 6
//  ^ meta.number.integer.decimal.c constant.numeric.value.c 
//    ^ keyword.operator.arithmetic.c 
//      ^ meta.number.integer.decimal.c constant.numeric.value.c 
//        ^ keyword.operator.arithmetic.c 
//          ^ meta.number.integer.decimal.c constant.numeric.value.c 
//            ^ keyword.operator.arithmetic.c 
//              ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                ^ keyword.operator.arithmetic.c 
//                  ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                    ^ keyword.operator.arithmetic.c 
//                      ^ meta.number.integer.decimal.c constant.numeric.value.c 
    1 | 2 & 3 ^ 4 >> 5 << 6
//  ^ meta.number.integer.decimal.c constant.numeric.value.c 
//    ^ keyword.operator.bitwise.c 
//      ^ meta.number.integer.decimal.c constant.numeric.value.c 
//        ^ keyword.operator.bitwise.c 
//          ^ meta.number.integer.decimal.c constant.numeric.value.c 
//            ^ keyword.operator.bitwise.c 
//              ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                ^^ keyword.operator.bitwise.c 
//                   ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                     ^^ keyword.operator.bitwise.c 
//                        ^ meta.number.integer.decimal.c constant.numeric.value.c 
    1 > 2 >= 3 == 4 != 5 <= 6 < 7
//  ^ meta.number.integer.decimal.c constant.numeric.value.c 
//    ^ keyword.operator.comparison.c 
//      ^ meta.number.integer.decimal.c constant.numeric.value.c 
//        ^^ keyword.operator.comparison.c 
//           ^ meta.number.integer.decimal.c constant.numeric.value.c 
//             ^^ keyword.operator.assignment.c 
//                ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                  ^ keyword.operator.arithmetic.c 
//                   ^ keyword.operator.assignment.c 
//                     ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                       ^^ keyword.operator.comparison.c 
//                          ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                            ^ keyword.operator.comparison.c 
//                              ^ meta.number.integer.decimal.c constant.numeric.value.c 
    !1 ? -2 : ~3
//  ^ keyword.operator.arithmetic.c 
//   ^ meta.number.integer.decimal.c constant.numeric.value.c 
//     ^ keyword.operator.ternary.c 
//       ^ keyword.operator.arithmetic.c 
//        ^ meta.number.integer.decimal.c constant.numeric.value.c 
//          ^ keyword.operator.ternary.c 
//            ^ keyword.operator.bitwise.c 
//             ^ meta.number.integer.decimal.c constant.numeric.value.c 
    0 += 1 -= 2 *= 3 /= 4 %= 5 |= 6 &= 7 ^= 8 >>= 9 <<= 10
//  ^ meta.number.integer.decimal.c constant.numeric.value.c 
//    ^^ keyword.operator.assignment.augmented.c 
//       ^ meta.number.integer.decimal.c constant.numeric.value.c 
//         ^^ keyword.operator.assignment.augmented.c 
//            ^ meta.number.integer.decimal.c constant.numeric.value.c 
//              ^^ keyword.operator.assignment.augmented.c 
//                 ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                   ^^ keyword.operator.assignment.augmented.c 
//                      ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                        ^^ keyword.operator.assignment.augmented.c 
//                           ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                             ^^ keyword.operator.assignment.augmented.c 
//                                ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                                  ^^ keyword.operator.assignment.augmented.c 
//                                     ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                                       ^^ keyword.operator.assignment.augmented.c 
//                                          ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                                            ^^^ keyword.operator.assignment.augmented.c 
//                                                ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                                                  ^^^ keyword.operator.assignment.augmented.c 
//                                                      ^^ meta.number.integer.decimal.c constant.numeric.value.c 
    sizeof(a) alignof(b) _Alignof(c) offsetof(c) static_assert(d) _Static_assert(d)
//  ^^^^^^ keyword.operator.word.c 
//        ^^^ meta.group.c 
//        ^ punctuation.section.group.begin 
//          ^ punctuation.section.group.end 
//            ^^^^^^^ keyword.operator.word.c 
//                   ^^^ meta.group.c 
//                   ^ punctuation.section.group.begin 
//                     ^ punctuation.section.group.end 
//                       ^^^^^^^^ keyword.operator.word.c 
//                               ^^^ meta.group.c 
//                               ^ punctuation.section.group.begin 
//                                 ^ punctuation.section.group.end 
//                                   ^^^^^^^^ keyword.operator.word.c 
//                                           ^^^ meta.group.c 
//                                           ^ punctuation.section.group.begin 
//                                             ^ punctuation.section.group.end 
//                                               ^^^^^^^^^^^^^ keyword.operator.word.c 
//                                                            ^^^ meta.group.c 
//                                                            ^ punctuation.section.group.begin 
//                                                              ^ punctuation.section.group.end 
//                                                                ^^^^^^^^^^^^^^ keyword.operator.word.c 
//                                                                              ^^^ meta.group.c 
//                                                                              ^ punctuation.section.group.begin 
//                                                                                ^ punctuation.section.group.end 
    a,b = b.c;
//   ^ punctuation.separator.c 
//      ^ keyword.operator.assignment.c 
//         ^ punctuation.accessor.c 
//           ^ punctuation.terminator.c 

/////////////////////////////////////////////
// Strings
/////////////////////////////////////////////

    "abc123" L"abc123" u8"abc123" u"abc123" U"abc123" 'abc123' L'abc123'
//  ^^^^^^^^ string.quoted.double.c 
//  ^ punctuation.definition.string.begin.c 
//         ^ punctuation.definition.string.end.c 
//           ^^^^^^^^^ string.quoted.double.c 
//           ^ storage.type.string.c 
//            ^ punctuation.definition.string.begin.c 
//                   ^ punctuation.definition.string.end.c 
//                     ^^^^^^^^^^ string.quoted.double.c 
//                     ^^ storage.type.string.c 
//                       ^ punctuation.definition.string.begin.c 
//                              ^ punctuation.definition.string.end.c 
//                                ^^^^^^^^^ string.quoted.double.c 
//                                ^ storage.type.string.c 
//                                 ^ punctuation.definition.string.begin.c 
//                                        ^ punctuation.definition.string.end.c 
//                                          ^^^^^^^^^ string.quoted.double.c 
//                                          ^ storage.type.string.c 
//                                           ^ punctuation.definition.string.begin.c 
//                                                  ^ punctuation.definition.string.end.c 
//                                                    ^^^^^^^^ string.quoted.single.c 
//                                                    ^ punctuation.definition.string.begin.c 
//                                                           ^ punctuation.definition.string.end.c 
//                                                             ^^^^^^^^^ string.quoted.single.c 
//                                                             ^ storage.type.string.c 
//                                                              ^ punctuation.definition.string.begin.c 
//                                                                     ^ punctuation.definition.string.end.c 
    "\a\b\f\n\r\t\v\e\E\314\xabc\u3141\U15926535\\\"\'\?\0\7"
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.c 
//  ^ punctuation.definition.string.begin.c 
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape.c 
//                                                          ^ punctuation.definition.string.end.c 
    '\u\w\x\y\z\/'
//  ^^^^^^^^^^^^^^ string.quoted.single.c 
//  ^ punctuation.definition.string.begin.c 
//   ^^^^^^^^^^^^ invalid.illegal.unknown-escape.c 
//               ^ punctuation.definition.string.end.c 
    "%ms %as %*[, ]"
//  ^^^^^^^^^^^^^^^^ string.quoted.double.c 
//  ^ punctuation.definition.string.begin.c 
//   ^^^ constant.other.placeholder.c 
//       ^^^ constant.other.placeholder.c 
//           ^^^^^^ constant.other.placeholder.c 
//                 ^ punctuation.definition.string.end.c 
    "314 \
//  ^^^^^^ string.quoted.double.c 
//  ^ punctuation.definition.string.begin.c 
//       ^ punctuation.separator.continuation.c 
     159"
//^^^^^^^ string.quoted.double.c 
//      ^ punctuation.definition.string.end.c 

/////////////////////////////////////////////
// Constants
/////////////////////////////////////////////

    true TRUE false FALSE NULL __func__
//  ^^^^ constant.language.boolean.true.c 
//       ^^^^ constant.language.boolean.true.c 
//            ^^^^^ constant.language.boolean.false.c 
//                  ^^^^^ constant.language.boolean.false.c 
//                        ^^^^ constant.language.null.c 
//                             ^^^^^^^^ constant.language.c 
    __FILE__ __LINE__ __DATE__ __TIME__ __STDC__ __STDC_VERSION__ __GNUC__ __clang__ __cplusplus
//  ^^^^^^^^ support.constant.c 
//           ^^^^^^^^ support.constant.c 
//                    ^^^^^^^^ support.constant.c 
//                             ^^^^^^^^ support.constant.c 
//                                      ^^^^^^^^ support.constant.c 
//                                               ^^^^^^^^^^^^^^^^ support.constant.c 
//                                                                ^^^^^^^^ support.constant.c 
//                                                                         ^^^^^^^^^ support.constant.c 
//                                                                                   ^^^^^^^^^^^ support.constant.c 

    True False Null __CplusPlus
//  ^^^^ invalid.illegal.malformed-constant-language.c 
//       ^^^^^ invalid.illegal.malformed-constant-language.c 
//             ^^^^ invalid.illegal.malformed-constant-language.c 
//                  ^^^^^^^^^^^ invalid.illegal.malformed-constant-language.c 

/////////////////////////////////////////////
// Enclosings
/////////////////////////////////////////////

    [a, b, c]
//  ^^^^^^^^^ meta.brackets.square.c 
//  ^ punctuation.section.brackets.begin 
//    ^ punctuation.separator.c 
//       ^ punctuation.separator.c 
//          ^ punctuation.section.brackets.end 
    {1, 2, 3}
//  ^^^^^^^^^ meta.block.c 
//  ^ punctuation.section.block.begin 
//   ^ meta.number.integer.decimal.c constant.numeric.value.c 
//    ^ punctuation.separator.c 
//      ^ meta.number.integer.decimal.c constant.numeric.value.c 
//       ^ punctuation.separator.c 
//         ^ meta.number.integer.decimal.c constant.numeric.value.c 
//          ^ punctuation.section.block.end 
    (6 - 7 == -1 && true)
//  ^^^^^^^^^^^^^^^^^^^^^ meta.group.c 
//  ^ punctuation.section.group.begin 
//   ^ meta.number.integer.decimal.c constant.numeric.value.c 
//     ^ keyword.operator.arithmetic.c 
//       ^ meta.number.integer.decimal.c constant.numeric.value.c 
//         ^^ keyword.operator.assignment.c 
//            ^ keyword.operator.arithmetic.c 
//             ^ meta.number.integer.decimal.c constant.numeric.value.c 
//               ^^ keyword.operator.logical.c 
//                  ^^^^ constant.language.boolean.true.c 
//                      ^ punctuation.section.group.end 

/////////////////////////////////////////////
// Default Types
/////////////////////////////////////////////

    auto void char short int long float double signed unsigned _Complex _Imaginary _Bool
//  ^^^^ storage.type.c 
//       ^^^^ storage.type.c 
//            ^^^^ storage.type.c 
//                 ^^^^^ storage.type.c 
//                       ^^^ storage.type.c 
//                           ^^^^ storage.type.c 
//                                ^^^^^ storage.type.c 
//                                      ^^^^^^ storage.type.c 
//                                             ^^^^^^ storage.type.c 
//                                                    ^^^^^^^^ storage.type.c 
//                                                             ^^^^^^^^ storage.type.c 
//                                                                      ^^^^^^^^^^ storage.type.c 
//                                                                                 ^^^^^ storage.type.c 
    size_t ptrdiff_t nullptr_t max_align_t intmax_t uintmax_t intptr_t uintptr_t
//  ^^^^^^ support.type.stdint.c 
//         ^^^^^^^^^ support.type.stdint.c 
//                   ^^^^^^^^^ support.type.stdint.c 
//                             ^^^^^^^^^^^ support.type.stdint.c 
//                                         ^^^^^^^^ support.type.stdint.c 
//                                                  ^^^^^^^^^ support.type.stdint.c 
//                                                            ^^^^^^^^ support.type.stdint.c 
//                                                                     ^^^^^^^^^ support.type.stdint.c 
    uint8_t uint16_t uint32_t uint64_t int8_t int16_t int32_t int64_t
//  ^^^^^^^ support.type.stdint.c 
//          ^^^^^^^^ support.type.stdint.c 
//                   ^^^^^^^^ support.type.stdint.c 
//                            ^^^^^^^^ support.type.stdint.c 
//                                     ^^^^^^ support.type.stdint.c 
//                                            ^^^^^^^ support.type.stdint.c 
//                                                    ^^^^^^^ support.type.stdint.c 
//                                                            ^^^^^^^ support.type.stdint.c 
    uint_fast8_t uint_fast16_t uint_fast32_t uint_fast64_t int_fast8_t int_fast16_t int_fast32_t int_fast64_t
//  ^^^^^^^^^^^^ support.type.stdint.c 
//               ^^^^^^^^^^^^^ support.type.stdint.c 
//                             ^^^^^^^^^^^^^ support.type.stdint.c 
//                                           ^^^^^^^^^^^^^ support.type.stdint.c 
//                                                         ^^^^^^^^^^^ support.type.stdint.c 
//                                                                     ^^^^^^^^^^^^ support.type.stdint.c 
//                                                                                  ^^^^^^^^^^^^ support.type.stdint.c 
//                                                                                               ^^^^^^^^^^^^ support.type.stdint.c 
    uint_least8_t uint_least16_t uint_least32_t uint_least64_t int_least8_t int_least16_t int_least32_t int_least64_t
//  ^^^^^^^^^^^^^ support.type.stdint.c 
//                ^^^^^^^^^^^^^^ support.type.stdint.c 
//                               ^^^^^^^^^^^^^^ support.type.stdint.c 
//                                              ^^^^^^^^^^^^^^ support.type.stdint.c 
//                                                             ^^^^^^^^^^^^ support.type.stdint.c 
//                                                                          ^^^^^^^^^^^^^ support.type.stdint.c 
//                                                                                        ^^^^^^^^^^^^^ support.type.stdint.c 
//                                                                                                      ^^^^^^^^^^^^^ support.type.stdint.c 

    typeof(a) __typeof__(b) __typeof(c) typeof_unqual(d)
//  ^^^^^^ keyword.declaration.type.c 
//        ^^^ meta.group.c 
//        ^ punctuation.section.group.begin 
//          ^ punctuation.section.group.end 
//            ^^^^^^^^^^ keyword.declaration.type.c 
//                      ^^^ meta.group.c 
//                      ^ punctuation.section.group.begin 
//                        ^ punctuation.section.group.end 
//                          ^^^^^^^^ keyword.declaration.type.c 
//                                  ^^^ meta.group.c 
//                                  ^ punctuation.section.group.begin 
//                                    ^ punctuation.section.group.end 
//                                      ^^^^^^^^^^^^^ keyword.declaration.type.c 
//                                                   ^^^ meta.group.c 
//                                                   ^ punctuation.section.group.begin 
//                                                     ^ punctuation.section.group.end 

/////////////////////////////////////////////
// Storage Keywords
/////////////////////////////////////////////

    register static inline extern register thread_local _Thread_local _Noreturn noreturn
//  ^^^^^^^^ storage.modifier.c 
//           ^^^^^^ storage.modifier.c 
//                  ^^^^^^ storage.modifier.c 
//                         ^^^^^^ storage.modifier.c 
//                                ^^^^^^^^ storage.modifier.c 
//                                         ^^^^^^^^^^^^ storage.modifier.c 
//                                                      ^^^^^^^^^^^^^ storage.modifier.c 
//                                                                    ^^^^^^^^^ storage.modifier.c 
//                                                                              ^^^^^^^^ storage.modifier.c 
    const volatile restrict _Atomic _Alignas(4)
//  ^^^^^ storage.modifier.c 
//        ^^^^^^^^ storage.modifier.c 
//                 ^^^^^^^^ storage.modifier.c 
//                          ^^^^^^^ storage.modifier.c 
//                                  ^^^^^^^^ storage.modifier.c 
//                                          ^^^ meta.group.c 
//                                          ^ punctuation.section.group.begin 
//                                           ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                                            ^ punctuation.section.group.end 


/////////////////////////////////////////////
// Functions
/////////////////////////////////////////////

    test(5, 10, 15, 20);
//  ^^^^^^^^^^^^^^^^^^^ meta.group.c 
//  ^^^^ variable.function.c 
//      ^ punctuation.section.group.begin.c 
//       ^ meta.number.integer.decimal.c constant.numeric.value.c 
//        ^ punctuation.separator.c 
//          ^^ meta.number.integer.decimal.c constant.numeric.value.c 
//            ^ punctuation.separator.c 
//              ^^ meta.number.integer.decimal.c constant.numeric.value.c 
//                ^ punctuation.separator.c 
//                  ^^ meta.number.integer.decimal.c constant.numeric.value.c 
//                    ^ punctuation.section.group.end 
//                     ^ punctuation.terminator.c 
    int v = h(f(5) - g(6));
//  ^^^ storage.type.c 
//        ^ keyword.operator.assignment.c 
//          ^^^^^^^^^^^^^^ meta.group.c 
//          ^ variable.function.c 
//           ^ punctuation.section.group.begin.c 
//            ^^^^ meta.group.c 
//            ^ variable.function.c 
//             ^ punctuation.section.group.begin.c 
//              ^ meta.number.integer.decimal.c constant.numeric.value.c 
//               ^ punctuation.section.group.end 
//                 ^ keyword.operator.arithmetic.c 
//                   ^^^^ meta.group.c 
//                   ^ variable.function.c 
//                    ^ punctuation.section.group.begin.c 
//                     ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                      ^ punctuation.section.group.end 
//                       ^ punctuation.section.group.end 
//                        ^ punctuation.terminator.c 


    int main(int argc, char const* argv[]) {
//  ^^^ storage.type.c 
//      ^^^^ entity.name.function.c 
//          ^ punctuation.section.group.begin.c 
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c 
//           ^^^ storage.type.c 
//               ^^^^ variable.parameter.c 
//                   ^ punctuation.separator.c 
//                     ^^^^ storage.type.c 
//                          ^^^^^ storage.modifier.c 
//                               ^ keyword.operator.arithmetic.c 
//                                 ^^^^ variable.parameter.c 
//                                     ^^ meta.brackets.square.c 
//                                     ^ punctuation.section.brackets.begin 
//                                      ^ punctuation.section.brackets.end 
//                                       ^^^ meta.function.c 
//                                       ^ punctuation.section.group.end.c 
//                                         ^ meta.function.c meta.block.c punctuation.section.block.begin 
        int out = in("abcdefg");
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c 
//      ^^^ storage.type.c 
//              ^ keyword.operator.assignment.c 
//                ^^^^^^^^^^^^^ meta.group.c 
//                ^^ variable.function.c 
//                  ^ punctuation.section.group.begin.c 
//                   ^^^^^^^^^ string.quoted.double.c 
//                   ^ punctuation.definition.string.begin.c 
//                           ^ punctuation.definition.string.end.c 
//                            ^ punctuation.section.group.end 
//                             ^ punctuation.terminator.c 
    }
//^^^ meta.function.c meta.block.c 
//  ^ punctuation.section.block.end.c 

    int b = main(argc);
//  ^^^ storage.type.c 
//        ^ keyword.operator.assignment.c 
//          ^^^^^^^^^^ meta.group.c 
//          ^^^^ variable.function.c 
//              ^ punctuation.section.group.begin.c 
//                   ^ punctuation.section.group.end 
//                    ^ punctuation.terminator.c 

    static extern int*
//  ^^^^^^ storage.modifier.c 
//         ^^^^^^ storage.modifier.c 
//                ^^^ storage.type.c 
//                   ^ keyword.operator.c 
    test(
//  ^^^^ entity.name.function.c 
//      ^ punctuation.section.group.begin.c 
        const uint64_t a,
//^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c 
//      ^^^^^ storage.modifier.c 
//            ^^^^^^^^ support.type.stdint.c 
//                     ^ variable.parameter.c 
//                      ^ punctuation.separator.c 
        typeof(b) b
//^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c 
//      ^^^^^^ keyword.declaration.type.c 
//            ^^^ meta.group.c 
//            ^ punctuation.section.group.begin 
//              ^ punctuation.section.group.end 
//                ^ variable.parameter.c 
    );
//^^ meta.function.parameters.c meta.group.c 
//  ^^ meta.function.c 
//  ^ punctuation.section.group.end.c 

/////////////////////////////////////////////
// Control Flow
/////////////////////////////////////////////

    void fun(int const a[]) {
        while (true) {
//^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c 
//      ^^^^^ keyword.control.c 
//            ^^^^^^ meta.group.c 
//            ^ punctuation.section.group.begin 
//             ^^^^ constant.language.boolean.true.c 
//                 ^ punctuation.section.group.end 
//                   ^ meta.block.c punctuation.section.block.begin 
            do {
//^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c 
//          ^^ keyword.control.c 
//             ^ meta.block.c punctuation.section.block.begin 
                for (int i = 0; i < 12; ++i) {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c 
//              ^^^ keyword.control.c 
//                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.c 
//                  ^ punctuation.section.group.begin 
//                   ^^^ storage.type.c 
//                         ^ keyword.operator.assignment.c 
//                           ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                            ^ punctuation.terminator.c 
//                                ^ keyword.operator.comparison.c 
//                                  ^^ meta.number.integer.decimal.c constant.numeric.value.c 
//                                    ^ punctuation.terminator.c 
//                                      ^^ keyword.operator.arithmetic.c 
//                                         ^ punctuation.section.group.end 
//                                           ^ meta.block.c punctuation.section.block.begin 
                    switch (i)
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                  ^^^^^^ keyword.control.c 
//                         ^^^ meta.group.c 
//                         ^ punctuation.section.group.begin 
//                           ^ punctuation.section.group.end 
                    {
//^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                  ^ meta.block.c punctuation.section.block.begin 
                    case 0:
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                  ^^^^ keyword.control.c 
//                       ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                        ^ keyword.operator.ternary.c 
                        goto exit;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                      ^^^^ keyword.control.flow.goto.c 
//                               ^ punctuation.terminator.c 
                    case 1:
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                  ^^^^ keyword.control.c 
//                       ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                        ^ keyword.operator.ternary.c 
                    case 2 + 3:
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                  ^^^^ keyword.control.c 
//                       ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                         ^ keyword.operator.arithmetic.c 
//                           ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                            ^ keyword.operator.ternary.c 
                        if (a + b < i) {}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                      ^^ keyword.control.c 
//                         ^^^^^^^^^^^ meta.group.c 
//                         ^ punctuation.section.group.begin 
//                            ^ keyword.operator.arithmetic.c 
//                                ^ keyword.operator.comparison.c 
//                                   ^ punctuation.section.group.end 
//                                     ^^ meta.block.c 
//                                     ^ punctuation.section.block.begin 
//                                      ^ punctuation.section.block.end 
                        else if (b == -1) {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                      ^^^^ keyword.control.c 
//                           ^^ keyword.control.c 
//                              ^^^^^^^^^ meta.group.c 
//                              ^ punctuation.section.group.begin 
//                                 ^^ keyword.operator.assignment.c 
//                                    ^ keyword.operator.arithmetic.c 
//                                     ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                                      ^ punctuation.section.group.end 
//                                        ^ meta.block.c punctuation.section.block.begin 
                            continue;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                          ^^^^^^^^ keyword.control.flow.continue.c 
//                                  ^ punctuation.terminator.c 
                        }
//^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                      ^ punctuation.section.block.end 
                        break;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                      ^^^^^ keyword.control.flow.break.c 
//                           ^ punctuation.terminator.c 
                    default:
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                  ^^^^^^^ keyword.control.c 
//                         ^ keyword.operator.ternary.c 
                        continue;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                      ^^^^^^^^ keyword.control.flow.continue.c 
//                              ^ punctuation.terminator.c 
                    }
//^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c meta.block.c 
//                  ^ punctuation.section.block.end 
                }
//^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c meta.block.c meta.block.c 
//              ^ punctuation.section.block.end 
            } while (a > b);
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c meta.block.c 
//^^^^^^^^^^^ meta.block.c 
//          ^ punctuation.section.block.end 
//            ^^^^^ keyword.control.c 
//                  ^^^^^^^ meta.group.c 
//                  ^ punctuation.section.group.begin 
//                     ^ keyword.operator.comparison.c 
//                        ^ punctuation.section.group.end 
//                         ^ punctuation.terminator.c 
        }
//^^^^^^^ meta.function.c meta.block.c meta.block.c 
//      ^ punctuation.section.block.end 

    exit:
//^^^^^^^ meta.function.c meta.block.c 
//  ^^^^ entity.name.label.c 
//      ^ punctuation.separator.c 
        return;
//^^^^^^^^^^^^^ meta.function.c meta.block.c 
//      ^^^^^^ keyword.control.flow.return.c 
//            ^ punctuation.terminator.c 
    }
//^^^ meta.function.c meta.block.c 
//  ^ punctuation.section.block.end.c 

/////////////////////////////////////////////
// Data Structures
/////////////////////////////////////////////

    struct A; enum B; union C;
//  ^^^^^^^^ meta.struct.c 
//  ^^^^^^ keyword.declaration.struct.c 
//         ^ entity.name.enum.forward-decl.c 
//          ^ punctuation.terminator.c 
//            ^^^^^^ meta.enum.c 
//            ^^^^ keyword.declaration.enum.c 
//                 ^ entity.name.enum.forward-decl.c 
//                  ^ punctuation.terminator.c 
//                    ^^^^^^^ meta.union.c 
//                    ^^^^^ keyword.declaration.union.c 
//                          ^ entity.name.enum.forward-decl.c 
//                           ^ punctuation.terminator.c 

    enum B
//  ^^^^^^ meta.enum.c 
//  ^^^^ keyword.declaration.enum.c 
//       ^ entity.name.enum.c 
    {
//  ^ meta.enum.c punctuation.section.block.begin.c 
        kTest1,
//^^^^^^^^^^^^^ meta.block.c 
//      ^^^^^^ entity.name.constant.c 
//            ^ punctuation.separator.c 
        kTest2 = kTest1 + 1,
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c 
//      ^^^^^^ entity.name.constant.c 
//             ^ keyword.operator.assignment.c 
//               ^^^^^^ constant.other.variable.mac-classic.c 
//                      ^ keyword.operator.arithmetic.c 
//                        ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                         ^ punctuation.separator.c 
        kTest3,  
//^^^^^^^^^^^^^^^ meta.block.c 
//      ^^^^^^ entity.name.constant.c 
//            ^ punctuation.separator.c 
    }myEnum;
//^^ meta.block.c 
//  ^ punctuation.section.block.end.c 
//         ^ punctuation.terminator.c 

    const volatile struct A
//  ^^^^^ storage.modifier.c 
//        ^^^^^^^^ storage.modifier.c 
//                 ^^^^^^^^ meta.struct.c 
//                 ^^^^^^ keyword.declaration.struct.c 
//                        ^ entity.name.struct.c 
    {
//  ^ meta.block.c meta.struct.c punctuation.section.block.begin.c 
        int a1;
//^^^^^^^^^^^^^ meta.block.c 
//      ^^^ storage.type.c 
//            ^ punctuation.terminator.c 
        char a3[12];
//^^^^^^^^^^^^^^^^^^ meta.block.c 
//      ^^^^ storage.type.c 
//             ^^^^ meta.brackets.square.c 
//             ^ punctuation.section.brackets.begin 
//              ^^ meta.number.integer.decimal.c constant.numeric.value.c 
//                ^ punctuation.section.brackets.end 
//                 ^ punctuation.terminator.c 
        void* h5;
//^^^^^^^^^^^^^^^ meta.block.c 
//      ^^^^ storage.type.c 
//          ^ keyword.operator.arithmetic.c 
//              ^ punctuation.terminator.c 
        enum B out; };
//^^^^^^^^^^^^^^^^^^^ meta.block.c 
//      ^^^^ keyword.declaration.enum.c 
//                ^ punctuation.terminator.c 
//                  ^ punctuation.section.block.end 
//                   ^ punctuation.terminator.c 

    union MACRO myUnion {
//  ^^^^^^^^^^^^^^^^^^^^ meta.union.c 
//  ^^^^^ keyword.declaration.union.c 
//              ^^^^^^^ entity.name.union.c 
//                      ^ meta.block.c meta.union.c punctuation.section.block.begin.c 
        struct A {
//^^^^^^^^^^^^^^^^ meta.block.c 
//      ^^^^^^^^^ meta.struct.c 
//      ^^^^^^ keyword.declaration.struct.c 
//             ^ entity.name.struct.c 
//               ^ meta.block.c meta.struct.c punctuation.section.block.begin.c 
            int f;
//^^^^^^^^^^^^^^^^ meta.block.c meta.block.c 
//          ^^^ storage.type.c 
//               ^ punctuation.terminator.c 
        } s1;
//^^^^^^^^^^^ meta.block.c 
//^^^^^^^ meta.block.c 
//      ^ punctuation.section.block.end 
//          ^ punctuation.terminator.c 
        struct B {
//^^^^^^^^^^^^^^^^ meta.block.c 
//      ^^^^^^^^^ meta.struct.c 
//      ^^^^^^ keyword.declaration.struct.c 
//             ^ entity.name.struct.c 
//               ^ meta.block.c meta.struct.c punctuation.section.block.begin.c 
            int f2;
//^^^^^^^^^^^^^^^^^ meta.block.c meta.block.c 
//          ^^^ storage.type.c 
//                ^ punctuation.terminator.c 
        } s2;
//^^^^^^^^^^^ meta.block.c 
//^^^^^^^ meta.block.c 
//      ^ punctuation.section.block.end 
//          ^ punctuation.terminator.c 
        void* ptr;
//^^^^^^^^^^^^^^^^ meta.block.c 
//      ^^^^ storage.type.c 
//          ^ keyword.operator.arithmetic.c 
//               ^ punctuation.terminator.c 
        int a, *ptr2;
//^^^^^^^^^^^^^^^^^^^ meta.block.c 
//      ^^^ storage.type.c 
//           ^ punctuation.separator.c 
//             ^ keyword.operator.arithmetic.c 
//                  ^ punctuation.terminator.c 
    };
//^^^ meta.block.c 
//  ^ punctuation.section.block.end 
//   ^ punctuation.terminator.c 

    int test() {
//  ^^^ storage.type.c 
//      ^^^^ entity.name.function.c 
//          ^ punctuation.section.group.begin.c 
//           ^^^ meta.function.c 
//           ^ punctuation.section.group.end.c 
//             ^ meta.function.c meta.block.c punctuation.section.block.begin 
        union C myunion;
//^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c 
//      ^^^^^ keyword.declaration.union.c 
//                     ^ punctuation.terminator.c 
        myunion.s2.f = 20;
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c 
//             ^ punctuation.accessor.c 
//                ^ punctuation.accessor.c 
//                   ^ keyword.operator.assignment.c 
//                     ^^ meta.number.integer.decimal.c constant.numeric.value.c 
//                       ^ punctuation.terminator.c 
    }
//^^^ meta.function.c meta.block.c 
//  ^ punctuation.section.block.end.c 

    typedef struct {
//  ^^^^^^^ keyword.declaration.type.c 
//          ^^^^^^^ meta.struct.c 
//          ^^^^^^ keyword.declaration.struct.c 
//                 ^ meta.block.c meta.struct.c punctuation.section.block.begin.c 
        myCustomType* a;
//^^^^^^^^^^^^^^^^^^^^^^ meta.block.c 
//                  ^ keyword.operator.arithmetic.c 
//                     ^ punctuation.terminator.c 
    } b;
//^^^ meta.block.c 
//  ^ punctuation.section.block.end 
//    ^ entity.name.type.typedef.c 
//     ^ punctuation.terminator.c 

    typedef void(*func)(int param, int, char param2);
//  ^^^^^^^ keyword.declaration.type.c 
//          ^^^^ storage.type.c 
//               ^ keyword.operator.c 
//                ^^^^ entity.name.type.typedef.c 
//                     ^ punctuation.section.group.begin.c 
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c 
//                      ^^^ storage.type.c 
//                          ^^^^^ variable.parameter.c 
//                               ^ punctuation.separator.c 
//                                 ^^^ storage.type.c 
//                                    ^ punctuation.separator.c 
//                                      ^^^^ storage.type.c 
//                                           ^^^^^^ variable.parameter.c 
//                                                 ^ punctuation.section.group.end.c 
//                                                  ^ punctuation.terminator.c 

/////////////////////////////////////////////
// Attributes and Declspec
/////////////////////////////////////////////

    __declspec(align(5)) struct Test {
//  ^^^^^^^^^^ storage.modifier.c 
//            ^^^^^^^^^^ meta.group.c 
//            ^ punctuation.section.group.begin.c 
//             ^^^^^^^^ meta.group.c 
//             ^^^^^ storage.modifier.c 
//                  ^ punctuation.section.group.begin.c 
//                   ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                    ^ punctuation.section.group.end 
//                     ^ punctuation.section.group.end.c 
//                       ^^^^^^^^^^^^ meta.struct.c 
//                       ^^^^^^ keyword.declaration.struct.c 
//                              ^^^^ entity.name.struct.c 
//                                   ^ meta.block.c meta.struct.c punctuation.section.block.begin.c 
        int a;
//^^^^^^^^^^^^ meta.block.c 
//      ^^^ storage.type.c 
//           ^ punctuation.terminator.c 
        int b;
//^^^^^^^^^^^^ meta.block.c 
//      ^^^ storage.type.c 
//           ^ punctuation.terminator.c 
        int c;
//^^^^^^^^^^^^ meta.block.c 
//      ^^^ storage.type.c 
//           ^ punctuation.terminator.c 
    };
//^^^ meta.block.c 
//  ^ punctuation.section.block.end 
//   ^ punctuation.terminator.c 

    void __declspec(dllimport) importedFn() const;
//  ^^^^ storage.type.c 
//       ^^^^^^^^^^ storage.modifier.c 
//                 ^^^^^^^^^^^ meta.group.c 
//                 ^ punctuation.section.group.begin.c 
//                  ^^^^^^^^^ constant.other.c 
//                           ^ punctuation.section.group.end.c 
//                             ^^^^^^^^^^ entity.name.function.c 
//                                       ^ punctuation.section.group.begin.c 
//                                        ^^^^^^^^ meta.function.c 
//                                        ^ punctuation.section.group.end.c 
//                                          ^^^^^ constant.other.c 
    __declspec(property(get=10, put=10)) void runForever();
//  ^^^^^^^^^^ storage.modifier.c 
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.c 
//            ^ punctuation.section.group.begin.c 
//             ^^^^^^^^ storage.modifier.c 
//                     ^ punctuation.section.group.begin.c 
//                      ^^^ variable.parameter.c 
//                         ^ keyword.operator.assignment.c 
//                          ^^ meta.number.integer.decimal.c constant.numeric.value.c 
//                            ^ punctuation.separator.c 
//                              ^^^ variable.parameter.c 
//                                 ^ keyword.operator.assignment.c 
//                                  ^^ meta.number.integer.decimal.c constant.numeric.value.c 
//                                    ^ punctuation.section.group.end 
//                                     ^ punctuation.section.group.end.c 
//                                       ^^^^ storage.type.c 
//                                            ^^^^^^^^^^ entity.name.function.c 
//                                                      ^ punctuation.section.group.begin.c 
//                                                       ^^ meta.function.c 
//                                                       ^ punctuation.section.group.end.c 

    void on_load() __attribute__((constructor, visibility("hidden"))) {}
//  ^^^^ storage.type.c 
//       ^^^^^^^ entity.name.function.c 
//              ^ punctuation.section.group.begin.c 
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c 
//               ^ punctuation.section.group.end.c 
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.c meta.attribute.c 
//                 ^^^^^^^^^^^^^ storage.modifier.c 
//                              ^^ punctuation.section.group.begin.c 
//                                ^^^^^^^^^^^ constant.other.c 
//                                           ^ punctuation.separator.c 
//                                             ^^^^^^^^^^^^^^^^^^^^ meta.group.c 
//                                             ^^^^^^^^^^ storage.modifier.c 
//                                                       ^ punctuation.section.group.begin.c 
//                                                        ^^^^^^^^ string.quoted.double.c 
//                                                        ^ punctuation.definition.string.begin.c 
//                                                               ^ punctuation.definition.string.end.c 
//                                                                ^ punctuation.section.group.end 
//                                                                 ^^ punctuation.section.group.end.c 
//                                                                    ^ meta.function.c meta.block.c punctuation.section.block.begin 
//                                                                     ^ meta.block.c punctuation.section.block.end.c 

    int a =
//  ^^^ storage.type.c 
//        ^ keyword.operator.assignment.c 
    int main(int argc, char const* argv[]) {
//  ^^^ storage.type.c 
//      ^^^^ entity.name.function.c 
//          ^ punctuation.section.group.begin.c 
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c 
//           ^^^ storage.type.c 
//               ^^^^ variable.parameter.c 
//                   ^ punctuation.separator.c 
//                     ^^^^ storage.type.c 
//                          ^^^^^ storage.modifier.c 
//                               ^ keyword.operator.arithmetic.c 
//                                 ^^^^ variable.parameter.c 
//                                     ^^ meta.brackets.square.c 
//                                     ^ punctuation.section.brackets.begin 
//                                      ^ punctuation.section.brackets.end 
//                                       ^^^ meta.function.c 
//                                       ^ punctuation.section.group.end.c 
//                                         ^ meta.function.c meta.block.c punctuation.section.block.begin 

    }
//^^^ meta.function.c meta.block.c 
//  ^ punctuation.section.block.end.c 

/////////////////////////////////////////////
// Preprocessor
/////////////////////////////////////////////

    #include <stdlib.h>
//^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.c 
//^^^^^^^^^^ keyword.control.import.c 
//           ^^^^^^^^^^ string.quoted.other.c 
//           ^ punctuation.definition.string.begin.c 
//                    ^ punctuation.definition.string.end.c 
    #include_next "file.h"
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.c 
//^^^^^^^^^^^^^^^ keyword.control.import.c 
//                ^^^^^^^^ string.quoted.double.c 
//                ^ punctuation.definition.string.begin.c 
//                       ^ punctuation.definition.string.end.c 
    #error Error Message
//^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.diagnostic.c 
//^^^^^^^^ keyword.control.import.error.c 
//        ^^^^^^^^^^^^^^ string.unquoted.c 
    #error Error Message \
    (this is an "error")
//^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.diagnostic.c string.unquoted.c 
    #warning Warning Message
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.diagnostic.c 
//^^^^^^^^^^ keyword.control.import.warning.c 
//          ^^^^^^^^^^^^^^^^ string.unquoted.c 
    #warning Warning Message \
    (this is a "warning")

    #define FOO __declspec(dllimport)
//^^^^^^^^^ keyword.control.import.c 
//          ^^^ entity.name.macro.c support.macro.c 
//              ^^^^^^^^^^ storage.modifier.c 
//                        ^^^^^^^^^^^ meta.group.c 
//                        ^ punctuation.section.group.begin.c 
//                         ^^^^^^^^^ constant.other.c 
//                                  ^ punctuation.section.group.end.c 
    #define BAR(x, y, ...) enum MyEnum ## x { kEnumValue1 = y __VA_OPT__(,) __VA_ARGS__ };
//^^^^^^^^^ keyword.control.import.c 
//          ^^^ entity.name.macro.c support.macro.c 
//             ^ punctuation.section.group.begin.c 
//              ^ variable.parameter.c 
//               ^ punctuation.separator.c 
//                 ^ variable.parameter.c 
//                  ^ punctuation.separator.c 
//                    ^^^ keyword.operator.variadic.c 
//                       ^ punctuation.section.group.end.c 
//                         ^^^^ keyword.declaration.enum.c 
//                                     ^^ keyword.operator.c 
//                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c 
//                                          ^ punctuation.section.block.begin 
//                                            ^^^^^^^^^^^ constant.other.variable.mac-classic.c 
//                                                        ^ keyword.operator.assignment.c 
//                                                            ^^^^^^^^^^ keyword.operator.word.c 
//                                                                      ^^^ meta.group.c 
//                                                                      ^ punctuation.section.group.begin 
//                                                                       ^ punctuation.separator.c 
//                                                                        ^ punctuation.section.group.end 
//                                                                          ^^^^^^^^^^^ constant.other.c 
//                                                                                      ^ punctuation.section.block.end 
//                                                                                       ^ punctuation.terminator.c 

    #if FOO
//^^^^^^^^^ meta.preprocessor.c 
//^^^^^ keyword.control.import.c 
    #ifndef FOO
//^^^^^^^^^^^^^ meta.preprocessor.c 
//^^^^^^^^^ keyword.control.import.c 
    #ifdef FOO
//^^^^^^^^^^^^ meta.preprocessor.c 
//^^^^^^^^ keyword.control.import.c 
    #elif FOO
//^^^^^^^^^^^ meta.preprocessor.c 
//^^^^^^^ keyword.control.import.c 
    #elifdef FOO
//^^^^^^^^^^^^^^ meta.preprocessor.c 
//^^^^^^^^^^ keyword.control.import.c 
    #elifndef FOO
//^^^^^^^^^^^^^^^ meta.preprocessor.c 
//^^^^^^^^^^^ keyword.control.import.c 
    #else
//^^^^^^^ keyword.control.import.c 
    #endif
//^^^^^^^^ keyword.control.import.c 

    #undef FOO
//^^^^^^^^^^^^ meta.preprocessor.c 
//^^^^^^^^ keyword.control.import.c 
    #pragma FOO
//^^^^^^^^^^^^^ meta.preprocessor.c 
//^^^^^^^^^ keyword.control.import.c 

    #embed "file.txt" if_empty(0)
//^^^^^^^^ keyword.control.import.c 
//         ^^^^^^^^^^ string.quoted.double.c 
//         ^ punctuation.definition.string.begin.c 
//                  ^ punctuation.definition.string.end.c 
//                    ^^^^^^^^ keyword.other.c 
//                            ^ punctuation.section.group.begin.c 
//                             ^ meta.number.integer.decimal.c constant.numeric.value.c 
//                              ^ punctuation.section.group.end.c 
