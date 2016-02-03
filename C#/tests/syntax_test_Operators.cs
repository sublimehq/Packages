/// SYNTAX TEST "Packages/User/csharpSyntax/csharp.sublime-syntax"
int? length = customers?.Length;
/// <- support.type.cs
///^ support.type.cs
///     ^ entity.name.variable.cs
///                    ^ keyword.operator.accessor
Customer? first = customers?[0];
/// <- variable.other.type
///                        ^ punctuation.definition.accessor
///                         ^ punctuation.definition.accessor
Customer second = customers[0];
/// <- variable.other.type
///                        ^ punctuation.definition.accessor
int? count = customers?[0]?.Orders?.Count();
///^ support.type.cs
///     ^ entity.name.variable.cs
///        ^ keyword.operator.assignment.variable.cs
A?.B?.C?[0] ?? E;
/// ^ keyword.operator.accessor
///     ^ punctuation.definition.accessor
///         ^ keyword.operator.cs
A?.B?.C?[0] == E;
///         ^ keyword.operator.cs
     x->y;
///    ^ keyword.operator.cs
    (*x).y;
///  ^ keyword.operator.cs
    x >>= y
///   ^ keyword.operator.cs
    x = x >> y
///   ^ keyword.operator.assignment
///       ^ keyword.operator.cs
condition ? first_expression : second_expression;
///       ^ keyword.operator.ternary.cs
///                          ^ keyword.operator.ternary.cs
