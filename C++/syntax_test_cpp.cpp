// SYNTAX TEST "Packages/C++/C++.sublime-syntax"

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
//     ^^ constant.numeric.suffix.c
//        ^^^^^^ meta.number.integer.decimal.c
//        ^^^ constant.numeric.value.c
//           ^^^ constant.numeric.suffix.c
//               ^^^^^ meta.number.integer.decimal.c
//               ^^^ constant.numeric.value.c
//                  ^^ constant.numeric.suffix.c
//                     ^^^^^^ meta.number.float.decimal.c
//                     ^^^^ constant.numeric.value.c
//                        ^ punctuation.separator.decimal.c
//                         ^^ constant.numeric.suffix.c
//                            ^^^^^^ meta.number.float.decimal.c
//                            ^^^^ constant.numeric.value.c
//                               ^ punctuation.separator.decimal.c
//                                ^^ constant.numeric.suffix.c
    0x314.1p5af 0b10e20
//  ^^^^^^^^^^^ meta.number.float.hexadecimal.c
//  ^^ constant.numeric.base.c
//    ^^^^^^^ constant.numeric.value.c
//       ^ punctuation.separator.decimal.c
//           ^^ invalid.illegal.numeric.suffix.c
//              ^^^^^^^ meta.number.integer.binary.c
//              ^^ constant.numeric.base.c
//                ^^ constant.numeric.value.c
//                  ^^^ invalid.illegal.numeric.suffix.c

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
//    ^ keyword.operator.bitwise.c++
//      ^ meta.number.integer.decimal.c constant.numeric.value.c
//        ^ keyword.operator.bitwise.c++
//          ^ meta.number.integer.decimal.c constant.numeric.value.c
//            ^ keyword.operator.bitwise.c++
//              ^ meta.number.integer.decimal.c constant.numeric.value.c
//                ^^ keyword.operator.bitwise.c++
//                   ^ meta.number.integer.decimal.c constant.numeric.value.c
//                     ^^ keyword.operator.bitwise.c++
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
//                            ^ keyword.operator.comparison.c++
//                              ^ meta.number.integer.decimal.c constant.numeric.value.c
    !1 && 2 || 3 ? -4 : ~5
//  ^ keyword.operator.arithmetic.c
//   ^ meta.number.integer.decimal.c constant.numeric.value.c
//     ^^ keyword.operator.logical.c
//        ^ meta.number.integer.decimal.c constant.numeric.value.c
//          ^^ keyword.operator.logical.c
//             ^ meta.number.integer.decimal.c constant.numeric.value.c
//               ^ keyword.operator.ternary.c
//                 ^ keyword.operator.arithmetic.c
//                  ^ meta.number.integer.decimal.c constant.numeric.value.c
//                    ^ keyword.operator.ternary.c
//                      ^ keyword.operator.bitwise.c++
//                       ^ meta.number.integer.decimal.c constant.numeric.value.c
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
//        ^ punctuation.section.group.begin.c
//          ^ punctuation.section.group.end.c
//            ^^^^^^^ keyword.operator.word.c
//                   ^^^ meta.group.c
//                   ^ punctuation.section.group.begin.c
//                     ^ punctuation.section.group.end.c
//                       ^^^^^^^^ keyword.operator.word.c
//                               ^^^ meta.group.c
//                               ^ punctuation.section.group.begin.c
//                                 ^ punctuation.section.group.end.c
//                                   ^^^^^^^^ keyword.operator.word.c
//                                           ^^^ meta.group.c
//                                           ^ punctuation.section.group.begin.c
//                                             ^ punctuation.section.group.end.c
//                                               ^^^^^^^^^^^^^ keyword.operator.word.c++
//                                                            ^^^ meta.group.c
//                                                            ^ punctuation.section.group.begin.c
//                                                              ^ punctuation.section.group.end.c
//                                                                ^^^^^^^^^^^^^^ keyword.operator.word.c
//                                                                              ^^^ meta.group.c
//                                                                              ^ punctuation.section.group.begin.c
//                                                                                ^ punctuation.section.group.end.c
    a,b = b.c;
//   ^ punctuation.separator.c
//      ^ keyword.operator.assignment.c
//         ^ punctuation.accessor.dot.c
//          ^ variable.other.readwrite.member.c
//           ^ punctuation.terminator.c

/////////////////////////////////////////////
// Strings
/////////////////////////////////////////////

    "abc123" L"abc123" u8"abc123" u"abc123" U"abc123" 'abc123' L'abc123'
//  ^^^^^^^^ string.quoted.double.c
//  ^ punctuation.definition.string.begin.c
//         ^ punctuation.definition.string.end.c++
//           ^^^^^^^^^ string.quoted.double.c
//           ^ storage.type.string.c
//            ^ punctuation.definition.string.begin.c
//                   ^ punctuation.definition.string.end.c++
//                     ^^^^^^^^^^ string.quoted.double.c
//                     ^^ storage.type.string.c
//                       ^ punctuation.definition.string.begin.c
//                              ^ punctuation.definition.string.end.c++
//                                ^^^^^^^^^ string.quoted.double.c
//                                ^ storage.type.string.c
//                                 ^ punctuation.definition.string.begin.c
//                                        ^ punctuation.definition.string.end.c++
//                                          ^^^^^^^^^ string.quoted.double.c
//                                          ^ storage.type.string.c
//                                           ^ punctuation.definition.string.begin.c
//                                                  ^ punctuation.definition.string.end.c++
//                                                    ^^^^^^^^ string.quoted.single.c
//                                                    ^ punctuation.definition.string.begin.c
//                                                           ^ punctuation.definition.string.end.c++
//                                                             ^^^^^^^^^ string.quoted.single.c
//                                                             ^ storage.type.string.c
//                                                              ^ punctuation.definition.string.begin.c
//                                                                     ^ punctuation.definition.string.end.c++
    "\a\b\f\n\r\t\v\e\E\314\xabc\u3141\U15926535\\\"\'\?\0\7"
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.c
//  ^ punctuation.definition.string.begin.c
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape.c
//                                                          ^ punctuation.definition.string.end.c++
    '\u\w\x\y\z\/'
//  ^^^^^^^^^^^^^^ string.quoted.single.c
//  ^ punctuation.definition.string.begin.c
//   ^^^^^^^^^^^^ invalid.illegal.unknown-escape.c
//               ^ punctuation.definition.string.end.c++
    "%ms %as %*[, ]"
//  ^^^^^^^^^^^^^^^^ string.quoted.double.c
//  ^ punctuation.definition.string.begin.c
//   ^^^ constant.other.placeholder.c
//       ^^^ constant.other.placeholder.c
//           ^^^^^^ constant.other.placeholder.c
//                 ^ punctuation.definition.string.end.c++
    "314 \
//  ^^^^^^ string.quoted.double.c 
//  ^ punctuation.definition.string.begin.c 
//       ^ punctuation.separator.continuation.c 
     159"
//^^^^^^^ string.quoted.double.c
//      ^ punctuation.definition.string.end.c++

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
//  ^ meta.brackets.square.c++ punctuation.section.brackets.begin.c++
//   ^^^^^^^^ meta.brackets.square.c
//    ^ punctuation.separator.c
//       ^ punctuation.separator.c
//          ^ punctuation.section.brackets.end.c
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
//  ^^^^ variable.function.c
//      ^^^^^^^^^^^^^^^ meta.group.c
//      ^ punctuation.section.group.begin.c
//       ^ meta.number.integer.decimal.c constant.numeric.value.c
//        ^ punctuation.separator.c
//          ^^ meta.number.integer.decimal.c constant.numeric.value.c
//            ^ punctuation.separator.c
//              ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                ^ punctuation.separator.c
//                  ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                    ^ punctuation.section.group.end.c
//                     ^ punctuation.terminator.c
    int v = h(f(5) - g(6));
