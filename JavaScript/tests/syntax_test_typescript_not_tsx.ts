// SYNTAX TEST "Packages/JavaScript/TypeScript.sublime-syntax"

    < T > foo;
//  ^^^^^ meta.assertion
//  ^ punctuation.definition.assertion.begin
//    ^ support.class
//      ^ punctuation.definition.assertion.end
//        ^^^ variable.other.readwrite

    foo < T > bar;
//  ^^^ variable.other.readwrite
//      ^ keyword.operator.logical
//        ^ variable.other.constant
//          ^ keyword.operator.logical
//            ^^^ variable.other.readwrite

    foo
    < T > bar;
//  ^ keyword.operator.logical
//    ^ variable.other.constant
//      ^ keyword.operator.logical
//        ^^^ variable.other.readwrite
