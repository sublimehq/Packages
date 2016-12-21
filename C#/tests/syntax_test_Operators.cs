/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

int? length = customers?.Length;
/// <- storage.type
///^ storage.type.nullable
///     ^ variable.other
///                    ^^ punctuation.accessor.null-coalescing

Customer? first = customers?[0];
/// <- support.type
///     ^ storage.type.nullable
///                        ^^^^ meta.brackets
///                        ^^ punctuation.section.brackets.begin
///                           ^ punctuation.section.brackets.end

Customer second = customers[0];
/// <- support.type
///      ^ variable.other
///                        ^^^ meta.brackets
///                        ^ punctuation.section.brackets.begin
///                          ^ punctuation.section.brackets.end

int? count = customers?[0]?.Orders?.Count();
///^ storage.type.nullable
///     ^ variable.other
///        ^ keyword.operator.assignment
///                   ^^^^ meta.brackets
///                   ^^ punctuation.section.brackets.begin
///                      ^ punctuation.section.brackets.end
///                       ^^ punctuation.accessor.null-coalescing
///                               ^^ punctuation.accessor.null-coalescing
///                                 ^^^^^^^ meta.function-call

A?.B?.C?[0] ?? E;
/// ^^ punctuation.accessor.null-coalescing
///    ^^ punctuation.section.brackets.begin
///         ^^ keyword.operator
///             ^ punctuation.terminator

A?.B?.C?[0] == E;
 /// <- punctuation.accessor.null-coalescing
  /// <- punctuation.accessor.null-coalescing
/// ^^ punctuation.accessor.null-coalescing
///    ^^^^ meta.brackets
///    ^^ punctuation.section.brackets.begin
///       ^ punctuation.section.brackets.end
///         ^^ keyword.operator
///             ^ punctuation.terminator

     x->y;
///   ^^ punctuation.accessor.arrow
///      ^ punctuation.terminator

    (*x).y;
///  ^ keyword.operator.pointer
///     ^ punctuation.accessor.dot
///       ^ punctuation.terminator

    var c = 5 * 4;
///         ^ constant.numeric
///           ^ keyword.operator
///           ^ - keyword.operator.pointer
///             ^ constant.numeric

    x >>= y
///   ^^^ keyword.operator

    x = x >> y
///   ^ keyword.operator.assignment
///       ^^ keyword.operator

condition ? first_expression : second_expression;
///       ^ keyword.operator.ternary
///                          ^ keyword.operator.ternary