//  ^^^ storage.type.c
//        ^ keyword.operator.assignment.c
//          ^ variable.function.c
//           ^^^^^^^^^^^^^ meta.group.c
//           ^ punctuation.section.group.begin.c
//            ^ variable.function.c
//             ^^^ meta.group.c
//             ^ punctuation.section.group.begin.c
//              ^ meta.number.integer.decimal.c constant.numeric.value.c
//               ^ punctuation.section.group.end.c
//                 ^ keyword.operator.arithmetic.c
//                   ^ variable.function.c
//                    ^^^ meta.group.c
//                    ^ punctuation.section.group.begin.c
//                     ^ meta.number.integer.decimal.c constant.numeric.value.c
//                      ^ punctuation.section.group.end.c
//                       ^ punctuation.section.group.end.c
//                        ^ punctuation.terminator.c

    int main(int argc, char const* argv[]) {
//  ^^^ storage.type.c
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//      ^^^^ entity.name.function.c++
//          ^ meta.group.c++ punctuation.section.group.begin.c++
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//           ^^^ storage.type.c
//               ^^^^ variable.parameter.c++
//                   ^ punctuation.separator.c
//                     ^^^^ storage.type.c
//                          ^^^^^ storage.modifier.c
//                               ^ keyword.operator.arithmetic.c
//                                 ^^^^ variable.parameter.c++
//                                     ^ meta.brackets.square.c++ punctuation.section.brackets.begin.c++
//                                      ^ meta.brackets.square.c punctuation.section.brackets.end.c
//                                       ^ punctuation.section.group.end.c++
//                                         ^ meta.function.c meta.block.c punctuation.section.block.begin.c
        int out = in("abcdefg");
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c
//      ^^^ storage.type.c
//              ^ keyword.operator.assignment.c
//                ^^ variable.function.c
//                  ^^^^^^^^^^^ meta.group.c
//                  ^ punctuation.section.group.begin.c
//                   ^^^^^^^^^ string.quoted.double.c
//                   ^ punctuation.definition.string.begin.c
//                           ^ punctuation.definition.string.end.c++
//                            ^ punctuation.section.group.end.c
//                             ^ punctuation.terminator.c
        
        printf
//^^^^^^^^^^^^ meta.function.c meta.block.c
//      ^^^^^^ variable.function.c
            (1, 2, 3);
//^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c
//          ^^^^^^^^^ meta.group.c
//          ^ punctuation.section.group.begin.c
//           ^ meta.number.integer.decimal.c constant.numeric.value.c
//            ^ punctuation.separator.c
//              ^ meta.number.integer.decimal.c constant.numeric.value.c
//               ^ punctuation.separator.c
//                 ^ meta.number.integer.decimal.c constant.numeric.value.c
//                  ^ punctuation.section.group.end
//                   ^ punctuation.terminator.c
    }
//^^^ meta.function.c meta.block.c 
//  ^ punctuation.section.block.end.c 

    int b = main(argc);
//  ^^^ storage.type.c
//        ^ keyword.operator.assignment.c
//          ^^^^ variable.function.c
//              ^^^^^^ meta.group.c
//              ^ punctuation.section.group.begin.c
//                   ^ punctuation.section.group.end.c
//                    ^ punctuation.terminator.c

    static extern int*
//  ^^^^^^ storage.modifier.c 
//         ^^^^^^ storage.modifier.c 
//                ^^^ storage.type.c 
//                   ^ keyword.operator.c 
    test(
//  ^^^^^ meta.function.c
//  ^^^^ entity.name.function.c++
//      ^ meta.group.c++ punctuation.section.group.begin.c++
        const uint64_t a,
//^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.function.parameters.c meta.group.c++
//      ^^^^^ storage.modifier.c
//            ^^^^^^^^ support.type.stdint.c
//                     ^ variable.parameter.c++
//                      ^ punctuation.separator.c
        typeof(b) b
//^^^^^^^^^^^^^^^^^ meta.function.c meta.function.parameters.c meta.group.c++
//      ^^^^^^ keyword.declaration.type.c
//            ^^^ meta.group.c
//            ^ punctuation.section.group.begin.c
//              ^ punctuation.section.group.end.c
//                ^ variable.parameter.c++
    );
//^^^ meta.function.c
//^^ meta.function.parameters.c meta.group.c++
//  ^ punctuation.section.group.end.c++
//   ^ punctuation.terminator.c

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
//                  ^ punctuation.section.group.begin.c
//                   ^^^ storage.type.c
//                         ^ keyword.operator.assignment.c
//                           ^ meta.number.integer.decimal.c constant.numeric.value.c
//                            ^ punctuation.terminator.c
//                                ^ keyword.operator.comparison.c++
//                                  ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                                    ^ punctuation.terminator.c
//                                      ^^ keyword.operator.arithmetic.c
//                                         ^ punctuation.section.group.end.c
//                                           ^ meta.block.c punctuation.section.block.begin.c
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
//                         ^ punctuation.section.group.begin.c
//                            ^ keyword.operator.arithmetic.c
//                                ^ keyword.operator.comparison.c++
//                                   ^ punctuation.section.group.end.c
//                                     ^^ meta.block.c
//                                     ^ punctuation.section.block.begin.c
//                                      ^ punctuation.section.block.end.c
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
//  ^^^^ entity.name.label.c++
//      ^ punctuation.separator.c++
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
//  ^^^^^^ keyword.declaration.c++
//         ^ entity.name.class.forward-declare.c++
//          ^ punctuation.terminator.c
//            ^^^^^^ meta.enum.c
//            ^^^^ keyword.declaration.enum.c++
//                 ^ entity.name.enum.forward-decl.c
//                  ^ punctuation.terminator.c
//                    ^^^^^^^ meta.union.c
//                    ^^^^^ keyword.declaration.union.c
//                          ^ entity.name.enum.forward-decl.c
//                           ^ punctuation.terminator.c

    enum B
//  ^^^^^^ meta.enum.c
//  ^^^^ keyword.declaration.enum.c++
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
//                 ^^^^^^ keyword.declaration.c++
//                        ^ meta.class.c++ entity.name.class.c++
    {
//^^^ meta.class.c++
//  ^ meta.block.c++ meta.class.c++ meta.block.c++ punctuation.section.block.begin.c++
        int a1;
//^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^ storage.type.c
//            ^ punctuation.terminator.c
        char a3[12];
//^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^ storage.type.c
//             ^ meta.brackets.square.c++ punctuation.section.brackets.begin.c++
//              ^^^ meta.brackets.square.c
//              ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                ^ punctuation.section.brackets.end.c
//                 ^ punctuation.terminator.c
        void* h5;
//^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^ storage.type.c
//          ^ keyword.operator.c
//              ^ punctuation.terminator.c
        enum B out; };
