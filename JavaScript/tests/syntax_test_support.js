// SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax"

    console.log();
//  ^^^^^^^^^^^^^ meta.function-call.method
//  ^^^^^^^ support.type.object.console
//         ^ punctuation.accessor
//          ^^^ support.function.console
//             ^^ meta.group

    console.log;
//  ^^^^^^^^^^^ - meta.function-call
//  ^^^^^^^ support.type.object.console
//         ^ punctuation.accessor
//          ^^^ support.function.console

    console.log.toString();
//  ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.method - meta.function-call meta.function-call
//  ^^^^^^^ support.type.object.console
//         ^ punctuation.accessor
//          ^^^ support.function.console

    isNaN;
//  ^^^^^ support.function - meta.function-call

    isNaN();
//  ^^^^^^^ meta.function-call - meta.function-call.method
//  ^^^^^ support.function
//       ^^ meta.group

    isNaN.call();
//  ^^^^^^^^^^^^ meta.function-call.method - meta.function-call meta.function-call
//  ^^^^^ support.function
