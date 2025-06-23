#! SYNTAX TEST "Packages/C#/C#.sublime-syntax" dotnet run
#! <- comment.line.shebang.cs punctuation.definition.comment.cs
#!^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.shebang.cs
#!                                             ^^^^^^^^^^ constant.language.shebang.cs

// https://devblogs.microsoft.com/dotnet/announcing-dotnet-run-app/

#:package Humanizer@2.14.1
#!^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs
#!^^^^^^^ variable.language.cs
#!       ^^^^^^^^^^^^^^^^^ - variable - invalid
#:sdk Microsoft.NET.Sdk.Web
#!^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs
#!^^^ variable.language.cs
#!   ^^^^^^^^^^^^^^^^^^^^^^^ - variable - invalid
#:property LangVersion preview
#!^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs
#!^^^^^^^^ variable.language.cs
#!        ^^^^^^^^^^^^^^^^^^^^^ - variable - invalid

  #:package Microsoft.AspNetCore.OpenApi@10.*-*
#!^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.cs
#!^ keyword.other.preprocessor.cs punctuation.definition.preprocessor.cs
#! ^ punctuation.definition.preprocessor.cs
#!  ^^^^^^^ variable.language.cs


var builder = WebApplication.CreateBuilder();
#!  ^^^^^^^ variable.other.cs
#!          ^ keyword.operator.assignment.variable.cs
#!            ^^^^^^^^^^^^^^ variable.other.cs
#!                          ^ punctuation.accessor.dot.cs
#!                           ^^^^^^^^^^^^^^^ meta.function-call.cs
#!                           ^^^^^^^^^^^^^ variable.function.cs
#!                                        ^^ meta.group.cs
#!                                        ^ punctuation.section.group.begin.cs
#!                                         ^ punctuation.section.group.end.cs
#!                                          ^ punctuation.terminator.statement.cs

builder.Services.AddOpenApi();

var app = builder.Build();

app.MapGet("/", () => "Hello, world!");
app.Run();
