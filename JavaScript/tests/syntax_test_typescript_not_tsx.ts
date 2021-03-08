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
