/* SYNTAX TEST "Packages/C++/C.sublime-syntax" */

    // Comment
/*  ^^^^^^^^^^ comment.line.double-slash.c */
/*  ^^ punctuation.definition.comment.c */

    // My \
    Comment
/*^^^^^^^^^ comment.line.double-slash.c */

    /* Foo Bar Baz*/
/*  ^^^^^^^^^^^^^^^^ comment.block.c */
/*  ^^ punctuation.definition.comment.c */
/*                ^^ punctuation.definition.comment.c */

    */
/*  ^^ invalid.illegal.stray-comment-end.c-2 */

/////////////////////////////////////////////
// Numbers
/////////////////////////////////////////////

    1234567890
/*  ^^^^^^^^^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
    1'234'567'890
/*  ^^^^^^^^^^^^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */

    0x123456789abcdef
/*  ^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.c-2 */
/*  ^^ constant.numeric.base.c-2 */
/*    ^^^^^^^^^^^^^^^ constant.numeric.value.c-2 */
    0x123'456'789'abc'def
/*  ^^^^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.c-2 */
/*  ^^ constant.numeric.base.c-2 */
/*    ^^^^^^^^^^^^^^^^^^^ constant.numeric.value.c-2 */
    012345670
/*  ^^^^^^^^^ meta.number.integer.octal.c-2 */
/*  ^ constant.numeric.base.c-2 */
/*   ^^^^^^^^ constant.numeric.value.c-2 */
    012'345'670
/*  ^^^^^^^^^^^ meta.number.integer.octal.c-2 */
/*  ^ constant.numeric.base.c-2 */
/*   ^^^^^^^^^^ constant.numeric.value.c-2 */
    0b100110
/*  ^^^^^^^^ meta.number.integer.binary.c-2 */
/*  ^^ constant.numeric.base.c-2 */
/*    ^^^^^^ constant.numeric.value.c-2 */
    0b100'110
/*  ^^^^^^^^^ meta.number.integer.binary.c-2 */
/*  ^^ constant.numeric.base.c-2 */
/*    ^^^^^^^ constant.numeric.value.c-2 */

    314lUJ 314uLLj 314iLu 314llI 314F 314f
/*  ^^^^^^ meta.number.integer.decimal.c-2 */
/*  ^^^ constant.numeric.value.c-2 */
/*     ^^^ constant.numeric.suffix.c-2 */
/*         ^^^^^^^ meta.number.integer.decimal.c-2 */
/*         ^^^ constant.numeric.value.c-2 */
/*            ^^^^ constant.numeric.suffix.c-2 */
/*                 ^^^^^^ meta.number.integer.decimal.c-2 */
/*                 ^^^ constant.numeric.value.c-2 */
/*                    ^^^ constant.numeric.suffix.c-2 */
/*                        ^^^^^^ meta.number.integer.decimal.c-2 */
/*                        ^^^ constant.numeric.value.c-2 */
/*                           ^^^ constant.numeric.suffix.c-2 */
/*                               ^^^^ meta.number.float.decimal.c-2 */
/*                               ^^^ constant.numeric.value.c-2 */
/*                                  ^ constant.numeric.suffix.c-2 */
/*                                    ^^^^ meta.number.float.decimal.c-2 */
/*                                    ^^^ constant.numeric.value.c-2 */
/*                                       ^ constant.numeric.suffix.c-2 */
    3.14f 314.l 3.14L
/*  ^^^^^ meta.number.float.decimal.c-2 */
/*  ^^^^ constant.numeric.value.c-2 */
/*   ^ punctuation.separator.decimal.c-2 */
/*      ^ constant.numeric.suffix.c-2 */
/*        ^^^^^ meta.number.float.decimal.c-2 */
/*        ^^^^ constant.numeric.value.c-2 */
/*           ^ punctuation.separator.decimal.c-2 */
/*            ^ constant.numeric.suffix.c-2 */
/*              ^^^^^ meta.number.float.decimal.c-2 */
/*              ^^^^ constant.numeric.value.c-2 */
/*               ^ punctuation.separator.decimal.c-2 */
/*                  ^ constant.numeric.suffix.c-2 */
    314e15 3.14e-15
/*  ^^^^^^ meta.number.float.decimal.c-2 constant.numeric.value.c-2 */
/*         ^^^^^^^^ meta.number.float.decimal.c-2 constant.numeric.value.c-2 */
/*          ^ punctuation.separator.decimal.c-2 */
    0xdead.beefp+7f
/*  ^^^^^^^^^^^^^^^ meta.number.float.hexadecimal.c-2 */
/*  ^^ constant.numeric.base.c-2 */
/*    ^^^^^^^^^^^^ constant.numeric.value.c-2 */
/*        ^ punctuation.separator.decimal.c-2 */
/*                ^ constant.numeric.suffix.c-2 */
    012345670 0314llU
/*  ^^^^^^^^^ meta.number.integer.octal.c-2 */
/*  ^ constant.numeric.base.c-2 */
/*   ^^^^^^^^ constant.numeric.value.c-2 */
/*            ^^^^^^^ meta.number.integer.octal.c-2 */
/*            ^ constant.numeric.base.c-2 */
/*             ^^^ constant.numeric.value.c-2 */
/*                ^^^ constant.numeric.suffix.c-2 */
    0b10 0b10iLu
/*  ^^^^ meta.number.integer.binary.c-2 */
/*  ^^ constant.numeric.base.c-2 */
/*    ^^ constant.numeric.value.c-2 */
/*       ^^^^^^^ meta.number.integer.binary.c-2 */
/*       ^^ constant.numeric.base.c-2 */
/*         ^^ constant.numeric.value.c-2 */
/*           ^^^ constant.numeric.suffix.c-2 */

    0271828 0b10410 0xbag50 314a123
/*  ^^^^^^^ meta.number.integer.octal.c-2 */
/*  ^ constant.numeric.base.c-2 */
/*   ^^^ constant.numeric.value.c-2 */
/*      ^^^ invalid.illegal.numeric.suffix.c-2 */
/*          ^^^^^^^ meta.number.integer.binary.c-2 */
/*          ^^ constant.numeric.base.c-2 */
/*            ^^ constant.numeric.value.c-2 */
/*              ^^^ invalid.illegal.numeric.suffix.c-2 */
/*                  ^^^^^^^ meta.number.integer.hexadecimal.c-2 */
/*                  ^^ constant.numeric.base.c-2 */
/*                    ^^ constant.numeric.value.c-2 */
/*                      ^^^ invalid.illegal.numeric.suffix.c-2 */
/*                          ^^^^^^^ meta.number.integer.decimal.c-2 */
/*                          ^^^ constant.numeric.value.c-2 */
/*                             ^^^^ invalid.illegal.numeric.suffix.c-2 */
    314Ll 314lul 314iJ 314.ll 314.lf
