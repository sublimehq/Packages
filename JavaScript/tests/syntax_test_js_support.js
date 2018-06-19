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

    Array
//  ^^^^^ support.class.builtin
    ArrayBuffer
//  ^^^^^^^^^^^ support.class.builtin
    Boolean
//  ^^^^^^^ support.class.builtin
    DataView
//  ^^^^^^^^ support.class.builtin
    Date
//  ^^^^ support.class.builtin
    Float32Array
//  ^^^^^^^^^^^^ support.class.builtin
    Float64Array
//  ^^^^^^^^^^^^ support.class.builtin
    Function
//  ^^^^^^^^ support.class.builtin
    Int8Array
//  ^^^^^^^^^ support.class.builtin
    Int16Array
//  ^^^^^^^^^^ support.class.builtin
    Int32Array
//  ^^^^^^^^^^ support.class.builtin
    Map
//  ^^^ support.class.builtin
    Number
//  ^^^^^^ support.class.builtin
    Object
//  ^^^^^^ support.class.builtin
    Promise
//  ^^^^^^^ support.class.builtin
    Proxy
//  ^^^^^ support.class.builtin
    RegExp
//  ^^^^^^ support.class.builtin
    Set
//  ^^^ support.class.builtin
    String
//  ^^^^^^ support.class.builtin
    Symbol
//  ^^^^^^ support.class.builtin
    Uint8Array
//  ^^^^^^^^^^ support.class.builtin
    Uint16Array
//  ^^^^^^^^^^^ support.class.builtin
    Uint32Array
//  ^^^^^^^^^^^ support.class.builtin
    Uint32ClampedArray
//  ^^^^^^^^^^^^^^^^^^ support.class.builtin
    WeakMap
//  ^^^^^^^ support.class.builtin
    WeakSet
//  ^^^^^^^ support.class.builtin

    Error
//  ^^^^^ support.class.error
    EvalError
//  ^^^^^^^^^ support.class.error
    RangeError
//  ^^^^^^^^^^ support.class.error
    ReferenceError
//  ^^^^^^^^^^^^^^ support.class.error
    SyntaxError
//  ^^^^^^^^^^^ support.class.error
    TypeError
//  ^^^^^^^^^ support.class.error
    URIError
//  ^^^^^^^^ support.class.error

    Atomics
//  ^^^^^^^ support.constant.builtin
    Math
//  ^^^^ support.constant.builtin
    JSON
//  ^^^^ support.constant.builtin
    Reflect
//  ^^^^^^^ support.constant.builtin

    eval
//  ^^^^ support.function
    isFinite
//  ^^^^^^^^ support.function
    isNaN
//  ^^^^^ support.function
    parseFloat
//  ^^^^^^^^^^ support.function
    parseInt
//  ^^^^^^^^ support.function
    decodeURI
//  ^^^^^^^^^ support.function
    decodeURIComponent
//  ^^^^^^^^^^^^^^^^^^ support.function
    encodeURI
//  ^^^^^^^^^ support.function
    encodeURIComponent
//  ^^^^^^^^^^^^^^^^^^ support.function

    escape
//  ^^^^^^ invalid.deprecated support.function
    unescape
//  ^^^^^^^^ invalid.deprecated support.function