//^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^ keyword.declaration.enum.c++
//                ^ punctuation.terminator.c
//                  ^ meta.block.c++ punctuation.section.block.end.c++
//                   ^ punctuation.terminator.c

    union MACRO myUnion {
//  ^^^^^^^^^^^^^^^^^^^^^ meta.union.c
//  ^^^^^ keyword.declaration.union.c
//              ^^^^^^^ entity.name.union.c
//                      ^ meta.block.c punctuation.section.block.begin.c
        struct A {
//^^^^^^^^^^^^^^^^ meta.block.c
//      ^^^^^^ keyword.declaration.c++
//             ^^^ meta.class.c++
//             ^ entity.name.class.c++
//               ^ meta.block.c++ meta.class.c++ meta.block.c++ punctuation.section.block.begin.c++
            int f;
//^^^^^^^^^^^^^^^^ meta.block.c meta.block.c++ meta.class.c++
//          ^^^ storage.type.c
//               ^ punctuation.terminator.c
        } s1;
//^^^^^^^^^^^ meta.block.c
//^^^^^^^ meta.block.c++ meta.class.c++
//      ^ meta.block.c++ punctuation.section.block.end.c++
//          ^ punctuation.terminator.c
        struct B {
//^^^^^^^^^^^^^^^^ meta.block.c
//      ^^^^^^ keyword.declaration.c++
//             ^^^ meta.class.c++
//             ^ entity.name.class.c++
//               ^ meta.block.c++ meta.class.c++ meta.block.c++ punctuation.section.block.begin.c++
            int f2;
//^^^^^^^^^^^^^^^^^ meta.block.c meta.block.c++ meta.class.c++
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
//          ^ keyword.operator.c
//               ^ punctuation.terminator.c
        int a, *ptr2;
//^^^^^^^^^^^^^^^^^^^ meta.block.c
//      ^^^ storage.type.c
//           ^ punctuation.separator.c
//             ^ keyword.operator.c
//                  ^ punctuation.terminator.c
    };
//^^^ meta.block.c 
//  ^ punctuation.section.block.end 
//   ^ punctuation.terminator.c 

    int test() {
//  ^^^ storage.type.c
//      ^^^^^^^^ meta.function.c
//      ^^^^ entity.name.function.c++
//          ^ meta.group.c++ punctuation.section.group.begin.c++
//           ^ punctuation.section.group.end.c++
//             ^ meta.function.c meta.block.c punctuation.section.block.begin.c
        union C myunion;
//^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c
//      ^^^^^ keyword.declaration.union.c
//                     ^ punctuation.terminator.c
        myunion.s2.f = 20;
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c
//             ^ punctuation.accessor.dot.c
//              ^^ variable.other.readwrite.member.c
//                ^ punctuation.accessor.dot.c
//                 ^ variable.other.readwrite.member.c
//                   ^ keyword.operator.assignment.c
//                     ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                       ^ punctuation.terminator.c
    }
//^^^ meta.function.c meta.block.c
//  ^ punctuation.section.block.end.c

    typedef struct {
//  ^^^^^^^ keyword.declaration.type.c
//          ^^^^^^ keyword.declaration.c++
//                 ^ meta.class.c++ meta.block.c++ meta.class.c++ meta.block.c++ punctuation.section.block.begin.c++
        myCustomType* a;
//^^^^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//                  ^ keyword.operator.c
//                     ^ punctuation.terminator.c
    } b;
//^^^ meta.block.c++ meta.class.c++
//  ^ meta.block.c++ punctuation.section.block.end.c++
//    ^ entity.name.type.typedef.c
//     ^ punctuation.terminator.c

    typedef void(*func)(int param, int, char param2);
//  ^^^^^^^ keyword.declaration.type.c
//          ^^^^ storage.type.c
//               ^ keyword.operator.c
//                ^^^^ entity.name.type.typedef.c
//                     ^ punctuation.section.group.begin.c
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//                      ^^^ storage.type.c
//                          ^^^^^ variable.parameter.c++
//                               ^ punctuation.separator.c
//                                 ^^^ storage.type.c
//                                    ^ punctuation.separator.c
//                                      ^^^^ storage.type.c
//                                           ^^^^^^ variable.parameter.c++
//                                                 ^ punctuation.section.group.end.c++
//                                                  ^ punctuation.terminator.c

/////////////////////////////////////////////
// Attributes and Declspec
/////////////////////////////////////////////

    __declspec(align(5)) struct Test {
//  ^^^^^^^^^^^^^^^^^^^^ meta.group.c
//  ^^^^^^^^^^ storage.modifier.c
//            ^ punctuation.section.group.begin.c
//             ^^^^^ storage.modifier.c
//                  ^^^ meta.group.c
//                  ^ punctuation.section.group.begin.c
//                   ^ meta.number.integer.decimal.c constant.numeric.value.c
//                    ^ punctuation.section.group.end.c
//                     ^ punctuation.section.group.end.c
//                       ^^^^^^ keyword.declaration.c++
//                              ^^^^^^ meta.class.c++
//                              ^^^^ entity.name.class.c++
//                                   ^ meta.block.c++ meta.class.c++ meta.block.c++ punctuation.section.block.begin.c++
        int a;
//^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^ storage.type.c
//           ^ punctuation.terminator.c
        int b;
//^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^ storage.type.c
//           ^ punctuation.terminator.c
        int c;
//^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^ storage.type.c
//           ^ punctuation.terminator.c
    };
//^^^ meta.block.c++ meta.class.c++
//  ^ meta.block.c++ punctuation.section.block.end.c++
//   ^ punctuation.terminator.c

    void __declspec(dllimport) importedFn() const;
//  ^^^^ storage.type.c
//       ^^^^^^^^^^^^^^^^^^^^^ meta.group.c
//       ^^^^^^^^^^ storage.modifier.c
//                 ^ punctuation.section.group.begin.c
//                  ^^^^^^^^^ constant.other.c
//                           ^ punctuation.section.group.end.c
//                             ^^^^^^^^^^^^^^^^^^ meta.function.c
//                             ^^^^^^^^^^ entity.name.function.c++
//                                       ^ meta.group.c++ punctuation.section.group.begin.c++
//                                        ^ punctuation.section.group.end.c++
//                                          ^^^^^ storage.modifier.c
//                                               ^ punctuation.terminator.c
    __declspec(property(get=10, put=10)) void runForever();
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.c
//  ^^^^^^^^^^ storage.modifier.c
//            ^ punctuation.section.group.begin.c
//             ^^^^^^^^ storage.modifier.c
//                     ^ punctuation.section.group.begin.c
//                      ^^^^^^^^^^^^^^^ meta.group.c
//                      ^^^ variable.parameter.c
//                         ^ keyword.operator.assignment.c
//                          ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                            ^ punctuation.separator.c
//                              ^^^ variable.parameter.c
//                                 ^ keyword.operator.assignment.c
//                                  ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                                    ^ punctuation.section.group.end.c
//                                     ^ punctuation.section.group.end.c
//                                       ^^^^ storage.type.c
//                                            ^^^^^^^^^^^^ meta.function.c
//                                            ^^^^^^^^^^ entity.name.function.c++
//                                                      ^ meta.group.c++ punctuation.section.group.begin.c++
//                                                       ^ punctuation.section.group.end.c++
//                                                        ^ punctuation.terminator.c

    void on_load() __attribute__((constructor, visibility("hidden"))) {}
//  ^^^^ storage.type.c
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//       ^^^^^^^ entity.name.function.c++
//              ^ meta.group.c++ punctuation.section.group.begin.c++
//               ^ punctuation.section.group.end.c++
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.c meta.attribute.c
//                 ^^^^^^^^^^^^^ storage.modifier.c
//                              ^^ punctuation.section.group.begin.c
//                                ^^^^^^^^^^^ constant.other.c
//                                           ^ punctuation.separator.c
//                                             ^^^^^^^^^^ storage.modifier.c
//                                                       ^^^^^^^^^^ meta.group.c
//                                                       ^ punctuation.section.group.begin.c
//                                                        ^^^^^^^^ string.quoted.double.c
//                                                        ^ punctuation.definition.string.begin.c
//                                                               ^ punctuation.definition.string.end.c++
//                                                                ^ punctuation.section.group.end.c
//                                                                 ^^ punctuation.section.group.end.c
//                                                                    ^ meta.function.c meta.block.c punctuation.section.block.begin
//                                                                     ^ meta.block.c punctuation.section.block.end.c

    int old_func() [[deprecated]] [[gnu::pure]] [[nodiscard("Do not discard")]] {
//  ^^^ storage.type.c
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//      ^^^^^^^^ entity.name.function.c++
//              ^ meta.group.c++ punctuation.section.group.begin.c++
//               ^ punctuation.section.group.end.c++
//                 ^^^^^^^^^^^^^^ meta.brackets.square.c meta.annotation.c
//                 ^^ meta.brackets.square.c punctuation.section.brackts.begin.c
//                   ^^^^^^^^^^ constant.other.c
//                             ^^ punctuation.section.brackets.end.c
//                                ^^^^^^^^^^^^^ meta.brackets.square.c meta.annotation.c
//                                ^^ meta.brackets.square.c punctuation.section.brackts.begin.c
//                                  ^^^^^^^^^ constant.other.c
//                                           ^^ punctuation.section.brackets.end.c
//                                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.brackets.square.c meta.annotation.c
//                                              ^^ meta.brackets.square.c punctuation.section.brackts.begin.c
//                                                ^^^^^^^^^ storage.modifier.c
//                                                         ^^^^^^^^^^^^^^^^^^ meta.group.c
//                                                         ^ punctuation.section.group.begin.c
//                                                          ^^^^^^^^^^^^^^^^ string.quoted.double.c
//                                                          ^ punctuation.definition.string.begin.c
//                                                                         ^ punctuation.definition.string.end.c++
//                                                                          ^ punctuation.section.group.end.c
//                                                                           ^^ punctuation.section.brackets.end.c
//                                                                              ^ meta.function.c meta.block.c punctuation.section.block.begin
    if ([[clang::hot]] true) return 5;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c meta.block.c
//  ^^ keyword.control.c
//     ^^^^^^^^^^^^^^^^^^^^^ meta.group.c
//     ^ punctuation.section.group.begin.c
//      ^^^^^^^^^^^^^^ meta.brackets.square.c meta.annotation.c
//      ^^ meta.brackets.square.c punctuation.section.brackts.begin.c
//        ^^^^^^^^^^ constant.other.c
//                  ^^ punctuation.section.brackets.end.c
//                     ^^^^ constant.language.boolean.true.c
//                         ^ punctuation.section.group.end.c
//                           ^^^^^^ keyword.control.flow.return.c
//                                  ^ meta.number.integer.decimal.c constant.numeric.value.c
//                                   ^ punctuation.terminator.c
    else return 6;
//^^^^^^^^^^^^^^^^ meta.function.c meta.block.c
//  ^^^^ keyword.control.c
//       ^^^^^^ keyword.control.flow.return.c
//              ^ meta.number.integer.decimal.c constant.numeric.value.c
//               ^ punctuation.terminator.c
    }
//^^^ meta.function.c meta.block.c
//  ^ punctuation.section.block.end.c

    int a =
//  ^^^ storage.type.c 
//        ^ keyword.operator.assignment.c 
    int main(int argc, char const* argv[]) {
//  ^^^ storage.type.c
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//      ^^^^ entity.name.function.c++
//          ^ meta.group.c++ punctuation.section.group.begin.c++
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//           ^^^ storage.type.c
//               ^^^^ variable.parameter.c++
//                   ^ punctuation.separator.c
//                     ^^^^ storage.type.c
//                          ^^^^^ storage.modifier.c
//                               ^ keyword.operator.arithmetic.c
//                                 ^^^^ variable.parameter.c++
//                                     ^ meta.brackets.square.c++ punctuation.section.brackets.begin.c++
//                                      ^ meta.brackets.square.c punctuation.section.brackets.end.c
//                                       ^ punctuation.section.group.end.c++
//                                         ^ meta.function.c meta.block.c punctuation.section.block.begin

    }
//^^^ meta.function.c meta.block.c 
//  ^ punctuation.section.block.end.c 

/////////////////////////////////////////////
// Preprocessor
/////////////////////////////////////////////

    #include <stdlib.h>
//^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.include.c 
//^^^^^^^^^^ keyword.control.import.c 
//           ^^^^^^^^^^ string.quoted.other.c 
//           ^ punctuation.definition.string.begin.c 
//                    ^ punctuation.definition.string.end.c 
    #include_next "file.h"
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.include.c
//^^^^^^^^^^^^^^^ keyword.control.import.c
//                ^^^^^^^^ string.quoted.double.c
//                ^ punctuation.definition.string.begin.c
//                       ^ punctuation.definition.string.end.c++
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
//                         ^^^^ keyword.declaration.enum.c++
//                                     ^^ keyword.operator.c
//                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c
//                                          ^ punctuation.section.block.begin.c
//                                            ^^^^^^^^^^^ constant.other.variable.mac-classic.c
//                                                        ^ keyword.operator.assignment.c
//                                                            ^^^^^^^^^^ keyword.operator.word.c
//                                                                      ^^^ meta.group.c
//                                                                      ^ punctuation.section.group.begin.c
//                                                                       ^ punctuation.separator.c
//                                                                        ^ punctuation.section.group.end.c
//                                                                          ^^^^^^^^^^^ constant.other.c
//                                                                                      ^ punctuation.section.block.end.c
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
    #
//  ^ keyword.control.c
    #embed "file.txt" if_empty(0)
//^^^^^^^^ keyword.control.import.c
//         ^^^^^^^^^^ string.quoted.double.c
//         ^ punctuation.definition.string.begin.c
//                  ^ punctuation.definition.string.end.c++
//                    ^^^^^^^^ keyword.other.c
//                            ^^^ meta.group.c
//                            ^ punctuation.section.group.begin.c
//                             ^ meta.number.integer.decimal.c constant.numeric.value.c
//                              ^ punctuation.section.group.end.c


    "Hello {}!"_literal
//  ^^^^^^^^^^^^^^^^^^^ string.quoted.double.c
//  ^ punctuation.definition.string.begin.c
//         ^^ constant.other.placeholder.c++
//            ^ punctuation.definition.string.end.c++
//             ^^^^^^^^ variable.function.c++
    'h'_literal
//  ^^^^^^^^^^^ string.quoted.single.c
//  ^ punctuation.definition.string.begin.c
//    ^ punctuation.definition.string.end.c++
//     ^^^^^^^^ variable.function.c++
    R"RAW(
//  ^^^^^^ string.quoted.raw.c++
//  ^ storage.type.string.c++
//   ^ punctuation.definition.string.begin.c++
//    ^^^^ constant.other.placeholder.c++
    raw string )STR"