/*  ^^^^^ meta.number.integer.decimal.c-2 */
/*  ^^^ constant.numeric.value.c-2 */
/*     ^^ invalid.illegal.numeric.suffix.c-2 */
/*        ^^^^^^ meta.number.integer.decimal.c-2 */
/*        ^^^ constant.numeric.value.c-2 */
/*           ^^^ invalid.illegal.numeric.suffix.c-2 */
/*               ^^^^^ meta.number.integer.decimal.c-2 */
/*               ^^^ constant.numeric.value.c-2 */
/*                  ^^ invalid.illegal.numeric.suffix.c-2 */
/*                     ^^^^^^ meta.number.float.decimal.c-2 */
/*                     ^^^^ constant.numeric.value.c-2 */
/*                        ^ punctuation.separator.decimal.c-2 */
/*                         ^ constant.numeric.suffix.c-2 */
/*                          ^ invalid.illegal.numeric.suffix.c-2 */
/*                            ^^^^^^ meta.number.float.decimal.c-2 */
/*                            ^^^^ constant.numeric.value.c-2 */
/*                               ^ punctuation.separator.decimal.c-2 */
/*                                ^ constant.numeric.suffix.c-2 */
/*                                 ^ invalid.illegal.numeric.suffix.c-2 */
    0x314.1p5af 0b10e20 314e+30llu
/*  ^^^^^^^^^^^ meta.number.float.hexadecimal.c-2 */
/*  ^^ constant.numeric.base.c-2 */
/*    ^^^^^^^ constant.numeric.value.c-2 */
/*       ^ punctuation.separator.decimal.c-2 */
/*           ^^ invalid.illegal.numeric.suffix.c-2 */
/*              ^^^^^^^ meta.number.integer.binary.c-2 */
/*              ^^ constant.numeric.base.c-2 */
/*                ^^ constant.numeric.value.c-2 */
/*                  ^^^ invalid.illegal.numeric.suffix.c-2 */
/*                      ^^^^^^^^^^ meta.number.float.decimal.c-2 */
/*                      ^^^^^^^ constant.numeric.value.c-2 */
/*                             ^ constant.numeric.suffix.c-2 */
/*                              ^^ invalid.illegal.numeric.suffix.c-2 */

/////////////////////////////////////////////
// Operators
/////////////////////////////////////////////

    1 + 2 - 3 * 4 / 5 % 6
/*  ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*    ^ keyword.operator.arithmetic.c-2 */
/*      ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*        ^ keyword.operator.arithmetic.c-2 */
/*          ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*            ^ keyword.operator.arithmetic.c-2 */
/*              ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                ^ keyword.operator.arithmetic.c-2 */
/*                  ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                    ^ keyword.operator.arithmetic.c-2 */
/*                      ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
    1 | 2 & 3 ^ 4 >> 5 << 6
/*  ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*    ^ keyword.operator.bitwise.c-2 */
/*      ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*        ^ keyword.operator.bitwise.c-2 */
/*          ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*            ^ keyword.operator.bitwise.c-2 */
/*              ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                ^^ keyword.operator.bitwise.c-2 */
/*                   ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                     ^^ keyword.operator.bitwise.c-2 */
/*                        ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
    1 > 2 >= 3 == 4 != 5 <= 6 < 7
/*  ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*    ^ keyword.operator.comparison.c-2 */
/*      ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*        ^^ keyword.operator.comparison.c-2 */
/*           ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*             ^^ keyword.operator.assignment.c-2 */
/*                ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                  ^ keyword.operator.arithmetic.c-2 */
/*                   ^ keyword.operator.assignment.c-2 */
/*                     ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                       ^^ keyword.operator.comparison.c-2 */
/*                          ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                            ^ keyword.operator.comparison.c-2 */
/*                              ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
    !1 ? -2 : ~3
/*  ^ keyword.operator.arithmetic.c-2 */
/*   ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*     ^ keyword.operator.ternary.c-2 */
/*       ^ keyword.operator.arithmetic.c-2 */
/*        ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*          ^ keyword.operator.ternary.c-2 */
/*            ^ keyword.operator.bitwise.c-2 */
/*             ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
    0 += 1 -= 2 *= 3 /= 4 %= 5 |= 6 &= 7 ^= 8 >>= 9 <<= 10
/*  ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*    ^^ keyword.operator.assignment.augmented.c-2 */
/*       ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*         ^^ keyword.operator.assignment.augmented.c-2 */
/*            ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*              ^^ keyword.operator.assignment.augmented.c-2 */
/*                 ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                   ^^ keyword.operator.assignment.augmented.c-2 */
/*                      ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                        ^^ keyword.operator.assignment.augmented.c-2 */
/*                           ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                             ^^ keyword.operator.assignment.augmented.c-2 */
/*                                ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                                  ^^ keyword.operator.assignment.augmented.c-2 */
/*                                     ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                                       ^^ keyword.operator.assignment.augmented.c-2 */
/*                                          ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                                            ^^^ keyword.operator.assignment.augmented.c-2 */
/*                                                ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                                                  ^^^ keyword.operator.assignment.augmented.c-2 */
/*                                                      ^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
    sizeof(a) alignof(b) _Alignof(c) offsetof(c) static_assert(d) _Static_assert(d)
/*  ^^^^^^ keyword.operator.word.c-2 */
/*        ^^^ meta.group.c-2 */
/*        ^ punctuation.section.group.begin */
/*          ^ punctuation.section.group.end */
/*            ^^^^^^^ keyword.operator.word.c-2 */
/*                   ^^^ meta.group.c-2 */
/*                   ^ punctuation.section.group.begin */
/*                     ^ punctuation.section.group.end */
/*                       ^^^^^^^^ keyword.operator.word.c-2 */
/*                               ^^^ meta.group.c-2 */
/*                               ^ punctuation.section.group.begin */
/*                                 ^ punctuation.section.group.end */
/*                                   ^^^^^^^^ keyword.operator.word.c-2 */
/*                                           ^^^ meta.group.c-2 */
/*                                           ^ punctuation.section.group.begin */
/*                                             ^ punctuation.section.group.end */
/*                                               ^^^^^^^^^^^^^ keyword.operator.word.c-2 */
/*                                                            ^^^ meta.group.c-2 */
/*                                                            ^ punctuation.section.group.begin */
/*                                                              ^ punctuation.section.group.end */
/*                                                                ^^^^^^^^^^^^^^ keyword.operator.word.c-2 */
/*                                                                              ^^^ meta.group.c-2 */
/*                                                                              ^ punctuation.section.group.begin */
/*                                                                                ^ punctuation.section.group.end */
    a,b = b.c;
/*   ^ punctuation.separator.c-2 */
/*      ^ keyword.operator.assignment.c-2 */
/*         ^ punctuation.accessor.c-2 */
/*           ^ punctuation.terminator.c-2 */

