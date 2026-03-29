/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

class TestOperatorDefinitions {

    // Arithmetic Operators

    public bool operator + (int arg);
///             ^^^^^^^^ storage.modifier.other.cs
///                      ^ meta.method.cs entity.name.function.cs
///                        ^^^^^^^^^ meta.method.parameters.cs
///                        ^ punctuation.section.parameters.begin.cs
///                         ^^^ storage.type.cs
///                             ^^^ variable.parameter.cs
///                                ^ punctuation.section.parameters.end.cs
///                                 ^ punctuation.terminator.statement.cs

    public bool operator - (int arg);
///                      ^ entity.name.function.cs

    public bool operator * (int arg);
///                      ^ entity.name.function.cs

    public bool operator / (int arg);
///                      ^ entity.name.function.cs

    public bool operator % (int arg);
///                      ^ entity.name.function.cs

    public bool operator ++ (int arg);
///                      ^^ entity.name.function.cs

    public bool operator -- (int arg);
///                      ^^ entity.name.function.cs

    // Binary Operators

    public bool operator ~ (int arg);
///                      ^ entity.name.function.cs

    public bool operator ^ (int arg);
///                      ^ entity.name.function.cs

    public bool operator | (int arg);
///                      ^ entity.name.function.cs

    public bool operator & (int arg);
///                      ^ entity.name.function.cs

    public bool operator << (int arg);
///                      ^^ entity.name.function.cs

    public bool operator <<< (int arg);
///                      ^^^ entity.name.function.cs

    public bool operator >> (int arg);
///                      ^^ entity.name.function.cs

    public bool operator >>> (int arg);
///                      ^^^ entity.name.function.cs

    // Comparison Operators

    public bool operator == (int arg);
///                      ^^ entity.name.function.cs

    public bool operator != (int arg);
///                      ^^ entity.name.function.cs

    public bool operator < (int arg);
///                      ^ entity.name.function.cs

    public bool operator <= (int arg);
///                      ^^ entity.name.function.cs

    public bool operator > (int arg);
///                      ^ entity.name.function.cs

    public bool operator >= (int arg);
///                      ^^ entity.name.function.cs

    // Logical Operators

    public bool operator ! (int arg);
///                      ^ entity.name.function.cs

    public bool operator || (int arg);
///                      ^^ entity.name.function.cs

    public bool operator && (int arg);
///                      ^^ entity.name.function.cs

    // Invalid Operators

    public bool operator += (int arg);
///                      ^^ entity.name.function.cs invalid.illegal.operator.cs

    public bool operator -= (int arg);
///                      ^^ entity.name.function.cs invalid.illegal.operator.cs

    public bool operator *= (int arg);
///                      ^^ entity.name.function.cs invalid.illegal.operator.cs

    public bool operator /= (int arg);
///                      ^^ entity.name.function.cs invalid.illegal.operator.cs

    public bool operator ?? (int arg);
///                      ^^ entity.name.function.cs invalid.illegal.operator.cs

    public bool operator .? (int arg);
///                      ^^ entity.name.function.cs invalid.illegal.operator.cs

    public bool operator => (int arg);
///                      ^^ entity.name.function.cs invalid.illegal.operator.cs

    public bool operator -> (int arg);
///                      ^^ entity.name.function.cs invalid.illegal.operator.cs

}

/// Operators /////////////////////////////////////////////////////////////////

    // Arithmetic

    c = 1 + 2 - 3 * 4 / 5 % 6;
///   ^ keyword.operator.assignment.cs
///       ^ keyword.operator.arithmetic.cs
///           ^ keyword.operator.arithmetic.cs
///               ^ keyword.operator.arithmetic.cs
///                   ^ keyword.operator.arithmetic.cs
///                       ^ keyword.operator.arithmetic.cs

    c++ d--;
///  ^^ keyword.operator.arithmetic.cs
///      ^^ keyword.operator.arithmetic.cs

    // Binary

    a += b;
///   ^^ keyword.operator.assignment.augmented.cs

    a -= b;
///   ^^ keyword.operator.assignment.augmented.cs

    a *= b;
///   ^^ keyword.operator.assignment.augmented.cs

    a /= b;
///   ^^ keyword.operator.assignment.augmented.cs

    a %= b;
///   ^^ keyword.operator.assignment.augmented.cs

    a & ~b | ^c
///   ^ keyword.operator.bitwise.cs
///     ^ keyword.operator.bitwise.cs
///        ^ keyword.operator.bitwise.cs
///          ^ keyword.operator.bitwise.cs

    a >> b >>> c << d <<< e;
///   ^^ keyword.operator.bitwise.cs
///        ^^^ keyword.operator.bitwise.cs
///              ^^ keyword.operator.bitwise.cs
///                   ^^^ keyword.operator.bitwise.cs

    x &= y;
///   ^^ keyword.operator.assignment.augmented.cs

    x |= y;