//^^^^^^^^^^^^^^^^^^ string.quoted.raw.c++
    )RAW"_literal
//^^^^^^^^^^^^^^^ string.quoted.raw.c++
//  ^^^^ constant.other.placeholder.c++
//      ^ punctuation.definition.string.end.c++
//       ^^^^^^^^ variable.function.c++

    using std::cout;
//  ^^^^^^^^^^^^^^^ meta.using.c++
//  ^^^^^ keyword.declaration.c++
//       ^^^^^^^^^^ entity.name.using.c++
//           ^^ punctuation.accessor.double-colon.c++
//                 ^ punctuation.terminator.c
    using namespace std;
//  ^^^^^^^^^^^^^^^^^^^ meta.using.c++
//  ^^^^^ keyword.declaration.c++
//        ^^^^^^^^^ keyword.declaration.c++
//                 ^^^^ entity.name.namespace.c++
//                     ^ punctuation.terminator.c

    and and_eq or or_eq not not_eq xor xor_eq bitand bitor compl
//  ^^^ keyword.operator.logical.c++
//      ^^^^^^ keyword.operator.logical.c++
//             ^^ keyword.operator.logical.c++
//                ^^^^^ keyword.operator.logical.c++
//                      ^^^ keyword.operator.logical.c++
//                          ^^^^^^ keyword.operator.logical.c++
//                                 ^^^ keyword.operator.logical.c++
//                                     ^^^^^^ keyword.operator.logical.c++
//                                            ^^^^^^ keyword.operator.bitwise.c++
//                                                   ^^^^^ keyword.operator.bitwise.c++
//                                                         ^^^^^ keyword.operator.bitwise.c++
    delete new typeid noexcept <=>
