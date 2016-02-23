// SYNTAX TEST "Packages/JavaScript/JavaScript.sublime-syntax"

import TheirClass from "./mypath";
// ^ keyword.control.import
//                  ^ keyword.control.import

import {identifier, otherIdentifier} from "somewhere";
// ^ keyword.control.import
//       ^ meta.import meta.block variable.other.readwrite

import thing, {identifier as otherIdentifier}, * as otherName from "otherplace";
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.import
// ^ keyword.control.import
//      ^ variable.other.readwrite
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block
//                ^ variable.other.readwrite
//                        ^ keyword.control.import
//                                     ^ variable.other.readwrite
//                                             ^ constant.other.js
//                                                             ^ keyword.control.import

import 'module'
// ^^^^^^^^^^^^ meta.import

// This object literal is technically broken since foo() does not have a
// method body, but we include it here to ensure that highlighting is not
// broken as the user is typing
{ otherIdentifier, foo(), baz: 1 }
// <- meta.object-literal
 // <- meta.object-literal
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.object-literal
//^^^^^^^^^^^^^^^ variable.other.readwrite
//                 ^^^ entity.name.function
//                        ^^^ meta.object-literal.key

function foo() {
// <- meta.function.declaration
 // <- meta.function.declaration
  // <- meta.function.declaration
// ^^^^^^^^^^^ meta.function.declaration
// ^ storage.type.function
//        ^ entity.name.function
}
// <- meta.block

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
//        ^ meta.object-literal - meta.block
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
// <- meta.object-literal - meta.block

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
// <- meta.conditional meta.block

if (foo bar)
    baz = "test"

do {
// <- meta.do-while
// ^ meta.block
    qux += 1
//  ^^^^^^^^ meta.do-while meta.block
} while(qux < 20);
// <- meta.block
// ^^^^^^^^^^^^^^ meta.do-while - meta.block
// ^^^^ keyword.control.loop
//      ^^^^^^^^ meta.group.braces.round

for (var i = 0; i < 10; i++) {
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for
//   ^^^^^^^^^^^^^^^^^^^^^^ meta.group.braces.round
//                           ^ meta.block
    i += 1;
//  ^^^^^^^ meta.for meta.block
}
// <- meta.block

while (true)
// ^^^^^^^^^ meta.while
//     ^^^^ meta.group.braces.round
{
// <- meta.block
    break;
//  ^^^^^^ meta.while meta.block
}
// <- meta.block

switch ($foo) {
// ^^^^^^^^^^^^ meta.switch
//      ^^^^ meta.group.braces.round
//            ^ meta.block
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
// <- meta.block

try {
// <- meta.try keyword.control.trycatch
// ^^ meta.try
//  ^ meta.block
    foobar = qux.bar();
//  ^^^^^^^^^^^^^^^^^^^ meta.try meta.block
} catch (e) {
// <- meta.block
// ^^^^^^^ meta.catch
//       ^ meta.group.braces.round
//          ^ meta.block
    foobar = 0
//  ^^^^^^^^^^ meta.catch meta.block
} finally {
// <- meta.block
// ^^^^^^^^ meta.finally
//        ^ meta.block
    foobar += 1
//  ^^^^^^^^^^^ meta.finally meta.block
}
// <- meta.block

class MyClass extends TheirClass {
// <- storage.type.class
//    ^^^^^^^ entity.name.type.class
//                               ^ meta.block
    constructor(el)
//  ^^^^^^^^^^^^^^^ meta.function.declaration
    // ^ entity.name.function
    {
//  ^ meta.class meta.block meta.block meta.brace.curly
        $.foo = "";
        super(el);
    }
//  ^ meta.class meta.block meta.block meta.brace.curly

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
//  ^ meta.class meta.block meta.block meta.brace.curly

    get bar () {
//  ^^^^^^^^^^ meta.function.declaration
//             ^ meta.class meta.block meta.block meta.brace.curly
    // <- storage.type.accessor
    //   ^ entity.name.function
        return false;
    }

    baz() { return null }
//  ^^^^^ meta.function.declaration
    // <- entity.name.function
}
// <- meta.block

() => {}
// <- meta.function.declaration punctuation.definition.parameters
 // <- meta.function.declaration punctuation.definition.parameters
//^^^ meta.function.declaration
//    ^^ meta.block meta.brace.curly

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

// Tests to ensure the new keyword is highlighted properly even when the
// following element is not an identifier
var abc = new ABC(
//         ^ meta.instance.constructor keyword.operator.new
//               ^ meta.instance.constructor meta.function-call.constructor
    'my-name-is-abc',
    new (function () {
//  ^ meta.instance.constructor meta.function-call.constructor meta.instance.constructor keyword.operator.new
//      ^ meta.instance.constructor meta.function-call.constructor meta.instance.constructor meta.function-call.constructor meta.group.braces.round
        var foo = 1;
//      ^ meta.instance.constructor meta.function-call.constructor meta.instance.constructor meta.function-call.constructor meta.group.braces.round meta.block
    })
);

new Date().getTime()
// ^^^^^^^ meta.instance.constructor
//  ^^^^^^ meta.function-call.constructor
//        ^^^^^^^^^^ - meta.instance.constructor