///   ^^ keyword.operator.assignment.augmented.cs

    x ^= y;
///   ^^ keyword.operator.assignment.augmented.cs

    x >>= y;
///   ^^^ keyword.operator.assignment.augmented.cs

    x <<= y;
///   ^^^ keyword.operator.assignment.augmented.cs

    x >>>= y;
///   ^^^^ keyword.operator.assignment.augmented.cs

    x <<<= y;
///   ^^^^ keyword.operator.assignment.augmented.cs

    // Comparison

    a == b != c <= d < e > f >= g
///   ^^ keyword.operator.comparison.cs
///        ^^ keyword.operator.comparison.cs
///             ^^ keyword.operator.comparison.cs
///                  ^ keyword.operator.comparison.cs
///                      ^ keyword.operator.comparison.cs
///                          ^^ keyword.operator.comparison.cs

    // Logical

    a && b || !c
///   ^^ keyword.operator.logical.cs
///        ^^ keyword.operator.logical.cs
///           ^ keyword.operator.logical.cs

    // Ternary

    condition ? first_expression : second_expression;
///           ^ keyword.operator.ternary
///                              ^ keyword.operator.ternary

    // Pointer Arithmetic

    a = &obj;
///     ^ keyword.operator.pointer.cs

    a = *obj;
///     ^ keyword.operator.pointer.cs

/// Accessors /////////////////////////////////////////////////////////////////

    (*x).y;
///  ^ keyword.operator.pointer.cs
///     ^ punctuation.accessor.dot.cs
///       ^ punctuation.terminator.statement.cs

    T::m;
///  ^^ punctuation.accessor.double-colon.namespace.cs

    x.y;
///  ^ punctuation.accessor.dot.cs
///    ^ punctuation.terminator.statement.cs

    x?.y;
///  ^^ punctuation.accessor.null-coalescing.cs
///     ^ punctuation.terminator.statement.cs

    x->y;
///  ^^ punctuation.accessor.arrow.cs
///     ^ punctuation.terminator.statement.cs

/// Unllable Type Modifiers ///////////////////////////////////////////////////

int? length = customers?.Length;
/// <- storage.type
///^ storage.type.nullable
///     ^ variable.other
///                    ^^ punctuation.accessor.null-coalescing

Customer? first = customers?[0];
/// <- support.type
///     ^ storage.type.nullable
///       ^^^^^ variable.other
///             ^ keyword.operator.assignment
///               ^^^^^^^^^ variable.other
///                        ^ keyword.operator.null-coalescing - meta.brackets
///                         ^^^ meta.brackets
///                         ^ punctuation.section.brackets.begin
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
///                    ^^^ meta.brackets
///                    ^ punctuation.section.brackets.begin
///                      ^ punctuation.section.brackets.end
///                       ^^ punctuation.accessor.null-coalescing
///                               ^^ punctuation.accessor.null-coalescing
///                                 ^^^^^^^ meta.function-call

A?.B?.C?[0] ?? E;
/// ^^ punctuation.accessor.null-coalescing
///     ^ punctuation.section.brackets.begin
///         ^^ keyword.operator.null-coalescing
///             ^ punctuation.terminator

A?.B?.C?[0] == E;
 /// <- punctuation.accessor.null-coalescing
  /// <- punctuation.accessor.null-coalescing
/// ^^ punctuation.accessor.null-coalescing
///     ^^^ meta.brackets
///     ^ punctuation.section.brackets.begin
///       ^ punctuation.section.brackets.end
///         ^^ keyword.operator
///             ^ punctuation.terminator

/// Type Casts ////////////////////////////////////////////////////////////////

    ((Test.Example . State)item.State).ToString();
///  ^^^^^^^^^^^^^^^^^^^^^^ meta.cast
///  ^ punctuation.section.group.begin
///                       ^ punctuation.section.group.end
///                        ^^^^ variable.other - meta.cast
///   ^^^^ support.type
///       ^ punctuation.accessor.dot
///        ^^^^^^^ support.type
///                ^ punctuation.accessor.dot
///                  ^^^^^ support.type

    (int)test.example(abc);
/// ^^^^^ meta.cast
/// ^ punctuation.section.group.begin
///     ^ punctuation.section.group.end
///  ^^^ storage.type
///      ^^^^ variable.other
///          ^ punctuation.accessor.dot
///           ^^^^^^^ meta.function-call variable.function
///                  ^^^^^ meta.group - meta.cast
///                  ^ punctuation.section.group.begin
///                      ^ punctuation.section.group.end
///                       ^ punctuation.terminator.statement

    (string)((SomeClass)test).value;
/// ^^^^^^^^ meta.cast
///  ^^^^^^ storage.type
///         ^ meta.group - meta.cast
///          ^^^^^^^^^^^ meta.cast
///           ^^^^^^^^^ support.type
///                     ^^^^ variable.other
///                         ^ meta.group - meta.cast