//  ^^^^^^ keyword.operator.word.c++
//         ^^^ keyword.operator.word.c++
//             ^^^^^^ keyword.operator.word.c++
//                    ^^^^^^^^ keyword.operator.word.c++
//                             ^^^ keyword.operator.comparison.c++

    constexpr consteval constinit
//  ^^^^^^^^^ storage.modifier.c++
//            ^^^^^^^^^ storage.modifier.c++
//                      ^^^^^^^^^ storage.modifier.c++
    wchar_t wchar8_t wchar16_t wchar32_t
//  ^^^^^^^ storage.type.c++
//          ^^^^^^^^ storage.type.c++
//                   ^^^^^^^^^ storage.type.c++
//                             ^^^^^^^^^ storage.type.c++

    enum class Test {
//  ^^^^^^^^^^^^^^^^^ meta.enum.c
//  ^^^^ keyword.declaration.enum.c++
//       ^^^^^ keyword.declaration.class.c++
//             ^^^^ entity.name.enum.c
//                  ^ punctuation.section.block.begin.c
        A = 314,
//^^^^^^^^^^^^^^ meta.block.c
//      ^ entity.name.constant.c
//        ^ keyword.operator.assignment.c
//          ^^^ meta.number.integer.decimal.c constant.numeric.value.c
//             ^ punctuation.separator.c
        B,
//^^^^^^^^ meta.block.c
//      ^ entity.name.constant.c
//       ^ punctuation.separator.c
    };
//^^ meta.block.c
//  ^ punctuation.section.block.end.c
//   ^ punctuation.terminator.c

    namespace std::mynamespace {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++
//  ^^^^^^^^^ keyword.declaration.namesace.c++
//            ^^^^^^^^^^^^^^^^^ entity.name.namespace.c++
//               ^^ punctuation.accessor.double-colon.c++
//                             ^ meta.block.c++ punctuation.section.block.begin.c++
        std::vector<std::string> const& func(std::string const& a, std::function<void(int, int)> b);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++
//         ^^ punctuation.accessor.double-colon.c++
//                 ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                     ^^ punctuation.accessor.double-colon.c++
//                             ^ punctuation.definition.generic.end.c++
//                               ^^^^^ storage.modifier.c
//                                    ^ keyword.operator.c
//                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//                                      ^^^^ entity.name.function.c++
//                                          ^ meta.group.c++ punctuation.section.group.begin.c++
//                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//                                              ^^ punctuation.accessor.double-colon.c++
//                                                       ^^^^^ storage.modifier.c
//                                                            ^ keyword.operator.bitwise.c++
//                                                              ^ variable.parameter.c++
//                                                               ^ punctuation.separator.c
//                                                                    ^^ punctuation.accessor.double-colon.c++
//                                                                              ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                                                                               ^^^^ storage.type.c
//                                                                                   ^^^^^^^^^^ meta.group.c
//                                                                                   ^ punctuation.section.group.begin.c
//                                                                                    ^^^ storage.type.c
//                                                                                       ^ punctuation.separator.c
//                                                                                         ^^^ storage.type.c
//                                                                                            ^ punctuation.section.group.end.c
//                                                                                             ^ punctuation.definition.generic.end.c++
//                                                                                               ^ variable.parameter.c++
//                                                                                                ^ punctuation.section.group.end.c++
//                                                                                                 ^ punctuation.terminator.c

        template <typename T> auto func(char param1, int param2 = f(20) - g(20)) const -> decltype(T::func(param)) {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++
//      ^^^^^^^^^^^^^^^^^^^^^^ meta.template.c++
//      ^^^^^^^^ keyword.declaration.c++
//               ^ punctuation.definition.generic.begin.c++
//                ^^^^^^^^ keyword.declaration.type.c++
//                         ^ variable.parameter.type.c++
//                          ^ punctuation.section.generic.end.c++
//                            ^^^^ storage.type.c
//                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//                                 ^^^^ entity.name.function.c++
//                                     ^ meta.group.c++ punctuation.section.group.begin.c++
//                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//                                      ^^^^ storage.type.c
//                                           ^^^^^^ variable.parameter.c++
//                                                 ^ punctuation.separator.c
//                                                   ^^^ storage.type.c
//                                                       ^^^^^^ variable.parameter.c++
//                                                              ^ keyword.operator.assignment.c
//                                                                ^ variable.function.c
//                                                                 ^^^^ meta.group.c
//                                                                 ^ punctuation.section.group.begin.c
//                                                                  ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                                                                    ^ punctuation.section.group.end.c
//                                                                      ^ keyword.operator.arithmetic.c
//                                                                        ^ variable.function.c
//                                                                         ^^^^ meta.group.c
//                                                                         ^ punctuation.section.group.begin.c
//                                                                          ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                                                                            ^ punctuation.section.group.end.c
//                                                                             ^ punctuation.section.group.end.c++
//                                                                               ^^^^^ storage.modifier.c
//                                                                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.return-type.c++
//                                                                                     ^^ keyword.operator.arrow.c++
//                                                                                        ^^^^^^^^ keyword.declaration.type.c++
//                                                                                                ^ meta.group.c++ punctuation.section.group.begin.c++
//                                                                                                 ^^^^^^^^^^^^^^^ meta.group.c
//                                                                                                  ^^ punctuation.accessor.double-colon.c++
//                                                                                                    ^^^^ variable.function.c
//                                                                                                        ^^^^^^^ meta.group.c
//                                                                                                        ^ punctuation.section.group.begin.c
//                                                                                                              ^ punctuation.section.group.end.c
//                                                                                                               ^ punctuation.section.group.end.c
//                                                                                                                 ^ meta.function.c meta.block.c punctuation.section.block.begin.c
            try {
//^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c
//          ^^^ keyword.control.exception.c++
//              ^ meta.block.c punctuation.section.block.begin.c
                throw ns::func<T::typename type>(param2);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c meta.block.c
//              ^^^^^ keyword.control.exception.c++
//                      ^^ punctuation.accessor.double-colon.c++
//                        ^^^^ entity.name.function.c++
//                            ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                              ^^ punctuation.accessor.double-colon.c++
//                                ^^^^^^^^ storage.modifier.c++
//                                             ^ punctuation.definition.generic.end.c++
//                                              ^^^^^^^^ meta.function.c
//                                              ^ meta.group.c++ punctuation.section.group.begin.c++
//                                               ^^^^^^ meta.function.parameters.c meta.group.c++
//                                                     ^ punctuation.section.group.end.c++
//                                                      ^ punctuation.terminator.c
            } catch (std::exception const& e) {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c
//^^^^^^^^^^^ meta.block.c
//          ^ punctuation.section.block.end.c
//            ^^^^^ keyword.control.exception.c++
//                  ^ meta.group.c++ punctuation.section.group.begin.c++
//                   ^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//                      ^^ punctuation.accessor.double-colon.c++
//                                  ^^^^^ storage.modifier.c
//                                       ^ keyword.operator.bitwise.c++
//                                         ^ variable.parameter.c++
//                                          ^ punctuation.section.group.end.c++
//                                            ^ meta.block.c punctuation.section.block.begin.c
                co_await func
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c meta.block.c
//              ^^^^^^^^ keyword.control.c++
                <a>(e);
//^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c meta.block.c
//              ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                ^ punctuation.definition.generic.end.c++
//                 ^^^ meta.group.c
//                 ^ punctuation.section.group.begin.c
//                   ^ punctuation.section.group.end.c
//                    ^ punctuation.terminator.c
            } finally {
//^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c
//^^^^^^^^^^^ meta.block.c
//          ^ punctuation.section.block.end.c
//            ^^^^^^^ keyword.control.exception.c++
//                    ^ meta.block.c punctuation.section.block.begin.c
                co_yield func(param1);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c meta.block.c
//              ^^^^^^^^ keyword.control.c++
//                       ^^^^^^^^^^^^ meta.function.c
//                       ^^^^ entity.name.function.c++
//                           ^ meta.group.c++ punctuation.section.group.begin.c++
//                            ^^^^^^ meta.function.parameters.c meta.group.c++
//                                  ^ punctuation.section.group.end.c++
//                                   ^ punctuation.terminator.c
            }
//^^^^^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c meta.block.c
//          ^ punctuation.section.block.end.c

            co_return 7;
//^^^^^^^^^^^^^^^^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c
//          ^^^^^^^^^ keyword.control.c++
//                    ^ meta.number.integer.decimal.c constant.numeric.value.c
//                     ^ punctuation.terminator.c
        }
//^^^^^^^ meta.namespace.c++ meta.block.c++ meta.function.c meta.block.c
//      ^ punctuation.section.block.end.c
    }
