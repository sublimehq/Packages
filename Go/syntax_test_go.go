// SYNTAX TEST "Packages/Go/Go.sublime-syntax"
package examples

import (
// ^ meta.preprocessor.go.import
	"fmt"
)

(
	//  var commented int = 0
	//  ^ comment.line
	var valid int = 0
	// <- meta.initialization.explicit
)

const (
    graveAccentString = `highlights %s and %[1]s`
//                                  ^ constant.other.placeholder 
//                                          ^ constant.other.placeholder 
    normalString = "highlights %q and %[1]s"
//                              ^ constant.other.placeholder
//                                     ^ constant.other.placeholder
    dynamicFieldWidths = "test string %[1]*.[2]*f %*.*f"
//                                      ^ constant.other.placeholder
//                                                  ^ constant.other.placeholder
)

struct myStruct {}

func myFunc(nonHighlightedPrimitiveArg string, foo bar) {
// ^ meta.function keyword.control
//     ^ meta.function meta.function.declaration entity.name.function
//           ^ meta.function variable.parameters
    return "test string"
//  ^ meta.function meta.block keyword.control
//            ^ string.quoted.double
}

func myFunc(nonHighlightedPrimitiveArg string, foo bar) (nonHighlightedPrimitiveReturn, anotherType) {
// ^ meta.function keyword.control
//     ^ meta.function meta.function.declaration entity.name.function
//           ^ meta.function variable.parameters
//                                                           ^ meta.function variable.return-types.go
    return "test string"
//  ^ meta.function meta.block keyword.control
//            ^ string.quoted.double
}

func (var *Type) myFunc(nonHighlightedPrimitiveArg string, foo bar) (
// ^ meta.function keyword.control
//         ^ meta.function meta.function.declaration variable.receiver
//               ^ meta.function meta.function.declaration entity.name.function
//                       ^ meta.function variable.parameters
    nonHighlightedPrimitiveReturn, anotherType) {
//     ^ meta.function variable.return-types.go
    return ""
//  ^ meta.function meta.block keyword.control
}

func () {
}

type funtTypeExample func(param one) (myType bar)

func (t funtTypeExample) foobar() {}
// ^ meta.function keyword.control
//         ^ meta.function meta.function.declaration variable.receiver
//                       ^ meta.function meta.function.declaration entity.name.function