/////////////////////////////////////////////
// Strings
/////////////////////////////////////////////

    "abc123" L"abc123" u8"abc123" u"abc123" U"abc123" 'abc123' L'abc123'
/*  ^^^^^^^^ string.quoted.double.c-2 */
/*  ^ punctuation.definition.string.begin.c-2 */
/*         ^ punctuation.definition.string.end.c-2 */
/*           ^^^^^^^^^ string.quoted.double.c-2 */
/*           ^ storage.type.string.c-2 */
/*            ^ punctuation.definition.string.begin.c-2 */
/*                   ^ punctuation.definition.string.end.c-2 */
/*                     ^^^^^^^^^^ string.quoted.double.c-2 */
/*                     ^^ storage.type.string.c-2 */
/*                       ^ punctuation.definition.string.begin.c-2 */
/*                              ^ punctuation.definition.string.end.c-2 */
/*                                ^^^^^^^^^ string.quoted.double.c-2 */
/*                                ^ storage.type.string.c-2 */
/*                                 ^ punctuation.definition.string.begin.c-2 */
/*                                        ^ punctuation.definition.string.end.c-2 */
/*                                          ^^^^^^^^^ string.quoted.double.c-2 */
/*                                          ^ storage.type.string.c-2 */
/*                                           ^ punctuation.definition.string.begin.c-2 */
/*                                                  ^ punctuation.definition.string.end.c-2 */
/*                                                    ^^^^^^^^ string.quoted.single.c-2 */
/*                                                    ^ punctuation.definition.string.begin.c-2 */
/*                                                           ^ punctuation.definition.string.end.c-2 */
/*                                                             ^^^^^^^^^ string.quoted.single.c-2 */
/*                                                             ^ storage.type.string.c-2 */
/*                                                              ^ punctuation.definition.string.begin.c-2 */
/*                                                                     ^ punctuation.definition.string.end.c-2 */
    "\a\b\f\n\r\t\v\e\E\314\xabc\u3141\U15926535\\\"\'\?\0\7"
/*  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.c-2 */
/*  ^ punctuation.definition.string.begin.c-2 */
/*   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape.c-2 */
/*                                                          ^ punctuation.definition.string.end.c-2 */
    '\u\w\x\y\z\/'
/*  ^^^^^^^^^^^^^^ string.quoted.single.c-2 */
/*  ^ punctuation.definition.string.begin.c-2 */
/*   ^^^^^^^^^^^^ invalid.illegal.unknown-escape.c-2 */
/*               ^ punctuation.definition.string.end.c-2 */
    "%ms %as %*[, ]"
/*  ^^^^^^^^^^^^^^^^ string.quoted.double.c-2 */
/*  ^ punctuation.definition.string.begin.c-2 */
/*   ^^^ constant.other.placeholder.c */
/*       ^^^ constant.other.placeholder.c */
/*           ^^^^^^ constant.other.placeholder.c */
/*                 ^ punctuation.definition.string.end.c-2 */
    "314 \
/*  ^^^^^^ string.quoted.double.c-2 */
/*  ^ punctuation.definition.string.begin.c-2 */
/*       ^ punctuation.separator.continuation.c-2 */
     159"
/*^^^^^^^ string.quoted.double.c-2 */
/*      ^ punctuation.definition.string.end.c-2 */

/////////////////////////////////////////////
// Constants
/////////////////////////////////////////////

    true TRUE false FALSE NULL __func__
/*  ^^^^ constant.language.boolean.true.c-2 */
/*       ^^^^ constant.language.boolean.true.c-2 */
/*            ^^^^^ constant.language.boolean.false.c-2 */
/*                  ^^^^^ constant.language.boolean.false.c-2 */
/*                        ^^^^ constant.language.null.c-2 */
/*                             ^^^^^^^^ constant.language.c-2 */
    __FILE__ __LINE__ __DATE__ __TIME__ __STDC__ __STDC_VERSION__ __GNUC__ __clang__ __cplusplus
/*  ^^^^^^^^ support.constant.c-2 */
/*           ^^^^^^^^ support.constant.c-2 */
/*                    ^^^^^^^^ support.constant.c-2 */
/*                             ^^^^^^^^ support.constant.c-2 */
/*                                      ^^^^^^^^ support.constant.c-2 */
/*                                               ^^^^^^^^^^^^^^^^ support.constant.c-2 */
/*                                                                ^^^^^^^^ support.constant.c-2 */
/*                                                                         ^^^^^^^^^ support.constant.c-2 */
/*                                                                                   ^^^^^^^^^^^ support.constant.c-2 */

    True False Null __CplusPlus
/*  ^^^^ invalid.illegal.malformed-constant-language.c-2 */
/*       ^^^^^ invalid.illegal.malformed-constant-language.c-2 */
/*             ^^^^ invalid.illegal.malformed-constant-language.c-2 */
/*                  ^^^^^^^^^^^ invalid.illegal.malformed-constant-language.c-2 */

/////////////////////////////////////////////
// Enclosings
/////////////////////////////////////////////

    [a, b, c]
/*  ^^^^^^^^^ meta.brackets.square.c-2 */
/*  ^ punctuation.section.brackets.begin */
/*    ^ punctuation.separator.c-2 */
/*       ^ punctuation.separator.c-2 */
/*          ^ punctuation.section.brackets.end */
    {1, 2, 3}
/*  ^^^^^^^^^ meta.block.c-2 */
/*  ^ punctuation.section.block.begin */
/*   ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*    ^ punctuation.separator.c-2 */
/*      ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*       ^ punctuation.separator.c-2 */
/*         ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*          ^ punctuation.section.block.end */
    (6 - 7 == -1 && true)
/*  ^^^^^^^^^^^^^^^^^^^^^ meta.group.c-2 */
/*  ^ punctuation.section.group.begin */
/*   ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*     ^ keyword.operator.arithmetic.c-2 */
/*       ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*         ^^ keyword.operator.assignment.c-2 */
/*            ^ keyword.operator.arithmetic.c-2 */
/*             ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*               ^^ keyword.operator.logical.c-2 */
/*                  ^^^^ constant.language.boolean.true.c-2 */
/*                      ^ punctuation.section.group.end */

/////////////////////////////////////////////
// Default Types
/////////////////////////////////////////////

    auto void char short int long float double signed unsigned _Complex _Imaginary _Bool
/*  ^^^^ storage.type.c-2 */
/*       ^^^^ storage.type.c-2 */
/*            ^^^^ storage.type.c-2 */
/*                 ^^^^^ storage.type.c-2 */
/*                       ^^^ storage.type.c-2 */
/*                           ^^^^ storage.type.c-2 */
/*                                ^^^^^ storage.type.c-2 */
/*                                      ^^^^^^ storage.type.c-2 */
/*                                             ^^^^^^ storage.type.c-2 */
/*                                                    ^^^^^^^^ storage.type.c-2 */
/*                                                             ^^^^^^^^ storage.type.c-2 */
/*                                                                      ^^^^^^^^^^ storage.type.c-2 */
/*                                                                                 ^^^^^ storage.type.c-2 */
    size_t ptrdiff_t nullptr_t max_align_t intmax_t uintmax_t intptr_t uintptr_t