//^^^ meta.namespace.c++ meta.block.c++
//  ^ punctuation.section.block.end.c++

    class Type;
//  ^^^^^ keyword.declaration.c++
//        ^^^^ entity.name.class.forward-declare.c++
//            ^ punctuation.terminator.c

    template <template<class> class V,
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.template.c++
//  ^^^^^^^^ keyword.declaration.c++
//           ^ punctuation.definition.generic.begin.c++
//            ^^^^^^^^^^^^^^^^ meta.template.c++
//            ^^^^^^^^ keyword.declaration.c++
//                    ^ punctuation.definition.generic.begin.c++
//                     ^^^^^ keyword.declaration.type.c++
//                          ^ punctuation.section.generic.end.c++
//                            ^^^^^ keyword.declaration.type.c++
//                                  ^ variable.parameter.type.c++
//                                   ^ punctuation.separator.c
                typename ...Args> requires std::same_as<V<int>, std::string>
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.template.c++
//              ^^^^^^^^ keyword.declaration.type.c++
//                       ^^^ keyword.operator.variadic.c
//                          ^^^^ variable.parameter.type.c++
//                              ^ punctuation.section.generic.end.c++
//                                ^^^^^^^^ storage.modifier.c++
//                                            ^^ punctuation.accessor.double-colon.c++
//                                                     ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                                                       ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                                                        ^^^ storage.type.c
//                                                           ^ punctuation.definition.generic.end.c++
//                                                            ^ punctuation.separator.c
//                                                                 ^^ punctuation.accessor.double-colon.c++
//                                                                         ^ punctuation.definition.generic.end.c++
    struct MACRO Type<V<char>> MACRO final : D<Type<int>> {
//  ^^^^^^ keyword.declaration.c++
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.c++
//               ^^^^ entity.name.class.c++
//                   ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                     ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                      ^^^^ storage.type.c
//                          ^^ punctuation.definition.generic.end.c++
//                                   ^^^^^ storage.modifier.c++
//                                         ^ punctuation.separator.inheritance.c++
//                                           ^^^^^^^^^^^^^ entity.other.inherited-class.c++
//                                            ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                                                 ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                                                  ^^^ storage.type.c
//                                                     ^^ punctuation.definition.generic.end.c++
//                                                        ^ meta.block.c++ meta.class.c++ meta.block.c++ punctuation.section.block.begin.c++
    private:
//^^^^^^^^^^ meta.block.c++ meta.class.c++
//  ^^^^^^^^ storage.modifier.c++
        alignas(20) std::string m_value1;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^^^^ storage.modifier.c++
//             ^^^^ meta.group.c
//             ^ punctuation.section.group.begin.c
//              ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                ^ punctuation.section.group.end.c
//                     ^^ punctuation.accessor.double-colon.c++
//                              ^^^^^^^^ variable.other.readwrite.member.c++
//                                      ^ punctuation.terminator.c
    protected:
//^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//  ^^^^^^^^^^ storage.modifier.c++
        int m_value2;
//^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^ storage.type.c
//          ^^^^^^^^ variable.other.readwrite.member.c++
//                  ^ punctuation.terminator.c
        friend class V;
//^^^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^^^ keyword.other.c++
//             ^^^^^ keyword.declaration.c++
//                   ^ entity.name.class.forward-declare.c++
//                    ^ punctuation.terminator.c
        friend void someFunc();
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^^^ keyword.other.c++
//             ^^^^ storage.type.c
//                  ^^^^^^^^^^ meta.function.c
//                  ^^^^^^^^ entity.name.function.c++
//                          ^ meta.group.c++ punctuation.section.group.begin.c++
//                           ^ punctuation.section.group.end.c++
//                            ^ punctuation.terminator.c
    public:
//^^^^^^^^^ meta.block.c++ meta.class.c++
//  ^^^^^^^ storage.modifier.c++
        Type() && : m_value1("a"), m_value2(10);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//      ^^^^ entity.name.function.c++
//          ^ meta.group.c++ punctuation.section.group.begin.c++
//           ^ punctuation.section.group.end.c++
//             ^^ keyword.operator.logical.c
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.initializer-list.c++
//                ^ punctuation.separator.initializer-list.begin.c++
//                  ^^^^^^^^ variable.other.readwrite.member.c++
//                          ^ meta.group.c++ punctuation.section.group.begin.c++
//                           ^^^^ meta.group.c
//                           ^^^ string.quoted.double.c
//                           ^ punctuation.definition.string.begin.c
//                             ^ punctuation.definition.string.end.c++
//                              ^ punctuation.section.group.end.c
//                               ^ punctuation.separator.c
//                                 ^^^^^^^^ variable.other.readwrite.member.c++
//                                         ^ meta.group.c++ punctuation.section.group.begin.c++
//                                          ^^^ meta.group.c
//                                          ^^ meta.number.integer.decimal.c constant.numeric.value.c
//                                            ^ punctuation.section.group.end.c
//                                             ^ punctuation.terminator.c
        ~Type() = default;
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^^^^^^^^^^^^^^ meta.function.c
//      ^^^^^ entity.name.function.c++
//           ^ meta.group.c++ punctuation.section.group.begin.c++
//            ^ punctuation.section.group.end.c++
//              ^ keyword.operator.assignment.c
//                ^^^^^^^ keyword.control.c
//                       ^ punctuation.terminator.c
        explicit Type(int) = delete;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^^^^^ storage.modifier.c++
//               ^^^^^^^^^^^^^^^^^^ meta.function.c
//               ^^^^ entity.name.function.c++
//                   ^ meta.group.c++ punctuation.section.group.begin.c++
//                    ^^^ meta.function.parameters.c meta.group.c++ storage.type.c
//                       ^ punctuation.section.group.end.c++
//                         ^ keyword.operator.assignment.c
//                           ^^^^^^ keyword.operator.word.c++
//                                 ^ punctuation.terminator.c

        template <>
//^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//      ^^^^^^^^^^^ meta.template.c++
//      ^^^^^^^^ keyword.declaration.c++
//               ^ punctuation.definition.generic.begin.c++
//                ^ punctuation.section.generic.end.c++
        std::string const& doThing() const requires requires(std::tuple<Args...> a) { a.get<0>().runThing(); } {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++
//^^^^^^ meta.template.c++
//         ^^ punctuation.accessor.double-colon.c++
//                  ^^^^^ storage.modifier.c
//                       ^ keyword.operator.c
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//                         ^^^^^^^ entity.name.function.c++
//                                ^ meta.group.c++ punctuation.section.group.begin.c++
//                                 ^ punctuation.section.group.end.c++
//                                   ^^^^^ storage.modifier.c
//                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.requires.c++
//                                         ^^^^^^^^ storage.modifier.c++
//                                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//                                                  ^^^^^^^^ keyword.operator.word.c++
//                                                          ^ meta.group.c++ punctuation.section.group.begin.c++
//                                                           ^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//                                                              ^^ punctuation.accessor.double-colon.c++
//                                                                     ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                                                                          ^^^ keyword.operator.variadic.c
//                                                                             ^ punctuation.definition.generic.end.c++
//                                                                               ^ variable.parameter.c++
//                                                                                ^ punctuation.section.group.end.c++
//                                                                                  ^ meta.function.c meta.block.c punctuation.section.block.begin.c
//                                                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c
//                                                                                     ^ punctuation.accessor.dot.c
//                                                                                      ^^^ entity.name.function.c++
//                                                                                         ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                                                                                          ^ meta.number.integer.decimal.c constant.numeric.value.c
//                                                                                           ^ punctuation.definition.generic.end.c++
//                                                                                            ^ meta.group.c++ punctuation.section.group.begin.c++
//                                                                                             ^ meta.group.c punctuation.section.group.end.c
//                                                                                              ^ punctuation.accessor.dot.c
//                                                                                               ^^^^^^^^ variable.function.c
//                                                                                                       ^^ meta.group.c
//                                                                                                       ^ punctuation.section.group.begin.c
//                                                                                                        ^ punctuation.section.group.end.c
//                                                                                                         ^ punctuation.terminator.c
//                                                                                                           ^ punctuation.section.block.end.c
//                                                                                                             ^ meta.function.c meta.block.c punctuation.section.block.begin.c
            return this->m_value1;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c++ meta.class.c++ meta.function.c meta.block.c
//          ^^^^^^ keyword.control.flow.return.c
//                 ^^^^ variable.language.c++
//                     ^^ punctuation.accessor.dot.c
//                       ^^^^^^^^ variable.other.readwrite.member.c
//                               ^ punctuation.terminator.c
        }
//^^^^^^^ meta.block.c++ meta.class.c++ meta.function.c meta.block.c
//      ^ punctuation.section.block.end.c
    };
