// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

String my_var = format!("Hello {0}", "World");
// ^^^ support.type
//            ^ keyword.operator.assignment
//              ^^^^^^^ support.macro
//                     ^ punctuation.section.group.begin
//                     ^^^^^^^^^^^^^^^^^^^^^^ meta.group
//                      ^^^^^^^^^^^ string.quoted.double
//                             ^^^ constant.other.placeholder
//                                          ^ punctuation.section.group.end

pub fn macro_tests() {
    println!();
//  ^^^^^^^^ support.macro
    println!("Example");
//  ^^^^^^^^ support.macro
//          ^ punctuation.section.group.begin
//           ^^^^^^^^^ string.quoted.double
//                    ^ punctuation.section.group.end
    println!("Example {} {message}", "test", message="hi");
//                    ^^ constant.other.placeholder
//                       ^^^^^^^^^ constant.other.placeholder
    panic!();
//  ^^^^^^ support.macro
    panic!("Example");
//  ^^^^^^ support.macro
//        ^ punctuation.section.group.begin
//         ^^^^^^^^^ string.quoted.double
//                  ^ punctuation.section.group.end
    panic!("Example {} {message}", "test", message="hi");
//                  ^^ constant.other.placeholder
//                     ^^^^^^^^^ constant.other.placeholder
    format_args!("invalid type: {}, expected {}", unexp, exp);
//  ^^^^^^^^^^^^ support.macro
//                              ^^ constant.other.placeholder
//                                           ^^ constant.other.placeholder
    unreachable!("{:?}", e);
//  ^^^^^^^^^^^^ support.macro
//                ^^^^ constant.other.placeholder
    unimplemented!("{:?}", e);
//  ^^^^^^^^^^^^^^ support.macro
//                  ^^^^ constant.other.placeholder
    tokio::join!()
//         ^^^^^ support.macro
}

my_var = format!("Hello {name}, how are you?",
//     ^ keyword.operator.assignment
//       ^^^^^^^ support.macro
//              ^ punctuation.section.group.begin
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                      ^^^^^^ constant.other.placeholder
    name="John");
// ^^^^^^^^^^^^^ meta.group
//      ^ keyword.operator.assignment
//       ^^^^^^ string.quoted.double
//             ^ punctuation.section.group.end

        write!(f, "{}", self.0)
//      ^^^^^^ support.macro
//            ^^^^^^^^^^^^^^^^^ meta.group
//            ^ punctuation.section.group.begin
//                ^^^^ string.quoted.double
//                 ^^ constant.other.placeholder
//                      ^^^^ variable.language
//                          ^ punctuation.accessor.dot
//                            ^ punctuation.section.group.end
        write!(f, "{:10}", self.0)
//                 ^^^^^ constant.other.placeholder
        eprint!("{:^10}", self.0)
//      ^^^^^^^ support.macro
//               ^^^^^^ constant.other.placeholder
        eprintln!("{:+046.89?}", self.0)
//      ^^^^^^^^^ support.macro
//                 ^^^^^^^^^^^ constant.other.placeholder
        assert!(true, "{:-^#10x}", self.0)
//      ^^^^^^^ support.macro
//                     ^^^^^^^^^ constant.other.placeholder
        debug_assert!(true, "{4j:#xf10}", self.0)
//      ^^^^^^^^^^^^^ support.macro
//                           ^^^^^^^^^^ string.quoted.double
        write!(f, "{{}}", self.0)
//                 ^^^^ constant.character.escape
        write!(get_writer(), "{}", "{}")
//      ^^^^^^ support.macro
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//             ^^^^^^^^^^ variable.function
//                           ^^^^ string.quoted.double
//                            ^^ constant.other.placeholder
//                                 ^^^^ string.quoted.double
//            ^ punctuation.section.group.begin
//                                     ^ punctuation.section.group.end
        writeln!(w)
//      ^^^^^^^^ support.macro
//              ^^^ meta.group
//              ^ punctuation.section.group.begin
//                ^ punctuation.section.group.end
        println!()
//      ^^^^^^^^ support.macro
//              ^^ meta.group
//              ^ punctuation.section.group.begin
//               ^ punctuation.section.group.end

/*******************************************************************/
// The outer brackets can be any type.
macro_rules! brackets_curly {
//                          ^ meta.macro punctuation.section.block.begin
    ($i:ident) => ($i)
//  ^^^^^^^^^^ meta.macro meta.macro.matchers
//             ^^ meta.macro keyword.operator
//                ^^^^ meta.macro meta.macro.transcribers
}
// <- meta.macro punctuation.section.block.end
macro_rules! brackets_paren (
//                          ^ meta.macro punctuation.section.block.begin
    ($i:ident) => ($i)
//  ^^^^^^^^^^ meta.macro meta.macro.matchers
//             ^^ meta.macro keyword.operator
//                ^^^^ meta.macro meta.macro.transcribers
  );
