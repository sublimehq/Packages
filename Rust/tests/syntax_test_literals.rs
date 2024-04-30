// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

let c = 'c';
// <- keyword.declaration.variable.rust
//    ^ keyword.operator.assignment
//      ^^^ string.quoted.single
let b = b'c';
// <- keyword.declaration.variable.rust
//    ^ keyword.operator.assignment
//      ^ storage.type
//       ^^^ string.quoted.single
let ch = '∞';
//       ^^^ string.quoted.single

let s = "This is a string \x01_\u{007F}_\"_\'_\\_\r_\n_\t_\0";
// <- keyword.declaration.variable.rust
//    ^ keyword.operator.assignment
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                        ^^^^ constant.character.escape
//                             ^^^^^^^^ constant.character.escape
//                                      ^^ constant.character.escape
//                                         ^^ constant.character.escape
//                                            ^^ constant.character.escape
//                                               ^^ constant.character.escape
//                                                  ^^ constant.character.escape
//                                                     ^^ constant.character.escape
//                                                        ^^ constant.character.escape
let r = r##"This is a raw string, no escapes! \x00 \0 \n"##;
// <- keyword.declaration.variable.rust
//    ^ keyword.operator.assignment
//      ^ storage.type
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.raw - constant.character.escape
//       ^^^ punctuation.definition.string.begin.rust
//                                                      ^^^ punctuation.definition.string.end.rust
//                                                         ^ - string
let s = "\
//       ^ string.quoted.double punctuation.separator.continuation.line
continued \
//        ^ string.quoted.double punctuation.separator.continuation.line
line";
let b = b"\
//        ^ punctuation.separator.continuation.line
";
println!("Continuation in format \
//                               ^ punctuation.separator.continuation.line
");

let bytes = b"This won't escape unicode \u{0123}, but will do \x01_\"_\'_\\_\r_\n_\t_\0";
// <- keyword.declaration.variable.rust
//        ^ keyword.operator.assignment
//          ^ storage.type
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                                                            ^^^^ constant.character.escape
//                                                                 ^^ constant.character.escape
//                                                                    ^^ constant.character.escape
//                                                                       ^^ constant.character.escape
//                                                                          ^^ constant.character.escape
//                                                                             ^^ constant.character.escape
//                                                                                ^^ constant.character.escape
//                                                                                   ^^ constant.character.escape

let raw_bytes = br#"This won't escape anything either \x01 \""#;
// <- keyword.declaration.variable.rust
//            ^ keyword.operator.assignment
//              ^^ storage.type
//                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double - constant.character.escape

let b_simple = b'a';
//             ^^^^ string.quoted.single
//             ^ storage.type.string
//              ^ punctuation.definition.string.begin
//                ^ punctuation.definition.string.end
//                 ^ punctuation.terminator
let b_newline = b'\n';
//              ^^^^^ string.quoted.single
//                ^^ string.quoted.single constant.character.escape
let b_nul = b'\0';
//            ^^ string.quoted.single constant.character.escape
let b_back = b'\\';
//             ^^ string.quoted.single constant.character.escape
let b_quote = b'\'';
//              ^^ string.quoted.single constant.character.escape
let b_esc_nul = b'\x00';
//                ^^^^ string.quoted.single constant.character.escape
let b_esc_255 = b'\xff';
//                ^^^^ string.quoted.single constant.character.escape
let b_esc_inv = b'\a';
//                ^^ invalid.illegal.byte
//                  ^ string.quoted.single punctuation.definition.string.end
let b_inv_len = b'abc';
//                ^ string.quoted.single
//                 ^^ invalid.illegal.byte
//                   ^ string.quoted.single punctuation.definition.string.end
let b_inv_uni = b'♥';
//                ^ invalid.illegal.byte
//                 ^ string.quoted.single punctuation.definition.string.end
let b_inv_empty = b'';
//                ^^^ string.quoted.single
//                 ^ punctuation.definition.string.begin
//                  ^ punctuation.definition.string.end
let b_unclosed1 = b'
// Avoid error on entire file.
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash - invalid - string

let bs_newline = b"abc\n";
//               ^^^^^^^^ string.quoted.double
//                ^ punctuation.definition.string.begin
//                    ^^ constant.character.escape
//                      ^ punctuation.definition.string.end
//                       ^ punctuation.terminator
let bs_nul = b"abc\0";
//                ^^ string.quoted.double constant.character.escape
let bs_esc_nul = b"abc\x00";
//                    ^^^^ string.quoted.double constant.character.escape
let bs_esc_255 = b"abc\xff";
//                    ^^^^ string.quoted.double constant.character.escape
let bs_esc_inv = b"abc\a";
//                    ^^ string.quoted.double invalid.illegal.character.escape
//                      ^ string.quoted.double punctuation.definition.string.end - invalid

let char_newline = '\n';
//                 ^^^^ string.quoted.single
//                 ^ punctuation.definition.string.begin
//                  ^^ constant.character.escape
//                    ^ punctuation.definition.string.end
//                     ^ punctuation.terminator
let char_nul = '\0';
//              ^^ string.quoted.single constant.character.escape
let char_extra_inv = 'ab';
//                    ^ string.quoted.single
//                     ^ invalid.illegal.char
//                      ^ string.quoted.single punctuation.definition.string.end
let char_ascii_esc_nul = '\x00';
//                        ^^^^ string.quoted.single constant.character.escape
let char_ascii_esc_127 = '\x7f';
//                        ^^^^ string.quoted.single constant.character.escape
let char_ascii_inv_255 = '\xff';
//                        ^^^^ invalid.illegal.char
let char_uni_esc = '\u{3b1}';
//                  ^^^^^^^ string.quoted.single constant.character.escape
let char_uni_esc_empty = '\u{}';
//                        ^^^^ invalid.illegal.char
let char_uni_esc_under_start = '\u{_1_}';
//                              ^^^^^^^ invalid.illegal.char
let char_uni_esc_under1 = '\u{1_}';
//                         ^^^^^^ string.quoted.single constant.character.escape
let char_uni_esc_under2 = '\u{1_2__3___}';
//                         ^^^^^^^^^^^^^ string.quoted.single constant.character.escape
let char_uni_esc_under3 = '\u{10__FFFF}';
//                         ^^^^^^^^^^^^ string.quoted.single constant.character.escape
let char_uni_esc_extra = '\u{1234567}';
//                        ^^^^^^^^^^^ invalid.illegal.char

let s_ascii_inv_255 = "\xff";
//                     ^^ string.quoted.double invalid.illegal.character.escape
let s_uni_esc_empty = "\u{}";
//                     ^^^^ string.quoted.double invalid.illegal.character.escape
let s_uni_esc_under_start = "\u{_1_}";
//                           ^^^^^^^ string.quoted.double invalid.illegal.character.escape
let s_uni_esc_under1 = "\u{1_}";
//                      ^^^^^^ string.quoted.double constant.character.escape
let s_uni_esc_under2 = "\u{1_2__3___}";
//                      ^^^^^^^^^^^^^ string.quoted.double constant.character.escape
let s_uni_esc_under3 = "\u{10__FFFF}";
//                      ^^^^^^^^^^^^ string.quoted.double constant.character.escape
let s_uni_esc_extra = "\u{1234567}";
//                     ^^^^^^^^^^^ string.quoted.double invalid.illegal.character.escape

let cstr_empty = c"";
//               ^ string.quoted.double storage.type.string
//               ^^^ string.quoted.double
//                ^ punctuation.definition.string.begin
//                 ^ punctuation.definition.string.end
//                  ^ punctuation.terminator
let cstr_unicode = c"æ";
//                 ^ string.quoted.double storage.type.string
//                 ^^^^ string.quoted.double
let cstr_byte_escape = c"\xFF\xC3\xA6\n\r\t\0\"\'\\";
//                     ^ storage.type.string
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.escape
let cstr_byte_escape_invalid = c"\a";
//                             ^^^^^ string.quoted.double
//                             ^ storage.type.string
//                              ^ punctuation.definition.string.begin
//                               ^^ invalid.illegal.character.escape
//                                 ^ punctuation.definition.string.end
let cstr_unicode_escape = c"\u{00E6}";
//                        ^^^^^^^^^^^ string.quoted.double
//                          ^^^^^^^^ constant.character.escape
let cstr_continue = c"\
    \xFF";
//  ^^^^ string.quoted.double constant.character.escape

let raw_cstr_empty = cr"";
//                   ^^^^ string.quoted.double.raw
//                   ^^ storage.type.string
//                     ^ punctuation.definition.string.begin
//                      ^ punctuation.definition.string.end
let raw_cstr_unicode = cr"東京";
//                     ^^^^^^ string.quoted.double.raw
//                     ^^ storage.type.string
let raw_cstr_hash = cr#"text with "quote" in it."#;
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.raw
//                  ^^ storage.type.string
//                    ^^ punctuation.definition.string.begin
//                                              ^^ punctuation.definition.string.end
let raw_cstr_multiline = cr##"
//                       ^^ string.quoted.double.raw storage.type.string
//                       ^^^^^^ string.quoted.double.raw
    This text has "multiple lines"
    "##;
//   ^^ string.quoted.double.raw punctuation.definition.string.end
let raw_cstr_escape_ignore = cr"\n\x01\u{0123}\";
//                           ^^^^^^^^^^^^^^^^^^^ string.quoted.double.raw
//                              ^^^^^^^^^^^^^^^ -constant.character.escape

0;
// <- constant.numeric.integer.decimal
1_000u32;
// <- constant.numeric.integer.decimal
 // <- constant.numeric.integer.decimal
//^^^ constant.numeric.integer.decimal
//   ^^^ storage.type - constant.numeric.integer.decimal
1i64;
// <- constant.numeric.integer.decimal
 // <- storage.type - constant.numeric.integer.decimal
//^^ storage.type - constant.numeric.integer.decimal

0.2;
// <- constant.numeric.float
 // <- constant.numeric.float
//^ constant.numeric.float
1_000.0_;
// <- constant.numeric.float
 // <- constant.numeric.float
//^^^^^^ constant.numeric.float
1.0f32;
// <- constant.numeric.float
 // <- constant.numeric.float
//^ constant.numeric.float
// ^^^ storage.type - constant.numeric.float
0.;
// <- constant.numeric.float
 // <- constant.numeric.float
0f64;
// <- constant.numeric.float
 // <- storage.type - constant.numeric.float
//^^ storage.type - constant.numeric.float
1e+8;
// <- constant.numeric.float
 // <- constant.numeric.float
//^^ constant.numeric.float
1.0E-8234987_f64;
// <- constant.numeric.float
 // <- constant.numeric.float
//^^^^^^^^^^^ constant.numeric.float
//           ^^^ storage.type - constant.numeric.float

0x0;
// <- constant.numeric.integer.hexadecimal
 // <- constant.numeric.integer.hexadecimal
//^ constant.numeric.integer.hexadecimal
0xfa;
// <- constant.numeric.integer.hexadecimal
 // <- constant.numeric.integer.hexadecimal
//^^ constant.numeric.integer.hexadecimal
0xFA_01i32;
// <- constant.numeric.integer.hexadecimal
 // <- constant.numeric.integer.hexadecimal
//^^^^^ constant.numeric.integer.hexadecimal
//     ^^^ storage.type - constant.numeric.integer.hexadecimal

0b1;
// <- constant.numeric.integer.binary
 // <- constant.numeric.integer.binary
//^ constant.numeric.integer.binary
0b0_1u8;
// <- constant.numeric.integer.binary
 // <- constant.numeric.integer.binary
//^^^ constant.numeric.integer.binary
//   ^^ storage.type - constant.numeric.integer.binary

0o0;
// <- constant.numeric.integer.octal
 // <- constant.numeric.integer.octal
//^ constant.numeric.integer.octal
0o0000_0010u64;
// <- constant.numeric.integer.octal
 // <- constant.numeric.integer.octal
//^^^^^^^^^ constant.numeric.integer.octal
//         ^^^ storage.type - constant.numeric.integer.octal

0x12e15e35b500f16e2e714eb2b37916a5_u128;
// <- constant.numeric.integer.hexadecimal
 // <- constant.numeric.integer.hexadecimal
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal
//                                 ^^^^ storage.type - constant.numeric.integer.hexadecimal

let logical: bool = true;
//         ^ punctuation.separator
//           ^^^^ storage.type
//                ^ keyword.operator.assignment
//                  ^^^^ constant.language
