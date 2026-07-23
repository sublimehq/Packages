/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

class TestOperatorDefinitions {

    // Arithmetic Operators

    public bool operator + (int arg);
///             ^^^^^^^^ keyword.declaration.operator.cs
///                      ^ meta.method.cs entity.name.function.cs
///                        ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                        ^ punctuation.section.group.begin.cs
///                         ^^^ storage.type.primitive.cs
///                             ^^^ variable.parameter.cs
///                                ^ punctuation.section.group.end.cs
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
///                    ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                             ^^^ meta.method.cs
///                                ^^^^^ meta.method.body.cs
///                    ^ punctuation.section.group.begin.cs
///                     ^^^ storage.type.primitive.cs
///                         ^^^ variable.parameter.cs
///                            ^ punctuation.section.group.end.cs
///                              ^^ keyword.declaration.function.arrow.cs
///                                 ^^^^ constant.language.null.cs
///                                     ^ punctuation.terminator.statement.cs - meta.method

    operator TargetType?(int arg) { return null };
/// ^^^^^^^^^^^^^^^^^^^^ meta.method.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^^^^ support.type.cs
///                    ^ storage.modifier.nullable.cs
///                     ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                     ^ punctuation.section.group.begin.cs
///                      ^^^ storage.type.primitive.cs
///                          ^^^ variable.parameter.cs
///                             ^ punctuation.section.group.end.cs
///                              ^ meta.method.cs
///                               ^^^^^^^^^^^^^^^ meta.method.body.cs meta.block.cs
///                               ^ punctuation.section.block.begin.cs
///                                 ^^^^^^ keyword.control.flow.return.cs
///                                        ^^^^ constant.language.null.cs
///                                             ^ punctuation.section.block.end.cs
///                                              ^ punctuation.terminator.statement.cs

    operator TargetType<T>?(int arg) => null;
/// ^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                        ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                                 ^^^ meta.method.cs
///                                    ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^^^^ support.type.cs
///                    ^^^ meta.generic.cs
///                    ^ punctuation.definition.generic.begin.cs
///                     ^ support.type.cs
///                      ^ punctuation.definition.generic.end.cs
///                       ^ storage.modifier.nullable.cs
///                        ^ punctuation.section.group.begin.cs
///                         ^^^ storage.type.primitive.cs
///                             ^^^ variable.parameter.cs
///                                ^ punctuation.section.group.end.cs
///                                  ^^ keyword.declaration.function.arrow.cs
///                                     ^^^^ constant.language.null.cs
///                                         ^ punctuation.terminator.statement.cs

    operator TargetType[][,](int arg) => null;
/// ^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                         ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
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
///                         ^ punctuation.section.group.begin.cs
///                          ^^^ storage.type.primitive.cs
///                              ^^^ variable.parameter.cs
///                                 ^ punctuation.section.group.end.cs
///                                   ^^ keyword.declaration.function.arrow.cs
///                                      ^^^^ constant.language.null.cs
///                                          ^ punctuation.terminator.statement.cs

    operator TargetType[][,]?(int arg) => null;
/// ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                          ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
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
///                         ^ storage.modifier.nullable.cs
///                          ^ punctuation.section.group.begin.cs
///                           ^^^ storage.type.primitive.cs
///                               ^^^ variable.parameter.cs
///                                  ^ punctuation.section.group.end.cs
///                                    ^^ keyword.declaration.function.arrow.cs
///                                       ^^^^ constant.language.null.cs
///                                           ^ punctuation.terminator.statement.cs

    operator TargetType<T>[][,]?(int arg) => null;
/// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.cs
///                             ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
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
///                            ^ storage.modifier.nullable.cs
///                             ^ punctuation.section.group.begin.cs
///                              ^^^ storage.type.primitive.cs
///                                  ^^^ variable.parameter.cs
///                                     ^ punctuation.section.group.end.cs
///                                       ^^ keyword.declaration.function.arrow.cs
///                                          ^^^^ constant.language.null.cs
///                                              ^ punctuation.terminator.statement.cs

    operator dynamic(int arg) => null;
/// ^^^^^^^^^^^^^^^^ meta.method.cs
///                 ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                          ^^^ meta.method.cs
///                             ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^^ storage.type.primitive.cs
///                 ^ punctuation.section.group.begin.cs
///                  ^^^ storage.type.primitive.cs
///                      ^^^ variable.parameter.cs
///                         ^ punctuation.section.group.end.cs
///                           ^^ keyword.declaration.function.arrow.cs
///                              ^^^^ constant.language.null.cs
///                                  ^ punctuation.terminator.statement.cs

    operator object(int arg) => null;
/// ^^^^^^^^^^^^^^^ meta.method.cs
///                ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                         ^^^ meta.method.cs
///                            ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^ storage.type.primitive.cs
///                ^ punctuation.section.group.begin.cs
///                 ^^^ storage.type.primitive.cs
///                     ^^^ variable.parameter.cs
///                        ^ punctuation.section.group.end.cs
///                          ^^ keyword.declaration.function.arrow.cs
///                             ^^^^ constant.language.null.cs
///                                 ^ punctuation.terminator.statement.cs

