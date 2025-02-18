// SYNTAX TEST "Packages/Rust/Rust.sublime-syntax"

while n < 50 {
//^^^ keyword.control
    n = n * 2;
}

for i in 1..10 {
// <- keyword.control
//    ^^ keyword.operator
//       ^ constant.numeric.integer.decimal
//        ^^ keyword.operator.range
//          ^^ constant.numeric.integer.decimal
    println!("I: {}", i);
// ^^^^^^^^^^^^^^^^^^^^^^ meta.block
}
// <- meta.block punctuation.section.block.end

'label_name: loop {
// ^^^^^^^^ entity.name.label
//         ^ punctuation.separator
//           ^^^^ keyword.control
//                ^ meta.block punctuation.section.block.begin
    n += 1;
    if n / 2 == 5 {
//       ^ keyword.operator.arithmetic
        continue;
//      ^^^^^^^^ keyword.control
    }
    if n > 9 {
        break;
//      ^^^^^ keyword.control
    }
}

'label1: for _ in 0..100 {
    'label2 : loop {
//  ^^^^^^^ entity.name.label
//          ^ punctuation.separator
        'label3: while true {
//      ^^^^^^^ entity.name.label
//             ^ punctuation.separator
            break 'label2;
//                ^^^^^^^ entity.name.label
//                       ^ punctuation.terminator
        }
        continue 'label1;
//               ^^^^^^^ entity.name.label
//                      ^ punctuation.terminator
    }
}

if n < 0 {
//       ^ meta.block punctuation.section.block.begin
// <- keyword.control
    print!("{} is negative", n);
//                             ^ punctuation.terminator
} else if n > 0 {
// <- meta.block punctuation.section.block.end
// ^^^ keyword.control
//              ^ meta.block punctuation.section.block.begin
//     ^^ keyword.control
    print!("{0} is positive", n);
} else {
// <- meta.block punctuation.section.block.end
// ^^^ keyword.control
//     ^ meta.block punctuation.section.block.begin
    print!("{} is zero", n);
// ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block
}
// <- meta.block punctuation.section.block.end

if let BasicStruct(i) = j {
// ^^^ keyword.declaration.variable.rust
//                    ^ keyword.operator.assignment
//                        ^ meta.block punctuation.section.block.begin
    println!("Basic value: {}", i);
}
// <- meta.block punctuation.section.block.end

while let BasicStruct(k) = j {
//^^^ keyword.control
//    ^^^ keyword.declaration.variable.rust
//                       ^ keyword.operator.assignment
//                           ^ meta.block punctuation.section.block.begin
    println!("Constructed example: {}", j)
    j = BasicStruct(j + 1);
    if k > 20 {
        break;
        //^^^ meta.block meta.block keyword.control
    }
}
// <- meta.block punctuation.section.block.end

continue_running();
//^^^^^^^^^^^^^^ variable.function
break_things();
//^^^^^^^^^^ variable.function