/*  ^^^^^^ support.type.stdint.c-2 */
/*         ^^^^^^^^^ support.type.stdint.c-2 */
/*                   ^^^^^^^^^ support.type.stdint.c-2 */
/*                             ^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                         ^^^^^^^^ support.type.stdint.c-2 */
/*                                                  ^^^^^^^^^ support.type.stdint.c-2 */
/*                                                            ^^^^^^^^ support.type.stdint.c-2 */
/*                                                                     ^^^^^^^^^ support.type.stdint.c-2 */
    uint8_t uint16_t uint32_t uint64_t int8_t int16_t int32_t int64_t
/*  ^^^^^^^ support.type.stdint.c-2 */
/*          ^^^^^^^^ support.type.stdint.c-2 */
/*                   ^^^^^^^^ support.type.stdint.c-2 */
/*                            ^^^^^^^^ support.type.stdint.c-2 */
/*                                     ^^^^^^ support.type.stdint.c-2 */
/*                                            ^^^^^^^ support.type.stdint.c-2 */
/*                                                    ^^^^^^^ support.type.stdint.c-2 */
/*                                                            ^^^^^^^ support.type.stdint.c-2 */
    uint_fast8_t uint_fast16_t uint_fast32_t uint_fast64_t int_fast8_t int_fast16_t int_fast32_t int_fast64_t
/*  ^^^^^^^^^^^^ support.type.stdint.c-2 */
/*               ^^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                             ^^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                           ^^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                                         ^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                                                     ^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                                                                  ^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                                                                               ^^^^^^^^^^^^ support.type.stdint.c-2 */
    uint_least8_t uint_least16_t uint_least32_t uint_least64_t int_least8_t int_least16_t int_least32_t int_least64_t
/*  ^^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                ^^^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                               ^^^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                              ^^^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                                             ^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                                                          ^^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                                                                        ^^^^^^^^^^^^^ support.type.stdint.c-2 */
/*                                                                                                      ^^^^^^^^^^^^^ support.type.stdint.c-2 */

    typeof(a) __typeof__(b) __typeof(c) typeof_unqual(d)
/*  ^^^^^^ keyword.declaration.type.c-2 */
/*        ^^^ meta.group.c-2 */
/*        ^ punctuation.section.group.begin */
/*          ^ punctuation.section.group.end */
/*            ^^^^^^^^^^ keyword.declaration.type.c-2 */
/*                      ^^^ meta.group.c-2 */
/*                      ^ punctuation.section.group.begin */
/*                        ^ punctuation.section.group.end */
/*                          ^^^^^^^^ keyword.declaration.type.c-2 */
/*                                  ^^^ meta.group.c-2 */
/*                                  ^ punctuation.section.group.begin */
/*                                    ^ punctuation.section.group.end */
/*                                      ^^^^^^^^^^^^^ keyword.declaration.type.c-2 */
/*                                                   ^^^ meta.group.c-2 */
/*                                                   ^ punctuation.section.group.begin */
/*                                                     ^ punctuation.section.group.end */

/////////////////////////////////////////////
// Storage Keywords
/////////////////////////////////////////////

    register static inline extern register thread_local _Thread_local _Noreturn noreturn
/*  ^^^^^^^^ storage.modifier.c-2 */
/*           ^^^^^^ storage.modifier.c-2 */
/*                  ^^^^^^ storage.modifier.c-2 */
/*                         ^^^^^^ storage.modifier.c-2 */
/*                                ^^^^^^^^ storage.modifier.c-2 */
/*                                         ^^^^^^^^^^^^ storage.modifier.c-2 */
/*                                                      ^^^^^^^^^^^^^ storage.modifier.c-2 */
/*                                                                    ^^^^^^^^^ storage.modifier.c-2 */
/*                                                                              ^^^^^^^^ storage.modifier.c-2 */
    const volatile restrict _Atomic _Alignas(4)
/*  ^^^^^ storage.modifier.c-2 */
/*        ^^^^^^^^ storage.modifier.c-2 */
/*                 ^^^^^^^^ storage.modifier.c-2 */
/*                          ^^^^^^^ storage.modifier.c-2 */
/*                                  ^^^^^^^^ storage.modifier.c-2 */
/*                                          ^^^ meta.group.c-2 */
/*                                          ^ punctuation.section.group.begin */
/*                                           ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                                            ^ punctuation.section.group.end */


/////////////////////////////////////////////
// Functions
/////////////////////////////////////////////

    test(5, 10, 15, 20);
/*  ^^^^^^^^^^^^^^^^^^^ meta.group.c-2 */
/*  ^^^^ variable.function.c-2 */
/*      ^ punctuation.section.group.begin.c-2 */
/*       ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*        ^ punctuation.separator.c-2 */
/*          ^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*            ^ punctuation.separator.c-2 */
/*              ^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                ^ punctuation.separator.c-2 */
/*                  ^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                    ^ punctuation.section.group.end */
/*                     ^ punctuation.terminator.c-2 */
    h(f(5) - g(6));
/*  ^ entity.name.function.c-2 */
/*   ^ punctuation.section.group.begin.c-2 */
/*    ^^^^^^^^^^^ meta.function.parameters.c-2 meta.group.c-2 */
/*    ^^^^ meta.group.c-2 */
/*    ^ variable.function.c-2 */
/*     ^ punctuation.section.group.begin.c-2 */
/*      ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*       ^ punctuation.section.group.end */
/*         ^ keyword.operator.arithmetic.c-2 */
/*           ^^^^ meta.group.c-2 */
/*           ^ variable.function.c-2 */
/*            ^ punctuation.section.group.begin.c-2 */
/*             ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*              ^ punctuation.section.group.end */
/*               ^^ meta.function.c-2 */
/*               ^ punctuation.section.group.end.c-2 */

    int main(int argc, char const* argv[]) {
/*  ^^^ storage.type.c-2 */
/*      ^^^^ entity.name.function.c-2 */
/*          ^ punctuation.section.group.begin.c-2 */
/*           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c-2 meta.group.c-2 */
/*           ^^^ storage.type.c-2 */
/*               ^^^^ variable.parameter.c-2 */
/*                   ^ punctuation.separator.c-2 */
/*                     ^^^^ storage.type.c-2 */
/*                          ^^^^^ storage.modifier.c-2 */
/*                               ^ keyword.operator.arithmetic.c-2 */
/*                                 ^^^^ variable.parameter.c-2 */
/*                                     ^^ meta.brackets.square.c-2 */
/*                                     ^ punctuation.section.brackets.begin */
/*                                      ^ punctuation.section.brackets.end */
/*                                       ^^^ meta.function.c-2 */
/*                                       ^ punctuation.section.group.end.c-2 */
/*                                         ^ meta.function.c-2 meta.block.c-2 punctuation.section.block.begin */
        int out = in("abcdefg");
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 */
/*      ^^^ storage.type.c-2 */
/*              ^ keyword.operator.assignment.c-2 */
/*                ^^^^^^^^^^^^^ meta.group.c-2 */
/*                ^^ variable.function.c-2 */
/*                  ^ punctuation.section.group.begin.c-2 */
/*                   ^^^^^^^^^ string.quoted.double.c-2 */
/*                   ^ punctuation.definition.string.begin.c-2 */
/*                           ^ punctuation.definition.string.end.c-2 */
/*                            ^ punctuation.section.group.end */
/*                             ^ punctuation.terminator.c-2 */
    }