    operator string(int arg) => null;
/// ^^^^^^^^^^^^^^^ meta.method.cs
///                ^^^^^^^^^ meta.method.parameters.cs meta.group.cs
///                         ^^^ meta.method.cs
///                            ^^^^^ meta.method.body.cs
/// ^^^^^^^^ keyword.declaration.operator.cs
///          ^^^^^^ storage.type.primitive.cs
///                ^ punctuation.section.group.begin.cs
///                 ^^^ storage.type.primitive.cs
///                     ^^^ variable.parameter.cs
///                        ^ punctuation.section.group.end.cs
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

    a == b;
///   ^^ keyword.operator.comparison.cs

    a != b;
///   ^^ keyword.operator.comparison.cs

    a <= b;
///   ^^ keyword.operator.comparison.cs

    a >= b
///   ^^ keyword.operator.comparison.cs

    a < b;
///   ^ keyword.operator.comparison.cs

    a > b;
///   ^ keyword.operator.comparison.cs

    (U < 0f || U > 1f)
///    ^ keyword.operator.comparison.cs
///         ^^ keyword.operator.logical.cs
///              ^ keyword.operator.comparison.cs

    (U < 0f && U > 1f)
///    ^ keyword.operator.comparison.cs
///         ^^ keyword.operator.logical.cs
///              ^ keyword.operator.comparison.cs

    a<t> > b<t>
/// ^ support.type.cs
///  ^^^ meta.generic.cs
///  ^ punctuation.definition.generic.begin.cs
///   ^ support.type.cs
///    ^ punctuation.definition.generic.end.cs
///      ^ keyword.operator.comparison.cs
///        ^ support.type.cs
///         ^^^ meta.generic.cs
///         ^ punctuation.definition.generic.begin.cs
///          ^ support.type.cs
///           ^ punctuation.definition.generic.end.cs

    a<t> < b<t>
/// ^ support.type.cs
///  ^^^ meta.generic.cs
///  ^ punctuation.definition.generic.begin.cs
///   ^ support.type.cs
///    ^ punctuation.definition.generic.end.cs
///      ^ keyword.operator.comparison.cs
///        ^ support.type.cs
///         ^^^ meta.generic.cs
///         ^ punctuation.definition.generic.begin.cs
///          ^ support.type.cs
///           ^ punctuation.definition.generic.end.cs

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
///  ^ keyword.operator.null-coalescing.cs
///   ^ punctuation.accessor.dot.cs
///     ^ punctuation.terminator.statement.cs

    x->y;
///  ^^ punctuation.accessor.arrow.cs
///     ^ punctuation.terminator.statement.cs

/// Unllable Type Modifiers ///////////////////////////////////////////////////

int? length = customers?.Length;
/// <- storage.type
///^ storage.modifier.nullable
///     ^ variable.other
///                    ^ keyword.operator.null-coalescing.cs
///                     ^ punctuation.accessor.dot.cs

Customer? first = customers?[0];
/// <- support.type
///     ^ storage.modifier.nullable
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
///^ storage.modifier.nullable
///     ^ variable.other
///        ^ keyword.operator.assignment
///                    ^^^ meta.brackets
///                    ^ punctuation.section.brackets.begin
///                      ^ punctuation.section.brackets.end
///                       ^ keyword.operator.null-coalescing.cs
///                        ^ punctuation.accessor.dot.cs
///                               ^ keyword.operator.null-coalescing.cs
///                                ^ punctuation.accessor.dot.cs
///                                 ^^^^^^^ meta.function-call

A?.B?.C?[0] ?? E;
 /// <- keyword.operator.null-coalescing.cs
  /// <- punctuation.accessor.dot.cs
/// ^ keyword.operator.null-coalescing.cs
///  ^ punctuation.accessor.dot.cs
///     ^ punctuation.section.brackets.begin
///         ^^ keyword.operator.null-coalescing
///             ^ punctuation.terminator

A?.B?.C?[0] == E;
 /// <- keyword.operator.null-coalescing.cs
  /// <- punctuation.accessor.dot.cs
/// ^ keyword.operator.null-coalescing.cs
///  ^ punctuation.accessor.dot.cs
///     ^^^ meta.brackets
///     ^ punctuation.section.brackets.begin
///       ^ punctuation.section.brackets.end
///         ^^ keyword.operator
///             ^ punctuation.terminator

this?.Name?.Func();
///^ variable.language.this.cs
/// ^ keyword.operator.null-coalescing.cs
///  ^ punctuation.accessor.dot.cs
///   ^^^^ variable.other.member.cs
///       ^ keyword.operator.null-coalescing.cs
///        ^ punctuation.accessor.dot.cs
///         ^^^^ meta.function-call.identifier.cs variable.function.cs
///             ^^ meta.function-call.arguments.cs meta.group.cs
///             ^ punctuation.section.group.begin.cs
///              ^ punctuation.section.group.end.cs
///               ^ punctuation.terminator.statement.cs

var foo = { any?.var?.value };
///            ^ keyword.operator.null-coalescing.cs
///             ^ punctuation.accessor.dot.cs
///                 ^ keyword.operator.null-coalescing.cs
///                  ^ punctuation.accessor.dot.cs
