/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

class TestOperatorDefinitions {

    // Arithmetic Operators

    public bool operator + (int arg);
///             ^^^^^^^^ keyword.declaration.operator.cs
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

    public bool operator true (int arg);
///                      ^^^^ entity.name.function.cs

    public bool operator false (int arg);
///                      ^^^^^ entity.name.function.cs

    // Not Overloadable Operators

    public bool operator || (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator && (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator += (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator -= (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator *= (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator /= (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator ?? (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator .? (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator => (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator -> (int arg);
///                      ^^ invalid.illegal.operator.cs

    public bool operator <<< (int arg);
///                      ^^^ invalid.illegal.operator.cs

    // Conversion Operators

    operator TargetType(int arg) => null;
/// ^^^^^^^^^^^^^^^^^^^ meta.method.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^^^^ support.type.cs
///                    ^^^^^^^^^ meta.method.parameters.cs
///                             ^^^ meta.method.cs
///                                ^^^^^ meta.method.body.cs
///                    ^ punctuation.section.parameters.begin.cs
///                     ^^^ storage.type.cs
///                         ^^^ variable.parameter.cs
///                            ^ punctuation.section.parameters.end.cs
///                              ^^ keyword.declaration.function.arrow.cs
///                                 ^^^^ constant.language.null.cs
///                                     ^ punctuation.terminator.statement.cs - meta.method

    operator TargetType?(int arg) { return null };
/// ^^^^^^^^^^^^^^^^^^^^ meta.method.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^^^^ support.type.cs
///                    ^ storage.type.nullable.cs
///                     ^^^^^^^^^ meta.method.parameters.cs
///                     ^ punctuation.section.parameters.begin.cs
///                      ^^^ storage.type.cs
///                          ^^^ variable.parameter.cs
///                             ^ punctuation.section.parameters.end.cs
///                              ^ meta.method.cs
///                               ^^^^^^^^^^^^^^^ meta.method.body.cs meta.block.cs
///                               ^ punctuation.section.block.begin.cs
///                                 ^^^^^^ keyword.control.flow.return.cs
///                                        ^^^^ constant.language.null.cs
///                                             ^ punctuation.section.block.end.cs
///                                              ^ punctuation.terminator.statement.cs

    operator TargetType<T>?(int arg) => null;
/// ^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                        ^^^^^^^^^ meta.method.parameters.cs
///                                 ^^^ meta.method.cs
///                                    ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^^^^ support.type.cs
///                    ^^^ meta.generic.cs
///                    ^ punctuation.definition.generic.begin.cs
///                     ^ support.type.cs
///                      ^ punctuation.definition.generic.end.cs
///                       ^ storage.type.nullable.cs
///                        ^ punctuation.section.parameters.begin.cs
///                         ^^^ storage.type.cs
///                             ^^^ variable.parameter.cs
///                                ^ punctuation.section.parameters.end.cs
///                                  ^^ keyword.declaration.function.arrow.cs
///                                     ^^^^ constant.language.null.cs
///                                         ^ punctuation.terminator.statement.cs

    operator TargetType[][,](int arg) => null;
/// ^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                         ^^^^^^^^^ meta.method.parameters.cs
///                                  ^^^ meta.method.cs
///                                     ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^^^^ support.type.cs
///                    ^^^^^ meta.brackets.cs
///                    ^ punctuation.section.brackets.begin.cs
///                     ^ punctuation.section.brackets.end.cs
///                      ^ punctuation.section.brackets.begin.cs
///                       ^ punctuation.separator.comma.cs
///                        ^ punctuation.section.brackets.end.cs
///                         ^ punctuation.section.parameters.begin.cs
///                          ^^^ storage.type.cs
///                              ^^^ variable.parameter.cs
///                                 ^ punctuation.section.parameters.end.cs
///                                   ^^ keyword.declaration.function.arrow.cs
///                                      ^^^^ constant.language.null.cs
///                                          ^ punctuation.terminator.statement.cs

    operator TargetType[][,]?(int arg) => null;
/// ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                          ^^^^^^^^^ meta.method.parameters.cs
///                                   ^^^ meta.method.cs
///                                      ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^^^^ support.type.cs
///                    ^^^^^ meta.brackets.cs
///                    ^ punctuation.section.brackets.begin.cs
///                     ^ punctuation.section.brackets.end.cs
///                      ^ punctuation.section.brackets.begin.cs
///                       ^ punctuation.separator.comma.cs
///                        ^ punctuation.section.brackets.end.cs
///                         ^ storage.type.nullable.cs
///                          ^ punctuation.section.parameters.begin.cs
///                           ^^^ storage.type.cs
///                               ^^^ variable.parameter.cs
///                                  ^ punctuation.section.parameters.end.cs
///                                    ^^ keyword.declaration.function.arrow.cs
///                                       ^^^^ constant.language.null.cs
///                                           ^ punctuation.terminator.statement.cs

    operator TargetType<T>[][,]?(int arg) => null;
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                             ^^^^^^^^^ meta.method.parameters.cs
///                                      ^^^ meta.method.cs
///                                         ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^^^^ support.type.cs
///                    ^^^ meta.generic.cs
///                    ^ punctuation.definition.generic.begin.cs
///                     ^ support.type.cs
///                      ^ punctuation.definition.generic.end.cs
///                       ^^^^^ meta.brackets.cs
///                       ^ punctuation.section.brackets.begin.cs
///                        ^ punctuation.section.brackets.end.cs
///                         ^ punctuation.section.brackets.begin.cs
///                          ^ punctuation.separator.comma.cs
///                           ^ punctuation.section.brackets.end.cs
///                            ^ storage.type.nullable.cs
///                             ^ punctuation.section.parameters.begin.cs
///                              ^^^ storage.type.cs
///                                  ^^^ variable.parameter.cs
///                                     ^ punctuation.section.parameters.end.cs
///                                       ^^ keyword.declaration.function.arrow.cs
///                                          ^^^^ constant.language.null.cs
///                                              ^ punctuation.terminator.statement.cs

    operator dynamic(int arg) => null;
/// ^^^^^^^^^^^^^^^^ meta.method.cs
///                 ^^^^^^^^^ meta.method.parameters.cs
///                          ^^^ meta.method.cs
///                             ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^ storage.type.cs
///                 ^ punctuation.section.parameters.begin.cs
///                  ^^^ storage.type.cs
///                      ^^^ variable.parameter.cs
///                         ^ punctuation.section.parameters.end.cs
///                           ^^ keyword.declaration.function.arrow.cs
///                              ^^^^ constant.language.null.cs
///                                  ^ punctuation.terminator.statement.cs

    operator object(int arg) => null;
/// ^^^^^^^^^^^^^^^ meta.method.cs
///                ^^^^^^^^^ meta.method.parameters.cs
///                         ^^^ meta.method.cs
///                            ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^ storage.type.cs
///                ^ punctuation.section.parameters.begin.cs
///                 ^^^ storage.type.cs
///                     ^^^ variable.parameter.cs
///                        ^ punctuation.section.parameters.end.cs
///                          ^^ keyword.declaration.function.arrow.cs
///                             ^^^^ constant.language.null.cs
///                                 ^ punctuation.terminator.statement.cs

    operator string(int arg) => null;
/// ^^^^^^^^^^^^^^^ meta.method.cs
///                ^^^^^^^^^ meta.method.parameters.cs
///                         ^^^ meta.method.cs
///                            ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^ storage.type.cs
///                ^ punctuation.section.parameters.begin.cs
///                 ^^^ storage.type.cs
///                     ^^^ variable.parameter.cs
///                        ^ punctuation.section.parameters.end.cs
///                          ^^ keyword.declaration.function.arrow.cs
///                             ^^^^ constant.language.null.cs
///                                 ^ punctuation.terminator.statement.cs

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

    a >> b >>> c << d;
///   ^^ keyword.operator.bitwise.cs
///        ^^^ keyword.operator.bitwise.cs
///              ^^ keyword.operator.bitwise.cs

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

    (byte);
/// ^^^^^^ meta.group.cs - meta.cast
/// ^ punctuation.section.group.begin.cs
///  ^^^^ storage.type.cs
///      ^ punctuation.section.group.end.cs

    (byte) var;
/// ^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^ storage.type.cs
///      ^ punctuation.section.group.end.cs
///        ^^^ variable.other.cs
///           ^ punctuation.terminator.statement.cs

    (byte) ~var;
/// ^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^ storage.type.cs
///      ^ punctuation.section.group.end.cs
///        ^ keyword.operator.bitwise.cs
///         ^^^ variable.other.cs
///            ^ punctuation.terminator.statement.cs

    (byte) !var;
/// ^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^ storage.type.cs
///      ^ punctuation.section.group.end.cs
///        ^ keyword.operator.logical.cs
///         ^^^ variable.other.cs
///            ^ punctuation.terminator.statement.cs

    (byte)(var + global::func());
/// ^^^^^^ meta.cast.cs meta.group.cs
///       ^^^^^^^^^^^^^^^^^^^ meta.group.cs - meta.group meta.group
///                          ^^ meta.group.cs meta.function-call.arguments.cs meta.group.cs
///                            ^ meta.group.cs - meta.group meta.group
/// ^ punctuation.section.group.begin.cs
///  ^^^^ storage.type.cs
///      ^ punctuation.section.group.end.cs
///       ^ punctuation.section.group.begin.cs
///        ^^^ variable.other.cs
///            ^ keyword.operator.arithmetic.cs
///              ^^^^^^ support.namespace.global.cs
///                    ^^ punctuation.accessor.double-colon.namespace.cs
///                      ^^^^ variable.function.cs
///                          ^ punctuation.section.group.begin.cs
///                           ^^ punctuation.section.group.end.cs
///                             ^ punctuation.terminator.statement.cs

    ((byte)(var + global::func()));
/// ^ meta.group.cs - meta.group meta.group
///  ^^^^^^ meta.group.cs meta.cast.cs meta.group.cs
///        ^^^^^^^^^^^^^^^^^^^ meta.group.cs meta.group.cs - meta.group meta.group meta.group
///                           ^^ meta.group.cs meta.group.cs meta.function-call.arguments.cs meta.group.cs
///                             ^ meta.group.cs meta.group.cs - meta.group meta.group meta.group
///                              ^ meta.group.cs - meta.group meta.group
/// ^^ punctuation.section.group.begin.cs
///   ^^^^ storage.type.cs
///       ^ punctuation.section.group.end.cs
///        ^ punctuation.section.group.begin.cs
///         ^^^ variable.other.cs
///             ^ keyword.operator.arithmetic.cs
///               ^^^^^^ support.namespace.global.cs
///                     ^^ punctuation.accessor.double-colon.namespace.cs
///                       ^^^^ variable.function.cs
///                           ^ punctuation.section.group.begin.cs
///                            ^^^ punctuation.section.group.end.cs
///                               ^ punctuation.terminator.statement.cs

    (byte[,]) var;
/// ^^^^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^ storage.type.cs
///      ^^^ meta.brackets.cs
///      ^ punctuation.section.brackets.begin.cs
///       ^ punctuation.separator.comma.cs
///        ^ punctuation.section.brackets.end.cs
///         ^ punctuation.section.group.end.cs
///           ^^^ variable.other.cs
///              ^ punctuation.terminator.statement.cs

    (global::char[10]) var;
/// ^^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^^^ support.namespace.global.cs
///        ^^ punctuation.accessor.double-colon.namespace.cs
///          ^^^^ storage.type.cs
///              ^^^^ meta.brackets.cs
///              ^ punctuation.section.brackets.begin.cs
///               ^^ meta.number.integer.decimal.cs constant.numeric.value.cs
///                 ^ punctuation.section.brackets.end.cs
///                  ^ punctuation.section.group.end.cs
///                    ^^^ variable.other.cs
///                       ^ punctuation.terminator.statement.cs

    (mytype) base;
/// ^^^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^^^ support.type.cs
///        ^ punctuation.section.group.end.cs
///          ^^^^ variable.language.super.cs

    (mytype) this;
/// ^^^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^^^ support.type.cs
///        ^ punctuation.section.group.end.cs
///          ^^^^ variable.language.this.cs

    (mytype) var;
/// ^^^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^^^ support.type.cs
///        ^ punctuation.section.group.end.cs
///          ^^^ variable.other.cs
///             ^ punctuation.terminator.statement.cs

    (mytype[]) var;
/// ^^^^^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^^^ support.type.cs
///        ^^ meta.brackets.cs
///        ^ punctuation.section.brackets.begin.cs
///         ^ punctuation.section.brackets.end.cs
///          ^ punctuation.section.group.end.cs
///            ^^^ variable.other.cs
///               ^ punctuation.terminator.statement.cs

    (mytype<T>) var;
/// ^^^^^^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^^^ support.type.cs
///        ^^^ meta.generic.cs
///        ^ punctuation.definition.generic.begin.cs
///         ^ support.type.cs
///          ^ punctuation.definition.generic.end.cs
///           ^ punctuation.section.group.end.cs
///             ^^^ variable.other.cs
///                ^ punctuation.terminator.statement.cs

    (mytype<T>?[,][]) var;
/// ^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^^^^^ support.type.cs
///        ^^^ meta.generic.cs
///        ^ punctuation.definition.generic.begin.cs
///         ^ support.type.cs
///          ^ punctuation.definition.generic.end.cs
///           ^ storage.type.nullable.cs
///            ^^^^^ meta.brackets.cs
///            ^ punctuation.section.brackets.begin.cs
///             ^ punctuation.separator.comma.cs
///              ^ punctuation.section.brackets.end.cs
///               ^ punctuation.section.brackets.begin.cs
///                ^ punctuation.section.brackets.end.cs
///                 ^ punctuation.section.group.end.cs
///                   ^^^ variable.other.cs
///                      ^ punctuation.terminator.statement.cs

    (NS::mytype<T>?[,][].mysubtype<T>?[]) var;
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.cast.cs meta.group.cs
/// ^ punctuation.section.group.begin.cs
///  ^^ variable.namespace.cs
///    ^^ punctuation.accessor.double-colon.namespace.cs
///      ^^^^^^ support.type.cs
///            ^^^ meta.generic.cs
///            ^ punctuation.definition.generic.begin.cs
///             ^ support.type.cs
///              ^ punctuation.definition.generic.end.cs
///               ^ storage.type.nullable.cs
///                ^^^^^ meta.brackets.cs
///                ^ punctuation.section.brackets.begin.cs
///                 ^ punctuation.separator.comma.cs
///                  ^ punctuation.section.brackets.end.cs
///                   ^ punctuation.section.brackets.begin.cs
///                    ^ punctuation.section.brackets.end.cs
///                     ^ punctuation.accessor.dot.cs
///                      ^^^^^^^^^ support.type.cs
///                               ^^^ meta.generic.cs
///                               ^ punctuation.definition.generic.begin.cs
///                                ^ support.type.cs
///                                 ^ punctuation.definition.generic.end.cs
///                                  ^ storage.type.nullable.cs
///                                   ^^ meta.brackets.cs
///                                   ^ punctuation.section.brackets.begin.cs
///                                    ^ punctuation.section.brackets.end.cs
///                                     ^ punctuation.section.group.end.cs
///                                       ^^^ variable.other.cs
///                                          ^ punctuation.terminator.statement.cs

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