/*^^^ meta.function.c-2 meta.block.c-2 */
/*  ^ punctuation.section.block.end.c-2 */

    int b = main(argc);
/*  ^^^ storage.type.c-2 */
/*        ^ keyword.operator.assignment.c-2 */
/*          ^^^^^^^^^^ meta.group.c-2 */
/*          ^^^^ variable.function.c-2 */
/*              ^ punctuation.section.group.begin.c-2 */
/*                   ^ punctuation.section.group.end */
/*                    ^ punctuation.terminator.c-2 */

    static extern int*
/*  ^^^^^^ storage.modifier.c-2 */
/*         ^^^^^^ storage.modifier.c-2 */
/*                ^^^ storage.type.c-2 */
/*                   ^ keyword.operator.arithmetic.c-2 */
    test(
/*  ^^^^ entity.name.function.c-2 */
/*      ^ punctuation.section.group.begin.c-2 */
        const uint64_t a,
/*^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c-2 meta.group.c-2 */
/*      ^^^^^ storage.modifier.c-2 */
/*            ^^^^^^^^ support.type.stdint.c-2 */
/*                     ^ variable.parameter.c-2 */
/*                      ^ punctuation.separator.c-2 */
        typeof(b) b
/*^^^^^^^^^^^^^^^^^ meta.function.parameters.c-2 meta.group.c-2 */
/*      ^^^^^^ keyword.declaration.type.c-2 */
/*            ^^^ meta.group.c-2 */
/*            ^ punctuation.section.group.begin */
/*              ^ punctuation.section.group.end */
/*                ^ variable.parameter.c-2 */
    );
/*^^ meta.function.parameters.c-2 meta.group.c-2 */
/*  ^^ meta.function.c-2 */
/*  ^ punctuation.section.group.end.c-2 */

/////////////////////////////////////////////
// Control Flow
/////////////////////////////////////////////

    void fun(int const a[]) {
        while (true) {
/*^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 */
/*      ^^^^^ keyword.control.c-2 */
/*            ^^^^^^ meta.group.c-2 */
/*            ^ punctuation.section.group.begin */
/*             ^^^^ constant.language.boolean.true.c-2 */
/*                 ^ punctuation.section.group.end */
/*                   ^ meta.block.c-2 punctuation.section.block.begin */
            do {
/*^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 */
/*          ^^ keyword.control.c-2 */
/*             ^ meta.block.c-2 punctuation.section.block.begin */
                for (int i = 0; i < 12; ++i) {
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*              ^^^ keyword.control.c-2 */
/*                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.c-2 */
/*                  ^ punctuation.section.group.begin */
/*                   ^^^ storage.type.c-2 */
/*                         ^ keyword.operator.assignment.c-2 */
/*                           ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                            ^ punctuation.terminator.c-2 */
/*                                ^ keyword.operator.comparison.c-2 */
/*                                  ^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                                    ^ punctuation.terminator.c-2 */
/*                                      ^^ keyword.operator.arithmetic.c-2 */
/*                                         ^ punctuation.section.group.end */
/*                                           ^ meta.block.c-2 punctuation.section.block.begin */
                    switch (i)
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                  ^^^^^^ keyword.control.c-2 */
/*                         ^^^ meta.group.c-2 */
/*                         ^ punctuation.section.group.begin */
/*                           ^ punctuation.section.group.end */
                    {
/*^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                  ^ meta.block.c-2 punctuation.section.block.begin */
                    case 0:
/*^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                  ^^^^ keyword.control.c-2 */
/*                       ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                        ^ keyword.operator.ternary.c-2 */
                        goto exit;
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                      ^^^^ keyword.control.flow.goto.c-2 */
/*                               ^ punctuation.terminator.c-2 */
                    case 1:
/*^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                  ^^^^ keyword.control.c-2 */
/*                       ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                        ^ keyword.operator.ternary.c-2 */
                    case 2 + 3:
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                  ^^^^ keyword.control.c-2 */
/*                       ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                         ^ keyword.operator.arithmetic.c-2 */
/*                           ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                            ^ keyword.operator.ternary.c-2 */
                        if (a + b < i) {}
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                      ^^ keyword.control.c-2 */
/*                         ^^^^^^^^^^^ meta.group.c-2 */
/*                         ^ punctuation.section.group.begin */
/*                            ^ keyword.operator.arithmetic.c-2 */
/*                                ^ keyword.operator.comparison.c-2 */
/*                                   ^ punctuation.section.group.end */
/*                                     ^^ meta.block.c-2 */
/*                                     ^ punctuation.section.block.begin */
/*                                      ^ punctuation.section.block.end */
                        else if (b == -1) {
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                      ^^^^ keyword.control.c-2 */
/*                           ^^ keyword.control.c-2 */
/*                              ^^^^^^^^^ meta.group.c-2 */
/*                              ^ punctuation.section.group.begin */
/*                                 ^^ keyword.operator.assignment.c-2 */
/*                                    ^ keyword.operator.arithmetic.c-2 */
/*                                     ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                                      ^ punctuation.section.group.end */
/*                                        ^ meta.block.c-2 punctuation.section.block.begin */
                            continue;
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                          ^^^^^^^^ keyword.control.flow.continue.c-2 */
/*                                  ^ punctuation.terminator.c-2 */
                        }
/*^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                      ^ punctuation.section.block.end */
                        break;
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                      ^^^^^ keyword.control.flow.break.c-2 */
/*                           ^ punctuation.terminator.c-2 */
                    default:
/*^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                  ^^^^^^^ keyword.control.c-2 */
/*                         ^ keyword.operator.ternary.c-2 */
                        continue;
/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                      ^^^^^^^^ keyword.control.flow.continue.c-2 */
/*                              ^ punctuation.terminator.c-2 */
                    }
/*^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*                  ^ punctuation.section.block.end */
                }
/*^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 meta.block.c-2 */
/*              ^ punctuation.section.block.end */
            } while (a > b);
/*^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 */
/*^^^^^^^^^^^ meta.block.c-2 */
/*          ^ punctuation.section.block.end */
/*            ^^^^^ keyword.control.c-2 */
/*                  ^^^^^^^ meta.group.c-2 */
/*                  ^ punctuation.section.group.begin */
/*                     ^ keyword.operator.comparison.c-2 */
/*                        ^ punctuation.section.group.end */
/*                         ^ punctuation.terminator.c-2 */
        }
/*^^^^^^^ meta.function.c-2 meta.block.c-2 meta.block.c-2 */
/*      ^ punctuation.section.block.end */

    exit:
/*^^^^^^^ meta.function.c-2 meta.block.c-2 */
/*  ^^^^ entity.name.label.c-2 */
/*      ^ punctuation.separator.c-2 */
        return;
/*^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 */
/*      ^^^^^^ keyword.control.flow.return.c-2 */
/*            ^ punctuation.terminator.c-2 */
    }
