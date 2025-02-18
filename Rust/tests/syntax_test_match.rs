// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

let o = match n {
//      ^^^^^ keyword.control
    1 => "one",
//  ^ constant.numeric.integer.decimal
//    ^^ keyword.operator
//       ^^^^^ string.quoted.double
    2 => "two",
//  ^ constant.numeric.integer.decimal
//    ^^ keyword.operator
//       ^^^^^ string.quoted.double
    3...5 => "a few",
//  ^ constant.numeric.integer.decimal
//   ^^^ keyword.operator.range
//      ^ constant.numeric.integer.decimal
//        ^^ keyword.operator
//           ^^^^^^^ string.quoted.double
    _ => "lots",
//  ^ source
//    ^^ keyword.operator
};

// Guards
match n {
// <- keyword.control
    a if n > 5 => println!("Big: {}", a),
//    ^^ keyword.control
//         ^ keyword.operator.comparison
//             ^^ keyword.operator
//                ^^^^^^^^ support.macro
    b if n <= 5 => println!("Small: {}", b),
//    ^^ keyword.control
//         ^^ keyword.operator.comparison
//              ^^ keyword.operator
//                 ^^^^^^^^ support.macro
//                                  ^^ constant.other.placeholder
}

// Binding
match my_func() {
// ^^ keyword.control
//    ^^^^^^^ variable.function
//              ^ meta.block punctuation.section.block.begin
    0 => println!("None"),
//  ^ constant.numeric.integer.decimal
//    ^^ keyword.operator
//       ^^^^^^^^ support.macro
    res @ 1...9 => println!("Digit: {}", res),
//      ^ keyword.operator
//         ^^^ keyword.operator.range
//                                  ^^ constant.other.placeholder
    _ => println!("Full number"),
//  ^ source
//    ^^ keyword.operator
}
// <- meta.block punctuation.section.block.end
