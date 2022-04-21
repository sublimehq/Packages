// SYNTAX TEST "Packages/JavaScript/TypeScript.sublime-syntax"

    < T > foo;
//  ^^^^^ meta.assertion
//  ^ punctuation.definition.assertion.begin
//    ^ support.class
//      ^ punctuation.definition.assertion.end
//        ^^^ variable.other.readwrite

    foo < T > bar;
//  ^^^ variable.other.readwrite
//      ^ keyword.operator.comparison
//        ^ variable.other.constant
//          ^ keyword.operator.comparison
//            ^^^ variable.other.readwrite

    foo
    < T > bar;
//  ^ keyword.operator.comparison
//    ^ variable.other.constant
//      ^ keyword.operator.comparison
//        ^^^ variable.other.readwrite

// This is a type assertion that is incompatible with JSX
let strLength: number = (<string>someValue).length; // </string>
//                       ^^^^^^^^ meta.assertion - meta.tag
//                                                     ^^^^^^^^^ comment - meta.tag

    <T>() => {};
//  ^^^^^^^^^^^ meta.function
//  ^^^ meta.generic
//  ^ punctuation.definition.generic.begin
//   ^ variable.parameter.generic
//    ^ punctuation.definition.generic.end
//     ^^ meta.function.parameters
//        ^^ keyword.declaration.function.arrow

    <any>(<any>a);
//  ^^^^^ meta.assertion
//  ^ punctuation.definition.assertion.begin
//   ^^^ support.type.any
//      ^ punctuation.definition.assertion.end
//       ^^^^^^^^ meta.group
//       ^ punctuation.section.group.begin
//        ^^^^^ meta.assertion
//        ^ punctuation.definition.assertion.begin
//         ^^^ support.type.any
//            ^ punctuation.definition.assertion.end
//             ^ variable.other.readwrite
//              ^ punctuation.section.group.end
//               ^ punctuation.terminator.statement