/*^^^ meta.function.c-2 meta.block.c-2 */
/*  ^ punctuation.section.block.end.c-2 */

/////////////////////////////////////////////
// Data Structures
/////////////////////////////////////////////

    struct A; enum B; union C;
/*  ^^^^^^^^ meta.struct.c-2 */
/*  ^^^^^^ keyword.declaration.struct.c-2 */
/*         ^ entity.name.enum.forward-decl.c-2 */
/*          ^ punctuation.terminator.c-2 */
/*            ^^^^^^ meta.enum.c-2 */
/*            ^^^^ keyword.declaration.enum.c-2 */
/*                 ^ entity.name.enum.forward-decl.c-2 */
/*                  ^ punctuation.terminator.c-2 */
/*                    ^^^^^^^ meta.union.c-2 */
/*                    ^^^^^ keyword.declaration.union.c-2 */
/*                          ^ entity.name.enum.forward-decl.c-2 */
/*                           ^ punctuation.terminator.c-2 */

    enum B
/*  ^^^^^^ meta.enum.c-2 */
/*  ^^^^ keyword.declaration.enum.c-2 */
/*       ^ entity.name.enum.c-2 */
    {
/*  ^ meta.enum.c-2 punctuation.section.block.begin.c-2 */
        kTest1,
/*^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^^^^ entity.name.constant.c-2 */
/*            ^ punctuation.separator.c-2 */
        kTest2 = kTest1 + 1,
/*^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^^^^ entity.name.constant.c-2 */
/*             ^ keyword.operator.assignment.c-2 */
/*               ^^^^^^ constant.other.variable.mac-classic.c */
/*                      ^ keyword.operator.arithmetic.c-2 */
/*                        ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                         ^ punctuation.separator.c-2 */
        kTest3,  
/*^^^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^^^^ entity.name.constant.c-2 */
/*            ^ punctuation.separator.c-2 */
    }myEnum;
/*^^ meta.block.c-2 */
/*  ^ punctuation.section.block.end.c-2 */
/*         ^ punctuation.terminator.c-2 */

    const volatile struct A
/*  ^^^^^ storage.modifier.c-2 */
/*        ^^^^^^^^ storage.modifier.c-2 */
/*                 ^^^^^^^^ meta.struct.c-2 */
/*                 ^^^^^^ keyword.declaration.struct.c-2 */
/*                        ^ entity.name.struct.c-2 */
    {
/*  ^ meta.block.c-2 meta.struct.c-2 punctuation.section.block.begin.c-2 */
        int a1;
/*^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^ storage.type.c-2 */
/*            ^ punctuation.terminator.c-2 */
        char a3[12];
/*^^^^^^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^^ storage.type.c-2 */
/*             ^^^^ meta.brackets.square.c-2 */
/*             ^ punctuation.section.brackets.begin */
/*              ^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                ^ punctuation.section.brackets.end */
/*                 ^ punctuation.terminator.c-2 */
        void* h5;
/*^^^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^^ storage.type.c-2 */
/*          ^ keyword.operator.arithmetic.c-2 */
/*              ^ punctuation.terminator.c-2 */
        enum B out; };
/*^^^^^^^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^^ keyword.declaration.enum.c-2 */
/*                ^ punctuation.terminator.c-2 */
/*                  ^ punctuation.section.block.end */
/*                   ^ punctuation.terminator.c-2 */

    union MACRO myUnion {
/*  ^^^^^^^^^^^^^^^^^^^^ meta.union.c-2 */
/*  ^^^^^ keyword.declaration.union.c-2 */
/*              ^^^^^^^ entity.name.union.c-2 */
/*                      ^ meta.block.c-2 meta.union.c-2 punctuation.section.block.begin.c-2 */
        struct A {
/*^^^^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^^^^^^^ meta.struct.c-2 */
/*      ^^^^^^ keyword.declaration.struct.c-2 */
/*             ^ entity.name.struct.c-2 */
/*               ^ meta.block.c-2 meta.struct.c-2 punctuation.section.block.begin.c-2 */
            int f;
/*^^^^^^^^^^^^^^^^ meta.block.c-2 meta.block.c-2 */
/*          ^^^ storage.type.c-2 */
/*               ^ punctuation.terminator.c-2 */
        } s1;
/*^^^^^^^^^^^ meta.block.c-2 */
/*^^^^^^^ meta.block.c-2 */
/*      ^ punctuation.section.block.end */
/*          ^ punctuation.terminator.c-2 */
        struct B {
/*^^^^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^^^^^^^ meta.struct.c-2 */
/*      ^^^^^^ keyword.declaration.struct.c-2 */
/*             ^ entity.name.struct.c-2 */
/*               ^ meta.block.c-2 meta.struct.c-2 punctuation.section.block.begin.c-2 */
            int f2;
/*^^^^^^^^^^^^^^^^^ meta.block.c-2 meta.block.c-2 */
/*          ^^^ storage.type.c-2 */
/*                ^ punctuation.terminator.c-2 */
        } s2;
/*^^^^^^^^^^^ meta.block.c-2 */
/*^^^^^^^ meta.block.c-2 */
/*      ^ punctuation.section.block.end */
/*          ^ punctuation.terminator.c-2 */
        void* ptr;
/*^^^^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^^ storage.type.c-2 */
/*          ^ keyword.operator.arithmetic.c-2 */
/*               ^ punctuation.terminator.c-2 */
        int a, *ptr2;
/*^^^^^^^^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^ storage.type.c-2 */
/*           ^ punctuation.separator.c-2 */
/*             ^ keyword.operator.arithmetic.c-2 */
/*                  ^ punctuation.terminator.c-2 */
    };
