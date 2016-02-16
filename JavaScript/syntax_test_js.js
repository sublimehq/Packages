// SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax"

import TheirClass from "./mypath";

function foo() {
// ^ storage.type.function
//        ^ entity.name.function
}

var bar = function() {
// <- storage.type
//   ^ variable.other.readwrite entity.name.function
//         ^ storage.type.function
}

baz = function*()
// <- variable.other.readwrite entity.name.function
//     ^ storage.type.function
//            ^ keyword.generator.asterisk
{

}

if (true)
// <- keyword.control.conditional
{
    bar()
}

var str = '\':';
var str2 = 0;
// <- storage.type
//   ^ variable.other.readwrite
//       ^ keyword.operator.assignment

tag`Hello ${ a + b } world\nanother ${expression}.`;
// <- variable.function.tagged-template.js
// ^ punctuation.definition.string.template.begin.js
//   ^ string.template.js
//        ^ punctuation.definition.template-expression.begin.js
//           ^ variable.other.readwrite.js
//             ^ keyword.operator.arithmetic.js
//               ^ meta.template.expression.js source.js.embedded.expression
//                 ^ punctuation.definition.template-expression.end.js
//                        ^ constant.character.escape.js
//                                                ^ punctuation.definition.string.template.end.js

var obj = {
    key: bar,
    // <- meta.object-literal.key
    $key2: "string value",
    // ^ meta.object-literal.key
    //   ^ - constant.other
    //        ^ string.quoted.double
    $key3: 0
    // <- meta.object-literal.key.dollar punctuation.dollar
     // <- meta.object-literal.key.dollar - punctuation.dollar
    "key4": true
    // <- string.quoted.double
    //    ^ punctuation.separator.key-value - string
    'key5': true
    // <- string.quoted.single
    //    ^ punctuation.separator.key-value - string

    funcKey: function() {
    // ^ meta.object-literal.key entity.name.function
    },

    func2Key: function func2Key() {
    // ^ meta.object-literal.key entity.name.function
    }

    funcKeyArrow: () => {
    // ^ meta.object-literal.key entity.name.function
    }

    "funcStringKey": function funcStringKey()
    // ^ meta.object-literal.key string.quoted.double entity.name.function
    { }

    'funcStringKey': function() {
    // ^ meta.object-literal.key string.quoted.single entity.name.function
    }

    'funcStringKeyArrow': () => {
    // ^ meta.object-literal.key string.quoted.single entity.name.function
    }

    "funcString2KeyArrow": (foo) => {
    // ^ meta.object-literal.key string.quoted.double entity.name.function
    }

    static foo(bar) {
    // ^ storage.type
    //      ^entity.name.function
    }

    *baz(){
    // <- keyword.generator.asterisk
    // ^ entity.name.function
    }
}

var $ = function(baz) {
//  ^ variable.other.dollar.only punctuation.dollar
}

$()
// <- variable.other.dollar.only punctuation.dollar

$foo = null;
// <- variable.other.dollar punctuation.dollar
// ^ variable.other.dollar - punctuation.dollar


baz = "";
// <- variable.other.readwrite
//     ^ string.quoted.double

var qux = 100;
// <- storage.type
//   ^ variable.other.readwrite
//         ^ constant.numeric

if (100.0 > qux) {

}

switch ($foo) {
    case foo:
    // ^ keyword.control.switch
    //      ^ - punctuation.separator.key-value
        qux = 1;
        break;
        // ^ keyword.control.loop
    case "baz":
    // ^ keyword.control.switch
    //        ^ - punctuation.separator.key-value string
        qux = 2;
        break;
        // ^ keyword.control.loop
    default:
    // ^ keyword.control.switch
    //     ^ - punctuation.separator.key-value
        qux = 3;
}

class MyClass extends TheirClass {
    constructor(el)
    // ^ entity.name.function
    {
        $.foo = "";
        super(el);
    }

    get foo()
    // <- storage.type.accessor
    //   ^ entity.name.function
    {
        return this._foo;
    }

    static foo(baz) {
    // ^ storage.type
    //       ^ entity.name.function  

    }

    qux()
    { }

    get bar () {
    // <- storage.type.accessor
    //   ^ entity.name.function
        return false;
    }

    baz() { return null }
    // <- entity.name.function
}

MyClass.foo = function() {}
// ^ support.class
//       ^ entity.name.function

var simpleArrow = foo => bar
//   ^ entity.name.function
//                 ^ variable.parameter.function
//                    ^ storage.type.function.arrow

var Proto = () => {
//   ^ entity.name.function
//             ^ storage.type.function.arrow
    this._var = 1;
}

Proto.prototype.getVar = () => this._var
// ^ entity.name.class
//     ^ support.constant.prototype
//                ^ entity.name.function
//                           ^ storage.type.function.arrow