//^ meta.macro punctuation.section.block.end
// ^ punctuation.terminator
macro_rules! brackets_square [
//                           ^ meta.macro punctuation.section.block.begin
    ($i:ident) => ($i)
//  ^^^^^^^^^^ meta.macro meta.macro.matchers
//             ^^ meta.macro keyword.operator
//                ^^^^ meta.macro meta.macro.transcribers
  ];
//^ meta.macro punctuation.section.block.end
// ^ punctuation.terminator

/*******************************************************************/
// Matchers and transcribers can use any bracket type.
macro_rules! brackets {
//^^^^^^^^^^ meta.macro keyword.declaration.macro
//           ^^^^^^^^ meta.macro entity.name.macro
//                    ^ meta.macro punctuation.section.block.begin
    ($i:ident) => ($i);
//  ^^^^^^^^^^ meta.macro meta.macro.matchers
//                ^^^^ meta.macro meta.macro.transcribers
//  ^ punctuation.section.block.begin
//   ^^ variable.parameter
//     ^ punctuation.separator
//      ^^^^^ storage.type
//           ^ punctuation.section.block.end
//             ^^ meta.macro keyword.operator
//                ^ punctuation.section.block.begin
//                 ^^ variable.other
//                   ^ punctuation.section.block.end
//                    ^ meta.macro punctuation.terminator
    {$i:ident} => {$i};
//  ^^^^^^^^^^ meta.macro meta.macro.matchers
//                ^^^^ meta.macro meta.macro.transcribers
//  ^ punctuation.section.block.begin
//   ^^ variable.parameter
//      ^^^^^ storage.type
//           ^ punctuation.section.block.end
//                ^ punctuation.section.block.begin
//                   ^ punctuation.section.block.end
//                    ^ meta.macro punctuation.terminator
    [$i:ident] => [$i];
//  ^^^^^^^^^^ meta.macro meta.macro.matchers
//                ^^^^ meta.macro meta.macro.transcribers
//  ^ punctuation.section.block.begin
//   ^^ variable.parameter
//      ^^^^^ storage.type
//           ^ punctuation.section.block.end
//                ^ punctuation.section.block.begin
//                   ^ punctuation.section.block.end
    // And they don't have to match.
    ($i:ident) => [$i];
//  ^^^^^^^^^^ meta.macro meta.macro.matchers
//                ^^^^ meta.macro meta.macro.transcribers
    // Support nested brackets within matcher.
    ((hello) ($i:ident) [foo] {bar}) => {$i};
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//            ^^ variable.parameter
//               ^^^^^ storage.type
//                                   ^^ meta.macro keyword.operator
//                                      ^^^^ meta.macro meta.macro.transcribers
//                                       ^^ meta.macro meta.macro.transcribers variable.other
}

/*******************************************************************/
// Typical example with embedded rust code.
macro_rules! forward_ref_binop [
//                             ^ meta.macro punctuation.section.block.begin
    (impl $imp:ident, $method:ident for $t:ty, $u:ty) => {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//   ^^^^ keyword.declaration.impl
//        ^^^^ variable.parameter
//             ^^^^^ storage.type
//                    ^^^^^^^ variable.parameter
//                            ^^^^^ storage.type
//                                      ^^ variable.parameter
//                                         ^^ storage.type
//                                             ^^ variable.parameter
//                                                ^^ storage.type
//                                                    ^^ keyword.operator
//                                                       ^ meta.macro meta.macro.transcribers punctuation.section.block.begin
        impl<'a, 'b> $imp<&'a $u> for &'b $t {
//      ^^^^ keyword.declaration.impl
//          ^^^^^^^^ meta.generic
//           ^^ storage.modifier.lifetime
//               ^^ storage.modifier.lifetime
//                   ^^^^ variable.other
//                       ^^^^^^^^ meta.generic
//                        ^ keyword.operator
//                         ^^ storage.modifier.lifetime
//                            ^^ variable.other
//                                ^^^ entity.name.impl
//                                    ^ keyword.operator
//                                     ^^ storage.modifier.lifetime
//                                        ^^ variable.other
//                                           ^ meta.macro meta.macro.transcribers meta.impl meta.block punctuation.section.block.begin
            type Output = <$t as $imp<$u>>::Output;
//                        ^^^^^^^^^^^^^^^^ meta.generic
//                            ^^ keyword.operator
//                                        ^^ meta.path

            #[inline]
//          ^^^^^^^^^ meta.annotation
            fn $method(self, other: &'a $u) -> <$t as $imp<$u>>::Output {
//          ^^ keyword.declaration.function
//             ^^^^^^^ variable.other
//                     ^^^^ variable.language
//                                  ^ keyword.operator
//                                   ^^ storage.modifier.lifetime
//                                      ^^ variable.other
//                                          ^^ punctuation.separator
//                                             ^^^^^^^^^^^^^^^^ meta.generic
//                                                 ^^ keyword.operator
//                                                             ^^ meta.path
//                                                                      ^ meta.macro meta.macro.transcribers meta.impl meta.block meta.block punctuation.section.block.begin
                $imp::$method(*self, *other)
//              ^^^^ variable.other
//                    ^^^^^^^ variable.other
//                            ^ keyword.operator
//                             ^^^^ variable.language
//                                   ^ keyword.operator
            }
        }
    }
]