/*^^^ meta.block.c-2 */
/*  ^ punctuation.section.block.end */
/*   ^ punctuation.terminator.c-2 */

    int test() {
/*  ^^^ storage.type.c-2 */
/*      ^^^^ entity.name.function.c-2 */
/*          ^ punctuation.section.group.begin.c-2 */
/*           ^^^ meta.function.c-2 */
/*           ^ punctuation.section.group.end.c-2 */
/*             ^ meta.function.c-2 meta.block.c-2 punctuation.section.block.begin */
        union C myunion;
/*^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 */
/*      ^^^^^ keyword.declaration.union.c-2 */
/*                     ^ punctuation.terminator.c-2 */
        myunion.s2.f = 20;
/*^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 meta.block.c-2 */
/*             ^ punctuation.accessor.c-2 */
/*                ^ punctuation.accessor.c-2 */
/*                   ^ keyword.operator.assignment.c-2 */
/*                     ^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                       ^ punctuation.terminator.c-2 */
    }
/*^^^ meta.function.c-2 meta.block.c-2 */
/*  ^ punctuation.section.block.end.c-2 */

    typedef struct {
/*  ^^^^^^^ keyword.declaration.type.c-2 */
/*          ^^^^^^^ meta.struct.c-2 */
/*          ^^^^^^ keyword.declaration.struct.c-2 */
/*                 ^ meta.block.c-2 meta.struct.c-2 punctuation.section.block.begin.c-2 */
        myCustomType* a;
/*^^^^^^^^^^^^^^^^^^^^^^ meta.block.c-2 */
/*                  ^ keyword.operator.arithmetic.c-2 */
/*                     ^ punctuation.terminator.c-2 */
    } b;
/*^^^ meta.block.c-2 */
/*  ^ punctuation.section.block.end */
/*    ^ entity.name.type.typedef.c-2 */
/*     ^ punctuation.terminator.c-2 */

    typedef void(*func)(int param, int, char param2);
/*  ^^^^^^^ keyword.declaration.type.c-2 */
/*          ^^^^ storage.type.c-2 */
/*               ^ keyword.operator.c-2 */
/*                ^^^^ entity.name.type.typedef.c-2 */
/*                     ^ punctuation.section.group.begin.c-2 */
/*                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c-2 meta.group.c-2 */
/*                      ^^^ storage.type.c-2 */
/*                          ^^^^^ variable.parameter.c-2 */
/*                               ^ punctuation.separator.c-2 */
/*                                 ^^^ storage.type.c-2 */
/*                                    ^ punctuation.separator.c-2 */
/*                                      ^^^^ storage.type.c-2 */
/*                                           ^^^^^^ variable.parameter.c-2 */
/*                                                 ^^ meta.function.c-2 */
/*                                                 ^ punctuation.section.group.end.c-2 */

/////////////////////////////////////////////
// Attributes and Declspec
/////////////////////////////////////////////

    __declspec(align(5)) struct Test {
/*  ^^^^^^^^^^ storage.modifier.c-2 */
/*            ^^^^^^^^^^ meta.group.c-2 */
/*            ^ punctuation.section.group.begin.c-2 */
/*             ^^^^^^^^ meta.group.c-2 */
/*             ^^^^^ storage.modifier.c-2 */
/*                  ^ punctuation.section.group.begin.c-2 */
/*                   ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                    ^ punctuation.section.group.end */
/*                     ^ punctuation.section.group.end.c-2 */
/*                       ^^^^^^^^^^^^ meta.struct.c-2 */
/*                       ^^^^^^ keyword.declaration.struct.c-2 */
/*                              ^^^^ entity.name.struct.c-2 */
/*                                   ^ meta.block.c-2 meta.struct.c-2 punctuation.section.block.begin.c-2 */
        int a;
/*^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^ storage.type.c-2 */
/*           ^ punctuation.terminator.c-2 */
        int b;
/*^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^ storage.type.c-2 */
/*           ^ punctuation.terminator.c-2 */
        int c;
/*^^^^^^^^^^^^ meta.block.c-2 */
/*      ^^^ storage.type.c-2 */
/*           ^ punctuation.terminator.c-2 */
    };
/*^^^ meta.block.c-2 */
/*  ^ punctuation.section.block.end */
/*   ^ punctuation.terminator.c-2 */

    void __declspec(dllimport) importedFn() const;
/*  ^^^^ storage.type.c-2 */
/*       ^^^^^^^^^^ storage.modifier.c-2 */
/*                 ^^^^^^^^^^^ meta.group.c-2 */
/*                 ^ punctuation.section.group.begin.c-2 */
/*                  ^^^^^^^^^ constant.other.c-2 */
/*                           ^ punctuation.section.group.end.c-2 */
/*                             ^^^^^^^^^^ entity.name.function.c-2 */
/*                                       ^ punctuation.section.group.begin.c-2 */
/*                                        ^^^^^^^^ meta.function.c-2 */
/*                                        ^ punctuation.section.group.end.c-2 */
/*                                          ^^^^^ constant.other.c-2 */
    __declspec(property(get=10, put=10)) void runForever();
/*  ^^^^^^^^^^ storage.modifier.c-2 */
/*            ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.c-2 */
/*            ^ punctuation.section.group.begin.c-2 */
/*             ^^^^^^^^ storage.modifier.c-2 */
/*                     ^ punctuation.section.group.begin.c-2 */
/*                      ^^^ variable.parameter.c */
/*                         ^ keyword.operator.assignment.c-2 */
/*                          ^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                            ^ punctuation.separator.c-2 */
/*                              ^^^ variable.parameter.c */
/*                                 ^ keyword.operator.assignment.c-2 */
/*                                  ^^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                                    ^ punctuation.section.group.end */
/*                                     ^ punctuation.section.group.end.c-2 */
/*                                       ^^^^ storage.type.c-2 */
/*                                            ^^^^^^^^^^ entity.name.function.c-2 */
/*                                                      ^ punctuation.section.group.begin.c-2 */
/*                                                       ^^ meta.function.c-2 */
/*                                                       ^ punctuation.section.group.end.c-2 */

    void on_load() __attribute__((constructor, visibility("hidden"))) {}