//^^^ meta.block.c++ meta.class.c++
//  ^ meta.block.c++ punctuation.section.block.end.c++
//   ^ punctuation.terminator.c

    export {
//  ^^^^^^ keyword.other.c++
//         ^ meta.block.c punctuation.section.block.begin.c
        class A : protected A, private B, public C {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c
//      ^^^^^ keyword.declaration.c++
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.c++
//            ^ entity.name.class.c++
//              ^ punctuation.separator.inheritance.c++
//                ^^^^^^^^^ storage.modifier.c++
//                          ^ entity.other.inherited-class.c++
//                           ^ punctuation.separator.c
//                             ^^^^^^^ storage.modifier.c++
//                                     ^ entity.other.inherited-class.c++
//                                      ^ punctuation.separator.c
//                                        ^^^^^^ storage.modifier.c++
//                                               ^^ entity.other.inherited-class.c++
//                                                 ^ meta.block.c++ meta.class.c++ meta.block.c++ punctuation.section.block.begin.c++
            virtual void vfunc();
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c meta.block.c++ meta.class.c++
//          ^^^^^^^ storage.modifier.c++
//                  ^^^^ storage.type.c
//                       ^^^^^^^ meta.function.c
//                       ^^^^^ entity.name.function.c++
//                            ^ meta.group.c++ punctuation.section.group.begin.c++
//                             ^ punctuation.section.group.end.c++
//                              ^ punctuation.terminator.c
            bool operator ==(A const&) const;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c meta.block.c++ meta.class.c++
//          ^^^^ storage.type.c
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//               ^^^^^^^^ keyword.operator.c++
//                        ^^ entity.name.function.c++
//                          ^ meta.group.c++ punctuation.section.group.begin.c++
//                           ^^^^^^^^ meta.function.parameters.c meta.group.c++
//                             ^^^^^ storage.modifier.c
//                                  ^ keyword.operator.bitwise.c++
//                                   ^ punctuation.section.group.end.c++
//                                     ^^^^^ storage.modifier.c
//                                          ^ punctuation.terminator.c
            int operator<=>(A const&) const;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c meta.block.c++ meta.class.c++
//          ^^^ storage.type.c
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//              ^^^^^^^^ keyword.operator.c++
//                      ^^^ entity.name.function.c++
//                         ^ meta.group.c++ punctuation.section.group.begin.c++
//                          ^^^^^^^^ meta.function.parameters.c meta.group.c++
//                            ^^^^^ storage.modifier.c
//                                 ^ keyword.operator.bitwise.c++
//                                  ^ punctuation.section.group.end.c++
//                                    ^^^^^ storage.modifier.c
//                                         ^ punctuation.terminator.c
        };
//^^^^^^^^ meta.block.c
//^^^^^^^ meta.block.c++ meta.class.c++
//      ^ meta.block.c++ punctuation.section.block.end.c++
//       ^ punctuation.terminator.c
        unsigned long long operator ""_label(unsigned long long a) const;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c
//      ^^^^^^^^ storage.type.c
//               ^^^^ storage.type.c
//                    ^^^^ storage.type.c
//                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//                         ^^^^^^^^ keyword.operator.c++
//                                  ^^^^^^^^ entity.name.function.c++
//                                          ^ meta.group.c++ punctuation.section.group.begin.c++
//                                           ^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//                                           ^^^^^^^^ storage.type.c
//                                                    ^^^^ storage.type.c
//                                                         ^^^^ storage.type.c
//                                                              ^ variable.parameter.c++
//                                                               ^ punctuation.section.group.end.c++
//                                                                 ^^^^^ storage.modifier.c
//                                                                      ^ punctuation.terminator.c
    }
