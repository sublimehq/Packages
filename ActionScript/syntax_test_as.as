// SYNTAX TEST "Packages/ActionScript/ActionScript.sublime-syntax"

// <- source.actionscript

// this is a comment
// <- comment.line.double-slash punctuation.definition.comment
 // <- comment.line.double-slash punctuation.definition.comment
//^^^^^^^^^^^^^^^^^^ comment.line.double-slash

// // this is a comment, not a comment within a comment
// <- comment.line.double-slash punctuation.definition.comment
 // <- comment.line.double-slash punctuation.definition.comment
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - comment.line.double-slash comment.line.double-slash

// /* this is a comment, not a comment within a comment */
// <- comment.line.double-slash punctuation.definition.comment
 // <- comment.line.double-slash punctuation.definition.comment
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - comment.line.double-slash comment.block

/* comment block */
// <- comment.block punctuation.definition.comment.begin
 // <- comment.block punctuation.definition.comment.begin
//^^^^^^^^^^^^^^^^^ comment.block
//               ^^ comment.block punctuation.definition.comment.end


/* // comment block */
// <- comment.block punctuation.definition.comment.begin
 // <- comment.block punctuation.definition.comment.begin
//^^^^^^^^^^^^^^^^^^^^ comment.block
// ^^^^^^^^^^^^^^^^^^^ - comment.block comment.line.double-slash
//                  ^^ comment.block punctuation.definition.comment.end

/**
 *
 // <- comment.block punctuation.definition.comment
*/



    class com.example.Greeter extends MovieClip
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//  ^^^^^ meta.class keyword.declaration.class
//        ^^^^^^^^^^^^^^^^^^^ meta.class entity.name.type
//                            ^^^^^^^ meta.class storage.modifier.extends
//                                    ^^^^^^^^^ meta.class entity.other.inherited-class
    {
        public function Greeter()
//      ^^^^^^ keyword.control
//             ^^^^^^^^^^^^^^^^^^ meta.function
//             ^^^^^^^^ meta.function keyword.declaration.function
//                      ^^^^^^^ meta.function entity.name.function
//                             ^ meta.function punctuation.definition.parameters.begin
//                              ^ meta.function punctuation.definition.parameters.end
        {
            var txtHello: TextField = this.createTextField("txtHello", 0, 0, 0, 100, 100);
//          ^^^ keyword.control
//                      ^ keyword.operator.symbolic
//                        ^^^^^^^^^ support.class
//                                  ^ keyword.operator.symbolic
//                                    ^^^^ support.function
//                                         ^^^^^^^^^^^^^^^ support.function
//                                                         ^^^^^^^^^^ string.quoted.double
//                                                         ^ string.quoted.double punctuation.definition.string.begin
//                                                                  ^ string.quoted.double punctuation.definition.string.end
//                                                                     ^ constant.numeric
            txtHello.text = "Hello, world";
        }
    }


    private function getFunctionName(e:Error):String {
//                                   ^^^^^^^ meta.function variable.parameter
//                                           ^ keyword.operator.symbolic
//                                            ^^^^^^ storage.type
        var stackTrace:String = e.getStackTrace();                              // entire stack trace
        var startIndex:int = stackTrace.indexOf("at ");                         // start of first line
        var endIndex:int = stackTrace.indexOf("()");                            // end of function name

        return stackTrace.substring(startIndex + 3, endIndex);
//      ^^^^^^ keyword.control
    }

    private function on_applicationComplete(event:FlexEvent):void {
        trace(getFunctionName(new Error());
//                            ^^^ keyword.control
    }