/*  ^^^^ storage.type.c-2 */
/*       ^^^^^^^ entity.name.function.c-2 */
/*              ^ punctuation.section.group.begin.c-2 */
/*               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.c-2 */
/*               ^ punctuation.section.group.end.c-2 */
/*                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.c-2 meta.attribute.c-2 */
/*                 ^^^^^^^^^^^^^ storage.modifier.c-2 */
/*                              ^^ punctuation.section.group.begin.c-2 */
/*                                ^^^^^^^^^^^ constant.other.c-2 */
/*                                           ^ punctuation.separator.c-2 */
/*                                             ^^^^^^^^^^^^^^^^^^^^ meta.group.c-2 */
/*                                             ^^^^^^^^^^ storage.modifier.c-2 */
/*                                                       ^ punctuation.section.group.begin.c-2 */
/*                                                        ^^^^^^^^ string.quoted.double.c-2 */
/*                                                        ^ punctuation.definition.string.begin.c-2 */
/*                                                               ^ punctuation.definition.string.end.c-2 */
/*                                                                ^ punctuation.section.group.end */
/*                                                                 ^^ punctuation.section.group.end.c-2 */
/*                                                                    ^ meta.function.c-2 meta.block.c-2 punctuation.section.block.begin */
/*                                                                     ^ meta.block.c-2 punctuation.section.block.end.c-2 */

    int a =
/*  ^^^ storage.type.c-2 */
/*        ^ keyword.operator.assignment.c-2 */
    int main(int argc, char const* argv[]) {
/*  ^^^ storage.type.c-2 */
/*      ^^^^ entity.name.function.c-2 */
/*          ^ punctuation.section.group.begin.c-2 */
/*           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.c-2 meta.group.c-2 */
/*           ^^^ storage.type.c-2 */
/*               ^^^^ variable.parameter.c-2 */
/*                   ^ punctuation.separator.c-2 */
/*                     ^^^^ storage.type.c-2 */
/*                          ^^^^^ storage.modifier.c-2 */
/*                               ^ keyword.operator.arithmetic.c-2 */
/*                                 ^^^^ variable.parameter.c-2 */
/*                                     ^^ meta.brackets.square.c-2 */
/*                                     ^ punctuation.section.brackets.begin */
/*                                      ^ punctuation.section.brackets.end */
/*                                       ^^^ meta.function.c-2 */
/*                                       ^ punctuation.section.group.end.c-2 */
/*                                         ^ meta.function.c-2 meta.block.c-2 punctuation.section.block.begin */

    }
/*^^^ meta.function.c-2 meta.block.c-2 */
/*  ^ punctuation.section.block.end.c-2 */

/////////////////////////////////////////////
// Preprocessor
/////////////////////////////////////////////

    #include <stdlib.h>
/*^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^^^^^^ keyword.control.import.c-2 */
/*           ^^^^^^^^^^ string.quoted.other.c-2 */
/*           ^ punctuation.definition.string.begin.c-2 */
/*                    ^ punctuation.definition.string.end.c-2 */
    #include_next "file.h"
/*^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^^^^^^^^^^^ keyword.control.import.c-2 */
/*                ^^^^^^^^ string.quoted.double.c-2 */
/*                ^ punctuation.definition.string.begin.c-2 */
/*                       ^ punctuation.definition.string.end.c-2 */
    #error Error Message
/*^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.diagnostic.c-2 */
/*^^^^^^^^ keyword.control.import.error.c-2 */
/*        ^^^^^^^^^^^^^^ string.unquoted.c-2 */
    #error Error Message \
    (this is an "error")
/*^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.diagnostic.c-2 string.unquoted.c-2 */
    #warning Warning Message
/*^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.diagnostic.c-2 */
/*^^^^^^^^^^ keyword.control.import.warning.c-2 */
/*          ^^^^^^^^^^^^^^^^ string.unquoted.c-2 */
    #warning Warning Message \
    (this is a "warning")

    #define FOO __declspec(dllimport)
/*^^^^^^^^^ keyword.control.import.c-2 */
/*          ^^^ entity.name.macro.c-2 support.macro.c-2 */
/*              ^^^^^^^^^^ storage.modifier.c-2 */
/*                        ^^^^^^^^^^^ meta.group.c-2 */
/*                        ^ punctuation.section.group.begin.c-2 */
/*                         ^^^^^^^^^ constant.other.c-2 */
/*                                  ^ punctuation.section.group.end.c-2 */
    #define BAR(x, y, ...) enum MyEnum ## x { kEnumValue1 = y __VA_OPT__(,) __VA_ARGS__ };
/*^^^^^^^^^ keyword.control.import.c-2 */
/*          ^^^ entity.name.macro.c-2 support.macro.c-2 */
/*             ^ punctuation.section.group.begin.c-2 */
/*              ^ variable.parameter.c-2 */
/*               ^ punctuation.separator.c-2 */
/*                 ^ variable.parameter.c-2 */
/*                  ^ punctuation.separator.c-2 */
/*                    ^^^ keyword.operator.variadic.c-2 */
/*                       ^ punctuation.section.group.end.c-2 */
/*                         ^^^^ keyword.declaration.enum.c-2 */
/*                                     ^^ keyword.operator.c-2 */
/*                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.c-2 */
/*                                          ^ punctuation.section.block.begin */
/*                                            ^^^^^^^^^^^ constant.other.variable.mac-classic.c */
/*                                                        ^ keyword.operator.assignment.c-2 */
/*                                                            ^^^^^^^^^^ keyword.operator.word.c-2 */
/*                                                                      ^^^ meta.group.c-2 */
/*                                                                      ^ punctuation.section.group.begin */
/*                                                                       ^ punctuation.separator.c-2 */
/*                                                                        ^ punctuation.section.group.end */
/*                                                                          ^^^^^^^^^^^ constant.other.c-2 */
/*                                                                                      ^ punctuation.section.block.end */
/*                                                                                       ^ punctuation.terminator.c-2 */

    #if FOO
/*^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^ keyword.control.import.c-2 */
    #ifndef FOO
/*^^^^^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^^^^^ keyword.control.import.c-2 */
    #ifdef FOO
/*^^^^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^^^^ keyword.control.import.c-2 */
    #elif FOO
/*^^^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^^^ keyword.control.import.c-2 */
    #elifdef FOO
/*^^^^^^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^^^^^^ keyword.control.import.c-2 */
    #elifndef FOO
/*^^^^^^^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^^^^^^^ keyword.control.import.c-2 */
    #else
/*^^^^^^^ keyword.control.import.c-2 */
    #endif
/*^^^^^^^^ keyword.control.import.c-2 */

    #undef FOO
/*^^^^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^^^^ keyword.control.import.c-2 */
    #pragma FOO
/*^^^^^^^^^^^^^ meta.preprocessor.c-2 */
/*^^^^^^^^^ keyword.control.import.c-2 */

    #embed "file.txt" if_empty(0)
/*^^^^^^^^ keyword.control.import.c-2 */
/*         ^^^^^^^^^^ string.quoted.double.c-2 */
/*         ^ punctuation.definition.string.begin.c-2 */
/*                  ^ punctuation.definition.string.end.c-2 */
/*                    ^^^^^^^^ keyword.other.c-2 */
/*                            ^ punctuation.section.group.begin.c-2 */
/*                             ^ meta.number.integer.decimal.c-2 constant.numeric.value.c-2 */
/*                              ^ punctuation.section.group.end.c-2 */
