% SYNTAX TEST "Packages/Matlab/Matlab.sublime-syntax"


x = [ 1.76 ]
// <- source.matlab punctuation.definition.brackets.begin.matlab
//^ source.matlab keyword.operator.symbols.matlab
//  ^ source.matlab punctuation.definition.brackets.begin.matlab 
//    ^ source.matlab meta.brackets.matlab constant.numeric.matlab  
//         ^ source.matlab punctuation.definition.brackets.end.matlab


xAprox = fMetodoDeNewton( xi )
// <- source.matlab meta.variable.other.valid.matlab
//     ^ source.matlab keyword.operator.symbols.matlab
//       ^ source.matlab meta.variable.other.valid.matlab
//                      ^ source.matlab punctuation.definition.parens.begin.matlab 
//                        ^ source.matlab meta.parens.matlab meta.variable.other.valid.matlab
//                           ^ source.matlab punctuation.definition.parens.end.matlab 



