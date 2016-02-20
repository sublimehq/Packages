// SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax"

import TheirClass from "./mypath";
// ^ keyword.control.import
//                  ^ keyword.control.import

import {identifier, otherIdentifier} from "foo";
// ^ keyword.control.import
//       ^ meta.import meta.block variable.other.readwrite

function foo() {
// <- meta.function.declaration
 // <- meta.function.declaration
  // <- meta.function.declaration
// ^^^^^^^^^^^ meta.function.declaration
// ^ storage.type.function
//        ^ entity.name.function
}

var bar = function() {
//  ^^^^^^^^^^^^^^^^ meta.function.declaration
// <- storage.type
//   ^ variable.other.readwrite entity.name.function
//         ^ storage.type.function
}

baz = function*()
// <- meta.function.declaration
 // <- meta.function.declaration
  // <- meta.function.declaration
// ^^^^^^^^^^^^^^ meta.function.declaration
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

// This is a comment function() { }
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash

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

mylabel:
// ^ entity.name.label

// Ensure a ternary identifier isn't recognized as a label
true ? str : str2
//      ^ - entity.name.label

a = test ? a + b : c;
//         ^ variable.other.readwrite
//             ^ variable.other.readwrite

{{foo}}
// ^ meta.tag.mustache.js
{{#bar}}{{/bar}}
// ^ meta.tag.mustache.js
//         ^ meta.tag.mustache.js

var obj = {
    key: bar,
    // <- meta.object-literal.key
    $key2: "string value",
    // ^ meta.object-literal.key
    //   ^ - constant.other
    //        ^ string.quoted.double
    $key3: 0,
    // <- meta.object-literal.key.dollar punctuation.dollar
     // <- meta.object-literal.key.dollar - punctuation.dollar
    $keyFunc: function() {
//  ^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // <- meta.object-literal.key.dollar entity.name.function punctuation.dollar
     // <- meta.object-literal.key.dollar entity.name.function - punctuation.dollar
    }

    "key4": true,
    // <- string.quoted.double
    //    ^ punctuation.separator.key-value - string
    'key5': true,
    // <- string.quoted.single
    //    ^ punctuation.separator.key-value - string

    funcKey: function() {
//  ^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key entity.name.function
    },

    func2Key: function func2Key() {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key entity.name.function
    },

    funcKeyArrow: () => {
//  ^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key entity.name.function
    },

    "funcStringKey": function funcStringKey()
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key string.quoted.double entity.name.function
    { },

    'funcStringKey': function() {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key string.quoted.single entity.name.function
    },

    'funcStringKeyArrow': () => {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key string.quoted.single entity.name.function
    },

    "func\\String2KeyArrow": (foo) => {
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ meta.object-literal.key string.quoted.double entity.name.function
    //    ^ constant.character.escape
    }

    qux()
//  ^^^^^ meta.function.declaration
    // <- entity.name.function
    {}

    static foo(bar) {
//  ^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ storage.type
    //      ^entity.name.function
    }

    *baz(){
//  ^^^^^^ meta.function.declaration
    // <- keyword.generator.asterisk
    // ^ entity.name.function
    }
}

var $ = function(baz) {
//  ^^^^^^^^^^^^^^^^^ meta.function.declaration
//  ^ variable.other.dollar.only punctuation.dollar entity.name.function
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
// ^^^^^^^^^^^^^^^ meta.conditional
    a;
//  ^ meta.conditional meta.block 
}

if (foo bar)
    baz = "test"

do {
// <- meta.do-while
    qux += 1
//  ^^^^^^^^ meta.do-while meta.block
} while(qux < 20);
// ^^^^^^^^^^^^^^ meta.do-while - meta.block
// ^^^^ keyword.control.loop
//      ^^^^^^^^ meta.group.braces.round

for (var i = 0; i < 10; i++) {
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for
//   ^^^^^^^^^^^^^^^^^^^^^^ meta.group.braces.round
    i += 1;
//  ^^^^^^^ meta.for meta.block
}

while (true)
// ^^^^^^^^^ meta.while
//     ^^^^ meta.group.braces.round
{
    break;
//  ^^^^^^ meta.while meta.block
}

switch ($foo) {
// ^^^^^^^^^^^^ meta.switch
//      ^^^^ meta.group.braces.round
    case foo:
    // ^ meta.switch meta.block keyword.control.switch
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
    // ^ meta.switch meta.block keyword.control.switch
    //     ^ - punctuation.separator.key-value
        qux = 3;
}

try {
// <- meta.try keyword.control.trycatch
// ^^ meta.try
    foobar = qux.bar();
//  ^^^^^^^^^^^^^^^^^^^ meta.try meta.block
} catch (e) {
// ^^^^^^^ meta.catch
//       ^ meta.group.braces.round
    foobar = 0
//  ^^^^^^^^^^ meta.catch meta.block
} finally {
// ^^^^^^^^ meta.finally
    foobar += 1
//  ^^^^^^^^^^^ meta.finally meta.block
}

class MyClass extends TheirClass {
// <- storage.type.class
//    ^^^^^^^ entity.name.type.class
    constructor(el)
//  ^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ entity.name.function
    {
        $.foo = "";
        super(el);
    }

    get foo()
//  ^^^^^^^^^ meta.function.declaration
    // <- storage.type.accessor
    //   ^ entity.name.function
    {
        return this._foo;
    }

    static foo(baz) {
//  ^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ storage.type
    //       ^ entity.name.function

    }

    qux()
//  ^^^^^ meta.function.declaration
    { }

    get bar () {
//  ^^^^^^^^^^ meta.function.declaration
    // <- storage.type.accessor
    //   ^ entity.name.function
        return false;
    }

    baz() { return null }
//  ^^^^^ meta.function.declaration
    // <- entity.name.function
}

MyClass.foo = function() {}
// ^^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
// ^ support.class
//       ^ entity.name.function

MyClass.foo = () => {}
// ^^^^^^^^^^^^^^^^ meta.function.declaration
// ^ support.class
//       ^ entity.name.function

xhr.onload = function() {}
// ^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
// <- support.class.js
//  ^ entity.name.function

xhr.onload = () => {}
// ^^^^^^^^^^^^^^^ meta.function.declaration
// <- support.class.js
//  ^ entity.name.function

var simpleArrow = foo => bar
//  ^^^^^^^^^^^^^^^^^^^^ meta.function.declaration
//   ^ entity.name.function
//                 ^ variable.parameter.function
//                    ^ storage.type.function.arrow

var Proto = () => {
//  ^^^^^^^^^^^^^ meta.function.declaration
//   ^ entity.name.function
//             ^ storage.type.function.arrow
    this._var = 1;
}

Proto.prototype.getVar = () => this._var
// ^^^^^^^^^^^^ meta.prototype.access
//              ^^^^^^^^^^^^^^ meta.function.declaration
// ^ support.class
//     ^ support.constant.prototype
//                ^ entity.name.function
//                           ^ storage.type.function.arrow

Class3.prototype = function() {
// ^^^^^^^^^^^^^ meta.prototype.declaration
//                 ^^^^^^^^^^ meta.function.declaration
// ^ support.class
//       ^ support.constant.prototype
}

Proto.prototype.attr
// ^^^^^^^^^^^^ meta.prototype.access
// ^ support.class
//     ^ support.constant.prototype
//               ^ meta.property.object

sources.DOM.status()
sources.DOM
// <- variable.other.object
    .status()
    // ^ meta.function-call.method variable.function

var Constructor = function() {
    this._var = 1;
    // ^ variable.language.this
    this._method = function() {}
    // ^ variable.language.this
    //    ^ entity.name.function
}
