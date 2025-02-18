// SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax"

    console;
//  ^^^^^^^ support.type.object.console

    console.log();
//  ^^^^^^^ support.type.object.console
//         ^ punctuation.accessor
//          ^^^^^ meta.function-call
//          ^^^ support.function.console
//             ^^ meta.group

    console.log;
//  ^^^^^^^ support.type.object.console - meta.function-call
//         ^ punctuation.accessor
//          ^^^ support.function.console

    console.log.toString();
//  ^^^^^^^ support.type.object.console - meta.function-call
//         ^ punctuation.accessor
//          ^^^ support.function.console

console.warn;
//      ^^^^ support.function.console
console.info;
//      ^^^^ support.function.console
console.log;
//      ^^^ support.function.console
console.error;
//      ^^^^^ support.function.console
console.time;
//      ^^^^ support.function.console
console.timeEnd;
//      ^^^^^^^ support.function.console
console.assert;
//      ^^^^^^ support.function.console
console.count;
//      ^^^^^ support.function.console
console.dir;
//      ^^^ support.function.console
console.group;
//      ^^^^^ support.function.console
console.groupCollapsed;
//      ^^^^^^^^^^^^^^ support.function.console
console.groupEnd;
//      ^^^^^^^^ support.function.console
console.profile;
//      ^^^^^^^ support.function.console
console.profileEnd;
//      ^^^^^^^^^^ support.function.console
console.table;
//      ^^^^^ support.function.console
console.trace;
//      ^^^^^ support.function.console
console.timeStamp;
//      ^^^^^^^^^ support.function.console