/*******************************************************************/
// Kleene operators.
macro_rules! kleene_star {
    ($($arg:tt)+) => (
//  ^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//   ^ keyword.operator
//    ^ punctuation.section.group.begin
//     ^^^^ variable.parameter
//         ^ punctuation.separator
//          ^^ storage.type
//            ^ punctuation.section.group.end
//             ^ keyword.operator
//              ^ punctuation.section.block.end
//                ^^ meta.macro keyword.operator
//                   ^ meta.macro meta.macro.transcribers punctuation.section.block.begin
        println!($($arg));
    );
    ($($arg:tt)*) => (
//  ^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//     ^^^^ variable.parameter
//             ^ keyword.operator
//              ^ punctuation.section.block.end
//                ^^ meta.macro keyword.operator
        println!($($arg)*);
    );
    ($($arg:tt);+) => (
//  ^^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//     ^^^^ variable.parameter
//          ^^ storage.type
//             ^ meta.macro meta.macro.matchers
//              ^ keyword.operator
//               ^ punctuation.section.block.end
//                 ^^ meta.macro keyword.operator
        println!($($arg));
    );
    ($($arg:tt),*) => (
//  ^^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//     ^^^^  variable.parameter
//          ^^  storage.type
//             ^
//              ^  keyword.operator
//               ^ meta.macro meta.macro.matchers punctuation.section.block.end
//                 ^^ meta.macro keyword.operator
        println!($($arg)*);
    );
    // Spacing should be ignored.
    ( $ ( $ arg : tt ) , * ) => ();
//  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//  ^ punctuation.section.block.begin
//    ^ keyword.operator
//      ^ punctuation.section.group.begin
//        ^^^^^ variable.parameter
//              ^ punctuation.separator
//                ^^ storage.type
//                   ^ punctuation.section.group.end
//                       ^ keyword.operator
//                         ^ punctuation.section.block.end
//                           ^^ meta.macro keyword.operator
    // Separators can be any token.
    ($($foo:tt) else *) => ();
//  ^^^^^^^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//                   ^ keyword.operator
//                      ^^ meta.macro keyword.operator
//                         ^^ meta.macro meta.macro.transcribers

    // At-most-once is new in 2018.
    // Note: This is in flux, but looks like they've landed on a final form.
    // https://github.com/rust-lang/rust/issues/51934
    ($($a:ident)? ; $num:expr) => {};
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//              ^ keyword.operator
//                  ^^^^ variable.parameter
//                                ^^ meta.macro meta.macro.transcribers

}
// <- meta.macro punctuation.section.block.end

/*******************************************************************/
// Different matcher types.
macro_rules! designators {
    ($i:item,
//   ^^ variable.parameter
//      ^^^^ storage.type
     $b:block,
//   ^^ variable.parameter
//      ^^^^^ storage.type
     $s:stmt,
//   ^^ variable.parameter
//      ^^^^ storage.type
     $p:pat,
//   ^^ variable.parameter
//      ^^^ storage.type
     $pp:pat_param,
//   ^^^ variable.parameter
//       ^^^^^^^^^ storage.type
     $e:expr,
//   ^^ variable.parameter
//      ^^^^ storage.type
     $t:ty,
//   ^^ variable.parameter
//      ^^ storage.type
     $i:ident,
//   ^^ variable.parameter
//      ^^^^^ storage.type
     $p:path,
//   ^^ variable.parameter
//      ^^^^ storage.type
     $t:tt,
//   ^^ variable.parameter
//      ^^ storage.type
     $m:meta,
//   ^^ variable.parameter
//      ^^^^ storage.type
     $l:lifetime,
//   ^^ variable.parameter
//      ^^^^^^^^ storage.type
     $v:vis,
//   ^^ variable.parameter
//      ^^^ storage.type
     $l:literal,
//   ^^ variable.parameter
//      ^^^^^^^ storage.type
    ) => ();
    // And various tokens
    ("Any token" /*comment*/ true => 3.14 'life 'c' @ struct self) => ();
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.macro meta.macro.matchers
//   ^^^^^^^^^^^ string.quoted.double
//               ^^^^^^^^^^^ comment.block
//                           ^^^^ constant.language
//                                ^^ keyword.operator
//                                   ^^^^ constant.numeric.float
//                                        ^^^^^ storage.modifier.lifetime
//                                              ^^^ string.quoted.single
//                                                  ^ keyword.operator
//                                                    ^^^^^^ keyword.declaration.struct
//                                                               ^ punctuation.section.block.end
//                                                                 ^^ meta.macro keyword.operator
//                                                                    ^^ meta.macro meta.macro.transcribers
}
//<- meta.macro punctuation.section.block.end