//^^^ meta.block.c
//  ^ punctuation.section.block.end.c

    void A::vfunc() {
//  ^^^^ storage.type.c
//        ^^ punctuation.accessor.double-colon.c++
//          ^^^^^ variable.function.c
//               ^^ meta.group.c
//               ^ punctuation.section.group.begin.c
//                ^ punctuation.section.group.end.c
//                  ^ meta.block.c punctuation.section.block.begin.c
        auto lambda = [=] mutable -> std::string {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c
//      ^^^^ storage.type.c
//                  ^ keyword.operator.assignment.c
//                    ^^ meta.lambda.c++
//                    ^ meta.brackets.square.c++ punctuation.section.brackets.begin.c++
//                     ^ storage.modifier.capture.c++
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//                      ^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//                      ^ punctuation.section.brackets.end.c++
//                        ^^^^^^^ storage.modifier.c++
//                                ^^^^^^^^ meta.function.return-type.c++
//                                ^^ keyword.operator.arrow.c++
//                                      ^^ punctuation.accessor.double-colon.c++
//                                               ^ meta.function.c meta.block.c punctuation.section.block.begin.c
            return "test";
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c meta.function.c meta.block.c
//          ^^^^^^ keyword.control.flow.return.c
//                 ^^^^^^ string.quoted.double.c
//                 ^ punctuation.definition.string.begin.c
//                      ^ punctuation.definition.string.end.c++
//                       ^ punctuation.terminator.c
        };
//^^^^^^^^ meta.block.c
//^^^^^^^ meta.function.c meta.block.c
//      ^ punctuation.section.block.end.c
//       ^ punctuation.terminator.c

        ([&, this, lambda]<typename T>(int a, char b) {
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.c
//      ^ punctuation.section.group.begin.c
//       ^^ meta.lambda.c++
//       ^ meta.brackets.square.c++ punctuation.section.brackets.begin.c++
//        ^ storage.modifier.capture.c++
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c meta.group.c++
//         ^ punctuation.separator.c
//           ^^^^ entity.other.lambda-capture.c++ variable.parameter.c++
//               ^ punctuation.separator.c
//                 ^^^^^^ entity.other.lambda-capture.c++ variable.parameter.c++
//                       ^ punctuation.section.brackets.end.c++
//                        ^^^^^^^^^^^^ meta.template.c++
//                        ^ punctuation.definition.generic.begin.c++
//                         ^^^^^^^^ keyword.declaration.type.c++
//                                  ^ variable.parameter.type.c++
//                                   ^ punctuation.section.generic.end.c++
//                                    ^ meta.group.c++ punctuation.section.group.begin.c++
//                                     ^^^ storage.type.c
//                                         ^ variable.parameter.c++
//                                          ^ punctuation.separator.c
//                                            ^^^^ storage.type.c
//                                                 ^ variable.parameter.c++
//                                                  ^ punctuation.section.group.end.c++
//                                                    ^ meta.function.c meta.block.c punctuation.section.block.begin.c

        })(5, 10);
//^^^^^^^^^^^^^^^^ meta.block.c
//^^^^^^^^^^^^^^^ meta.group.c
//^^^^^^^ meta.function.c meta.block.c
//      ^ punctuation.section.block.end.c
//       ^ punctuation.section.group.end.c
//        ^ punctuation.section.group.begin.c
//         ^ meta.number.integer.decimal.c constant.numeric.value.c
//          ^ punctuation.separator.c
//            ^^ meta.number.integer.decimal.c constant.numeric.value.c
//              ^ punctuation.section.group.end.c
//               ^ punctuation.terminator.c

        auto somestruct = {
//^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c
//      ^^^^ storage.type.c
//                      ^ keyword.operator.assignment.c
//                        ^ meta.block.c punctuation.section.block.begin.c
            .thing = 5, "200", .other = lambda
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c meta.block.c
//          ^ punctuation.accessor.dot.c
//           ^^^^^ variable.other.readwrite.member.c
//                 ^ keyword.operator.assignment.c
//                   ^ meta.number.integer.decimal.c constant.numeric.value.c
//                    ^ punctuation.separator.c
//                      ^^^^^ string.quoted.double.c
//                      ^ punctuation.definition.string.begin.c
//                          ^ punctuation.definition.string.end.c++
//                           ^ punctuation.separator.c
//                             ^ punctuation.accessor.dot.c
//                              ^^^^^ variable.other.readwrite.member.c
//                                    ^ keyword.operator.assignment.c
        };
//^^^^^^^^ meta.block.c
//^^^^^^^ meta.block.c
//      ^ punctuation.section.block.end.c
//       ^ punctuation.terminator.c
    }
//^^^ meta.block.c
//  ^ punctuation.section.block.end.c

    A::~A() {
//   ^^ punctuation.accessor.double-colon.c++
//     ^^ variable.function.c++
//       ^ punctuation.section.group.begin.c++
//        ^ meta.group.c punctuation.section.group.end.c
//          ^ meta.block.c punctuation.section.block.begin.c
        delete this;
//^^^^^^^^^^^^^^^^^^ meta.block.c
//      ^^^^^^ keyword.operator.word.c++
//             ^^^^ variable.language.c++
//                 ^ punctuation.terminator.c
    }
//^^^ meta.block.c
//  ^ punctuation.section.block.end.c

    template <typename T>
//  ^^^^^^^^^^^^^^^^^^^^^ meta.template.c++
//  ^^^^^^^^ keyword.declaration.c++
//           ^ punctuation.definition.generic.begin.c++
//            ^^^^^^^^ keyword.declaration.type.c++
//                     ^ variable.parameter.type.c++
//                      ^ punctuation.section.generic.end.c++
    concept MyConcept<T> = std::same_as<T, void> || requires(T a) { something(a) == 0; };
//^^ meta.template.c++
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concept.c++
//  ^^^^^^^ keyword.declaration.c++
//          ^^^^^^^^^ entity.name.concept.c++
//                   ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                     ^ punctuation.definition.generic.end.c++
//                       ^ keyword.operator.assignment.c
//                            ^^ punctuation.accessor.double-colon.c++
//                                     ^ meta.template.c++ punctuation.definition.generic.begin.c++
//                                       ^ punctuation.separator.c
//                                         ^^^^ storage.type.c
//                                             ^ punctuation.definition.generic.end.c++
//                                               ^^ keyword.operator.logical.c
//                                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c
//                                                  ^^^^^^^^ keyword.operator.word.c++
//                                                          ^ meta.group.c++ punctuation.section.group.begin.c++
//                                                           ^^^ meta.function.parameters.c meta.group.c++
//                                                             ^ variable.parameter.c++
//                                                              ^ punctuation.section.group.end.c++
//                                                                ^ meta.function.c meta.block.c punctuation.section.block.begin.c
//                                                                 ^^^^^^^^^^^^^^^^^^^^^ meta.block.c
//                                                                  ^^^^^^^^^ variable.function.c
//                                                                           ^^^ meta.group.c
//                                                                           ^ punctuation.section.group.begin.c
//                                                                             ^ punctuation.section.group.end.c
//                                                                               ^^ keyword.operator.assignment.c
//                                                                                  ^ meta.number.integer.decimal.c constant.numeric.value.c
//                                                                                   ^ punctuation.terminator.c
//                                                                                     ^ punctuation.section.block.end.c
//                                                                                      ^ punctuation.terminator.c

    export module test.module:part;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concept.c++
//  ^^^^^^ keyword.other.c++
//         ^^^^^^ keyword.declaration.module.c++
//               ^^^^^^^^^^^^^^^^^ entity.name.module.c++
//                    ^ punctuation.accessor.dot.c++
//                           ^ punctuation.separator.partition.c++
//                                ^ punctuation.terminator.c
    module test.module:part;
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concept.c++
//  ^^^^^^ keyword.declaration.module.c++
//        ^^^^^^^^^^^^^^^^^ entity.name.module.c++
//             ^ punctuation.accessor.dot.c++
//                    ^ punctuation.separator.partition.c++
//                         ^ punctuation.terminator.c
    import test.module:part;
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concept.c++
//  ^^^^^^ keyword.other.import.c++
//        ^^^^^^^^^^^^^^^^^ entity.name.module.c++
//             ^ punctuation.accessor.dot.c++
//                    ^ punctuation.separator.partition.c++
//                         ^ punctuation.terminator.c
