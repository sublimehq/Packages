// SYNTAX TEST "Packages/Groovy/Groovy.sublime-syntax"

// Tests for issue 1260

def defectiveSyntaxTest(String value) {
// <- storage.type.return-type
//  ^ entity.name.function
//                    ^ entity.name.function
//                      ^ storage.type.parameter
//                             ^ variable.parameter
	println value
}

void voidCheck(String value) {
// <- storage.type.return-type
//   ^ entity.name.function
//           ^ entity.name.function
//             ^ storage.type.parameter
//                    ^ variable.parameter
}

double interpretString(String value) {
// <- storage.type.return-type
//     ^ entity.name.function
//                   ^ entity.name.function
//                     ^ storage.type.parameter
//                            ^ variable.parameter
	return Double.parseDouble(value);
}

defectiveSyntaxTest("hello")
// <- meta.method
//                ^ meta.method
//                   ^ string.quoted.double

voidCheck(123456)
// <- meta.method
//      ^ meta.method
//         ^ constant.numeric

interpretString("123.0")
// <- meta.method
//            ^ meta.method
//               ^ string.quoted.double

chartHistogram([1,1,2,3])
// <- meta.method
//           ^ meta.method
//              ^ constant.numeric  
