' SYNTAX TEST "Packages/ASP/HTML-ASP.sublime-syntax"
<!DOCTYPE html>
<html>
'<- meta.tag.structure.any.html punctuation.definition.tag.begin.html - source.asp.embedded.html
'^^^^ meta.tag.structure.any.html entity.name.tag.structure.any.html
'    ^ meta.tag.structure.any.html punctuation.definition.tag.end.html
 <%@ TRANSACTION = Required %>
'^^^ punctuation.section.embedded.begin.asp
'    ^^^^^^^^^^^ constant.language.processing-directive.asp
'                ^ punctuation.separator.key-value.asp
'                           ^^ punctuation.section.embedded.end.asp
<head>
    <title>ASP Test Page: <%=Request.ServerVariables("SCRIPT_NAME")%></title>
</head>
<body>
    <%
   '^^ source.asp.embedded.html punctuation.section.embedded.begin.asp
   'this is a comment
  '^ punctuation.definition.comment.asp
  '^^^^^^^^^^^^^^^^^^ comment.line.apostrophe.asp
    
    Option Explicit
   '^^^^^^^^^^^^^^^ keyword
    
    Class TestClass
   '^^^^^^^^^^^^^^^ meta.class.source.asp meta.class.identifier.source.asp
   '^^^^^ storage.type.asp
   '      ^^^^^^^^^ meta.class.source.asp meta.class.identifier.source.asp entity.name.class.source.asp
        ' comment
       '^^^^^^^^^^ comment.line.apostrophe.asp
        Private m_NameVar
       '^^^^^^^ storage.modifier.source.asp - meta.method.identifier.source.asp
       '        ^^^^^^^^^ meta.variable-definition.asp
        Private m_CategoryVar
        Public Const a = 2e-3, b2="c""": const c = 4, const =
       '^^^^^^^^^^^^ storage.modifier.source.asp
       '             ^ meta.user-defined-constant.asp
       '               ^ keyword.operator.asp
       '                 ^^^^ constant.numeric.asp
       '                     ^ punctuation.separator.variable-declaration.asp
       '                       ^^ meta.user-defined-constant.asp
       '                         ^ keyword.operator.asp
       '                          ^^^^^ string.quoted.double.asp
       '                               ^ keyword.operator.statement-separator.asp
       '                                 ^^^^^ storage.modifier.source.asp
       '                                              ^^^^^ invalid.illegal.name.asp - meta.user-defined-constant.asp
'<- - invalid.illegal.unexpected-token.asp
        Const d = &HAB
       '^^^^^ storage.modifier.source.asp
       '          ^^^^ constant.numeric.asp
        Const e = "I am an unclosed string
        '         ^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.asp
        '                                 ^ invalid.illegal.unclosed-string.asp
'<- - invalid.illegal.unclosed-string.asp
        
        Public Property Get Name()
       '^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
       '^^^^^^^^^^^^^^^^^^^ storage.type.function.asp
       '                    ^^^^ entity.name.function.asp
       '                        ^ punctuation.definition.parameters.begin.asp - entity.name.function.asp
       '                         ^ punctuation.definition.parameters.end.asp
            Name = m_NameVar
'<- meta.method.source.asp meta.method.body.source.asp - meta.method.identifier.source.asp
        End Property
       '^^^^^^^^^^^^ meta.method.source.asp
       '^^^^^^^^^^^^ storage.type.function.end.asp
       '            ^ - meta.method.source.asp - meta.method.body.source.asp - storage.type.function.end.asp
        
        Public Property Let Name(nameParam)
       '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
       '^^^^^^^^^^^^^^^^^^^ storage.type.function.asp
       '                    ^^^^ entity.name.function.asp - storage.type.function.asp
       '                        ^ punctuation.definition.parameters.begin.asp - entity.name.function.asp
       '                         ^^^^^^^^^ variable.parameter.function.asp
       '                                  ^ punctuation.definition.parameters.end.asp
            m_NameVar = nameParam
        End Property
        
        Public Property Get Category
       '^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
       '^^^^^^^^^^^^^^^^^^^ storage.type.function.asp
       '                    ^^^^^^^^ entity.name.function.asp
            Category = m_CategoryVar
'<- meta.method.source.asp meta.method.body.source.asp - meta.method.identifier.source.asp
        End Property
        
        Public Property Let Category(categoryParam
       '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
       '^^^^^^^^^^^^^^^^^^^ storage.type.function.asp
       '                    ^^^^^^^^ entity.name.function.asp
       '                            ^ punctuation.definition.parameters.begin.asp
       '                             ^^^^^^^^^^^^^ variable.parameter.function.asp
       '                                          ^ invalid.illegal.unexpected-end-of-statement.asp
            m_CategoryVar = categoryParam
'<- meta.method.source.asp meta.method.body.source.asp - meta.method.identifier.source.asp
        End Property
       '^^^^^^^^^^^^ meta.method.source.asp
       '^^^^^^^^^^^^ storage.type.function.end.asp
       '            ^ - meta.method.source.asp - meta.method.body.source.asp - storage.type.function.end.asp
        
        Public Property Set Category(categoryParam) Set m_CategoryVar = categoryParam End Property
       '^^^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp storage.type.function.asp - meta.method.body.source.asp
       '                    ^^^^^^^^ entity.name.function.asp
       '                            ^ punctuation.definition.parameters.begin.asp
       '                             ^^^^^^^^^^^^^ variable.parameter.function.asp
       '                                          ^ punctuation.definition.parameters.end.asp
       '                ^^^ - keyword - storage.type.asp
       '                                            ^ meta.method.source.asp meta.method.body.source.asp - meta.method.identifier.source.asp
       '                                                                              ^^^^^^^^^^^^ meta.method.source.asp
       '                                                                              ^^^^^^^^^^^^ storage.type.function.end.asp
       '                                                                                          ^ - meta.method.source.asp - meta.method.body.source.asp
        
        Public Default Function Go rem no parens
       '^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
       '^^^^^^^^^^^^^^^^^^^^^^^ storage.type.function.asp
       '                        ^^ entity.name.function.asp
       '                           ^^^^^^^^^^^^^ comment.line.rem.asp
            Go = "going... going... gone!"
'<- meta.method.source.asp meta.method.body.source.asp - meta.method.identifier.source.asp
           '^^ - invalid.illegal
           '   ^ keyword.operator.asp
        End Function
       '^^^^^^^^^^^^ meta.method.source.asp
       '^^^^^^^^^^^^ storage.type.function.end.asp
       '            ^ - meta.method.source.asp - meta.method.body.source.asp
        
        Sub Test123:Call DoSomething:End Sub
       '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.source.asp
       '^^^ meta.method.source.asp meta.method.identifier.source.asp storage.type.function.asp
       '    ^^^^^^^ meta.method.identifier.source.asp entity.name.function.asp
       '           ^ keyword.operator.statement-separator.asp
       '            ^^^^^^^^^^^^^^^^ meta.method.body.source.asp
       '                             ^^^^^^^ storage.type.function.end.asp
       '                                    ^ - meta.method.source.asp - meta.method.body.source.asp
        
        Class SubClass ' nested classes are not allowed
'<- - invalid.illegal.unexpected-token.asp
       '^^^^^ invalid.illegal.unexpected-token.asp
       '      ^^^^^^^^ invalid.illegal.unexpected-token.asp
       '               ^ comment.line.apostrophe.asp - invalid.illegal.unexpected-token.asp
        
        Sub Test1234 Set x = y
                    '^^^ invalid.illegal.unexpected-token.asp
        End Sub
       '^^^^^^^ meta.class.source.asp meta.method.source.asp storage.type.function.end.asp
        
        code_in_class_definition_but_outside_of_a_method = "invalid"
       '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unexpected-token.asp
       '                                                 ^ invalid.illegal.unexpected-token.asp
       '                                                   ^^^^^^^^^ invalid.illegal.unexpected-token.asp
    End Class
   '^^^^^^^^^ storage.type.class.end.asp
   '^^^^^^^^^ meta.class.body.source.asp
   '         ^ - storage.type.class.end.asp - meta.class.body.source.asp
    
    Dim [], [ažė+, (], [dim]
    '   ^^ meta.variable-definition.asp
    '     ^ punctuation.separator.variable-declaration.asp - meta.variable-definition.asp
    '       ^^^^^^^^^ meta.variable-definition.asp - keyword.operator.asp - punctuation.separator.variable-declaration.asp
    '                  ^^^^^ meta.variable-definition.asp
    [dim] = 5 ^ 2
   '^^^^^ meta.variable-reference.asp
    '         ^ keyword.operator.asp
    
    Const blah = _
    
                 "blah"rem-"testing"
    '            ^^^^^^ string.quoted.double.asp
    '                  ^^^^^^^^^^^^^^ comment.line.rem.asp
    '                  ^^^^^^^^^^^^^^ - string.quoted.double.asp
    
    Class TestClass2 Public Sub TestSub () Response.Write("wow") End Sub End Class
   '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.source.asp
   '^^^^^^^^^^^^^^^^ meta.class.identifier.source.asp
   '^^^^^ storage.type.asp
   '      ^^^^^^^^^^ entity.name.class.source.asp
   '                ^ - meta.class.identifier.source.asp
   '                 ^^^^^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
   '                 ^^^^^^^^^^ storage.type.function.asp
   '                            ^^^^^^^ entity.name.function.asp
   '                                    ^^ punctuation.definition.parameters
   '                                      ^ meta.method.source.asp meta.method.body.source.asp - meta.method.identifier.source.asp
   '                                                             ^^^^^^ storage.type.function.end.asp
   '                                                                     ^^^^^^^^^ meta.class.body.source.asp
   '                                                                     ^^^^^^^^^ storage.type.class.end.asp
   '                                                                              ^ - meta.class
    
    Const abc = 'fgfg
    '           ^ invalid.illegal.unexpected-end-of-statement.asp,
    Private a, b
'<- - invalid.illegal.unexpected-end-of-statement.asp
    Set a = new TestClass
   '^^^ storage.type.asp
   '        ^^^ keyword.asp
    a.Name = blah
    
    New 
   '    ^ invalid.illegal.missing-token.asp,
   +
   '^ invalid.illegal.unexpected-end-of-statement.asp,
    
    Function GetModifiedDate(path) ' test function
   '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
   '                               ^ punctuation.definition.comment.asp
   '                               ^^^^^^^^^^^^^^^^ comment.line.apostrophe.asp
   '                              ^ - meta.method.identifier.source.asp
   '^^^^^^^^ storage.type.function.asp
   '         ^^^^^^^^^^^^^^^ entity.name.function.asp
   '                        ^ punctuation.definition.parameters.begin.asp
   '                         ^^^^ variable.parameter.function.asp
   '                             ^ punctuation.definition.parameters.end.asp
        On Error Resume Next
'<- meta.method.body.source.asp - comment.line.apostrophe.asp
       '^^^^^^^^^^^^^^^^^^^^ storage.type.asp
        Set fs = Server.CreateObject("Scripting.FileSystemObject")
       '^^^ storage.type.asp
       '       ^ keyword.operator.asp
       '         ^^^^^^ support.class.asp
       '                ^^^^^^^^^^^^ support.function
       '                             ^ punctuation.definition.string.begin.asp
       '                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.asp
       '                                                        ^ punctuation.definition.string.end.asp
        With fs
       '^^^^ keyword.control.flow.asp
            Set rs = .GetFile(Server.MapPath(path))
            '        ^ meta.with.block.asp keyword.object-access.asp
            '                       ^ meta.with.block.asp keyword.object-access.asp
            GetModifiedDate = rs.DateLastModified
            Set rs = Nothing
           '^^^ storage.type.asp
           '       ^ keyword.operator.asp
           '         ^^^^^^^ storage.type.asp
        End With
       '^^^^^^^^ keyword.control.flow.asp
       
        Set fs = Nothing
        On Error Goto 0
       '^^^^^^^^^^^^^^^ storage.type.asp
       '               ^ - storage.type.asp
    End Function
   '^^^^^^^^^^^^ storage.type.function.end.asp
    
    modified = GetModifiedDate("demo_lastmodified.asp")
    
    Sub Example ()
   '^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
   '^^^ storage.type.function.asp
   '    ^^^^^^^ entity.name.function.asp
   '           ^ - entity.name.function.asp
   '            ^^ punctuation.definition.parameters
        div = 4
       '    ^ keyword.operator.asp
       '      ^ constant.numeric.asp
       
        If 1<div And 2>1 Then ' if block
       '^^ keyword.control.flow.asp
       '  ^^^^^^^^^^^^^^^ meta.between-if-and-then.asp
       '    ^ keyword.operator.asp - punctuation.definition.tag.begin.html
       '         ^^^ keyword.operator.asp
       '              ^ keyword.operator.asp - punctuation.definition.tag.end.html
       '                 ^^^^ keyword.control.flow.asp
       '                     ^ meta.if.block.asp
            Exit Sub
           '^^^^^^^^ keyword.control.flow.asp
        ElseIf "abc>"<>"def= then " Then
       '^^^^^^ keyword.control.flow.asp
       '      ^^^^^^^^^^^^^^^^^^^^^^ meta.between-if-and-then.asp
       '           ^ string.quoted.double.asp - keyword.operator.asp
       '             ^^ keyword.operator.asp
       '                   ^ string.quoted.double.asp - keyword.operator.asp
       '                     ^^^^ string.quoted.double.asp - keyword.control.flow.asp
       '                            ^^^^ keyword.control.flow.asp
       '                                ^ meta.if.block.asp
        ElseIf new TestClass Then
        '      ^^^ keyword.asp
        Else
       '^^^^ keyword.control.flow.asp
       '    ^ meta.if.block.asp
            example = example - 1
            '                 ^ keyword.operator.asp
        End If
       '^^^^^^ keyword.control.flow.asp
       '      ^ - meta.if.block.asp
    End Sub
   '^^^^^^^ storage.type.function.end.asp
    
    If 1 _
       = 2 Then Call DoSomething
    '      ^^^^ keyword.control.flow.asp
    '          ^^^^^^^^^^^^^^^^^ meta.if.line.asp - meta.if.block.asp
    '           ^^^^ storage.type.asp
    '                           ^ - meta.if.line.asp
    
    Function IIf(expr, true_part, false_part) ' https://support.microsoft.com/en-us/kb/219271
    '            ^^^^ variable.parameter.function.asp
    '                  ^^^^^^^^^ variable.parameter.function.asp
    '                             ^^^^^^^^^^ variable.parameter.function.asp
        If expr Then IIf = true_part Else IIf = false_part
        '           ^^^^^^^^^^^^^^^^^ meta.if.line.asp
        '                                ^^^^^^^^^^^^^^^^^ meta.if.line.asp
        '                                                 ^ - meta.if.line.asp
    End Function
    
    If a is not nothing then a.b = a.b + 2
    '    ^^^^^^ invalid.illegal.unexpected-token.asp
    '           ^^^^^^^ storage.type.asp
    '                   ^^^^ keyword.control.flow.asp
    ' ^^^^^^^^^^^^^^^^^^ meta.between-if-and-then.asp
    '                       ^^^^^^^^^^^^^^ meta.if.line.asp
    '                                     ^ - meta.if.line.asp
    If not a is nothing then a.b = a.b + 2
    ' ^^^^^^^^^^^^^^^^^^ meta.between-if-and-then.asp
    '                       ^^^^^^^^^^^^^^ meta.if.line.asp
    '                                     ^ - meta.if.line.asp
    '        ^^^^^^ - invalid.illegal.unexpected-token.asp
    '        ^^ keyword.operator.asp
    '           ^^^^^^^ storage.type.asp
    
    If a Then
        '    ^ meta.if.block.asp - meta.if.line.asp
        DoSomething ( invalid_token_inside_parens, 2, if )
        '                                             ^^ invalid.illegal.unexpected-token.literal.asp
    ElseIf a = b Then AnotherSomething ' despite this being on the same line as the ElseIf, the End If is still required because the opening if statement was a block
    '                ^ meta.if.block.asp - meta.if.line.asp
    Else DoSomethingElse ' despite this being on the same line as the Else, the End If is still required because the opening if statement was a block
   '^^^^ keyword.control.flow.asp
   '    ^^^^^^^^^^^^^^^^ meta.if.block.asp
    End If
   '      ^ - meta.if.block.asp
    
    If a Then Call
    '             ^ invalid.illegal.missing-token.asp,
    
    Dim str1_ REM example
   '^^^ storage.modifier.source.asp
   '       ^ - constant.numeric.asp
   '        ^ - keyword.operator.line-continuation.asp
   '          ^^^ punctuation.definition.comment.asp
   '          ^^^^^^^^^^^^ comment.line.rem.asp
    str1 = "this is a ""hello-world""" & " " &"""" + "test" +_ 'continue on next line, comments not allowed here
'<- - comment.line.rem.asp
    '                 ^^ string.quoted.double.asp constant.character.escape.apostrophe.asp
    '                        ^ string.quoted.double.asp - keyword.operator.asp
    '                              ^^ string.quoted.double.asp constant.character.escape.apostrophe.asp - punctuation.definition.string.end.asp
    '                                ^ string.quoted.double.asp punctuation.definition.string.end.asp
    '                                  ^ keyword.operator.asp
    '                                    ^^^ string.quoted.double.asp
    '                                        ^ keyword.operator.asp
    '                                         ^^^^ string.quoted.double.asp
    '                                          ^^ constant.character.escape.apostrophe.asp - punctuation.definition.string.end.asp
    '                                              ^ keyword.operator.asp
    '                                                        ^ keyword.operator.line-continuation.asp
    '                                                          ^^^^^^^^^^^^^ invalid.illegal.expected-end-of-line.asp - comment.line.apostrophe.asp
                Chr(34) & vbCrLf _ +
    '           ^^^ support.function.vb.asp
    '                     ^^^^^^ support.type.vb.asp
    '                            ^ keyword.operator.line-continuation.asp
    '                              ^ invalid.illegal.expected-end-of-line.asp
    
    value = 1/2
    '        ^ keyword.operator.asp
    value = &HFF mod 3
    '       ^^^^ constant.numeric.asp
    '            ^^^ keyword.operator.asp
    Select Case call value:Case 1
   '^^^^^^^^^^^ keyword.control.flow.asp
   '            ^^^^ meta.select.block.asp invalid.illegal.unexpected-token.literal.asp
   '                      ^ meta.select.block.asp keyword.operator.statement-separator.asp
   '                       ^^^^ keyword.control.flow.asp
        Case 2
       '^^^^ keyword.control.flow.asp
'<- meta.select.block.asp
        Case
        '   ^ invalid.illegal.unexpected-end-of-statement.asp,
        Case vbNullString
       '^^^^ keyword.control.flow.asp
        '    ^^^^^^^^^^^^ support.type.vb.asp
        Case Else
       '^^^^^^^^^ keyword.control.flow.asp
            If value >= 4 and Value<=5 Then MsgBox("no end if required here")
            '        ^^ keyword.operator.asp
            '                      ^^ keyword.operator.asp
            '                               ^^^^^^ support.function.vb.asp
            If Not (value Is Nothing) then valueis = vbFalse
            '  ^^^ keyword.operator.asp
            '             ^^ keyword.operator.asp
            '                                   ^^ - keyword.operator.asp
            '                                        ^^^^^^^ support.type.vb.asp
'<- meta.select.block.asp
    End Select
   '^^^^^^^^^^ keyword.control.flow.asp
   '          ^ - meta.select.block.asp
    'the underscore in this comment should be ignored _ as should the colon :
    '                                                 ^ comment.line.apostrophe.asp - keyword.operator - illegal.invalid
    '                                                                       ^ comment.line.apostrophe.asp - keyword.operator - illegal.invalid
    Sub Test _
 _ '         ^ keyword.operator.line-continuation.asp
 _ '^^^ storage.type.function.asp
 _ '    ^^^^ entity.name.function.asp
 _ '^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
            (_
 _ '        ^ meta.method.source.asp meta.method.identifier.source.asp punctuation.definition.parameters.begin.asp
 _ '         ^ keyword.operator.line-continuation.asp
             abc, ByRef def _
 _          '^^^ meta.method.source.asp meta.method.identifier.source.asp variable.parameter.function.asp
 _          '   ^ meta.method.source.asp meta.method.identifier.source.asp punctuation.separator.parameter-declaration.asp
 _          '     ^^^^^ meta.method.source.asp meta.method.identifier.source.asp storage.type.asp
 _          '           ^^^ meta.method.source.asp meta.method.identifier.source.asp variable.parameter.function.asp
 _          '               ^ meta.method.source.asp meta.method.identifier.source.asp keyword.operator.line-continuation.asp
             )
            '^ meta.method.source.asp meta.method.identifier.source.asp punctuation.definition.parameters.end.asp
        
        Dim x _
           ,y()
        '    ^^ meta.array.definition.asp punctuation.definition.array
        a)
        '^ invalid.illegal.stray-close-bracket.asp
        a(
        ' ^ invalid.illegal.missing-close-bracket.asp,
        ReDim arr(2l,b)
       '^^^^^ storage.modifier.source.asp
       '         ^^^^^ meta.array.definition.asp
       '          ^^ constant.numeric.asp
       '            ^ punctuation.definition.array.separator.asp
       '             ^ - invalid.illegal - constant.numeric
       '              ^ punctuation.definition.array.end.asp
        
        ReDim arr(dim, other)
        '         ^^^ invalid.illegal
        '        ^ - invalid.illegal
        '            ^^^^^^^^ - invalid.illegal.unexpected-token.asp - invalid.illegal.name.asp
        ReDim Dim(2,4)
        '     ^^^ invalid.illegal.name.asp
        
'<- - invalid.illegal.unexpected-token.asp

        Dim a(0,&H5)
        '    ^^^^^^^ meta.array.definition.asp
        '    ^ punctuation.definition.array.begin.asp
        '     ^ constant.numeric.asp
        '      ^ punctuation.definition.array.separator.asp
        '       ^^^ constant.numeric.asp
        '          ^ punctuation.definition.array.end.asp
        b = a Is Empty : Dim loop,nope : Dim foobar
       '^^^^^^^^^^^^^^^^^^^^^ - invalid.illegal.unexpected-token.asp - invalid.illegal.name.asp
       '                               ^^^^^^^^^^^^^ - invalid.illegal.unexpected-token.asp - invalid.illegal.name.asp
        '              ^ keyword.operator.statement-separator.asp
        '                ^^^ storage.modifier.source.asp
        '                    ^^^^ invalid.illegal.name.asp
        '                              ^ keyword.operator.statement-separator.asp
        '                                ^^^ storage.modifier.source.asp
        Dim hello_world, 2
        '                ^ invalid.illegal.unexpected-token.asp
        '                 ^ - invalid.illegal.unexpected-token.asp
        
        ReDim Preserve arr ( &HA,c)
       '                   ^^^^^^^^ meta.array.definition.asp
       '^^^^^^^^^^^^^^ storage.modifier.source.asp
       '                   ^ punctuation.definition.array.begin.asp
       '                     ^^^ constant.numeric.asp
       '                        ^ punctuation.definition.array.separator.asp
       '                          ^ punctuation.definition.array.end.asp
        For x = LBound(a) to UBound(a) Step 2 'test
       '^^^ keyword.control.flow.asp
       '    ^ meta.variable-reference.asp
       '      ^ keyword.operator.asp
       '        ^^^^^^ support.function.vb.asp
       '                  ^^ keyword.control.flow.asp
       '                     ^^^^^^ support.function.vb.asp
       '                               ^^^^ keyword.control.flow.asp
       '                                    ^ constant.numeric.asp
       '                                     ^ meta.for.block.asp
       '                                      ^^^^^^ comment.line.apostrophe.asp
            a(x) = x * 10
            '        ^ keyword.operator.asp
        Next
       '^^^^ keyword.control.flow.asp
       '    ^ - meta.for.block.asp
    End Sub
    
    Sub NoParens fg
    '   ^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp entity.name.function.asp
    '            ^^ invalid.illegal.unexpected-token.asp - meta.method.identifier.source.asp
    End Sub
    
    Function NoParams'()
   '^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
   '         ^^^^^^^^ entity.name.function.asp
   '                 ^^^ comment.line.apostrophe.asp - entity.name.function.asp - invalid.illegal.unexpected-token-after-method-declaration.asp - punctuation.definition.parameters
        NoParams = InStr(1, "hello_'", "L", vbTextCompare)
'<- meta.method.body.source.asp - invalid.illegal.unexpected-token-after-method-declaration.asp - meta.method.identifier.source.asp
       '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid.illegal.unexpected-token-after-method-declaration.asp - meta.method.source.asp meta.method.identifier.source.asp - invalid.illegal.after-line-continuation-char.asp - comment.line.rem.asp
        '          ^^^^^ support.function.vb.asp
        '                                   ^^^^^^^^^^^^^ support.type.vb.asp
        Test = True Xor False
        '      ^^^^ storage.type.asp
        '           ^^^ keyword.operator.asp
        '               ^^^^ storage.type.asp
    End Function
    Sub Test2
   '^^^ meta.method.source.asp meta.method.identifier.source.asp storage.type.function.asp
    '   ^^^^^ meta.method.source.asp meta.method.identifier.source.asp entity.name.function.asp
        hello = world
       '^ - entity.name.function.asp - meta.method.source.asp meta.method.identifier.source.asp
    End Sub
    Call Test
   '^^^^ storage.type.asp
    Call NoParams
    
         Sub Wow (test _ 'test
 ,def _ '^^^^^^^^^^^^^^^^^^^^^^ meta.method.source.asp meta.method.identifier.source.asp
      _ '^^^ storage.type.function.asp
        '    ^^^ entity.name.function.asp
        '                ^^^^^ invalid.illegal.expected-end-of-line.asp
    ) ' this bracket doesn't form part of the method declaration - the line above is missing a _ and contains non-whitespace
   '^ meta.method.body.source.asp - meta.method.identifier.source.asp - punctuation.definition.parameters.end.asp
        MsgBox "hi", vbOkCancel or vbExclamation or vbDefaultButton1, "title"
        '            ^^^^^^^^^^ support.type.vb.asp
        '                       ^^ keyword.operator.asp
        '                          ^^^^^^^^^^^^^ support.type.vb.asp
        '                                           ^^^^^^^^^^^^^^^^ support.type.vb.asp
    End Sub
    
    End If ' nothing to end
   '^^^ invalid.illegal.unexpected-token.asp
' check that the incomplete if gets dropped off after the end of the line
'<- - meta.between-if-and-then.asp invalid.illegal.unexpected-end-of-statement.asp
   
    If 
   '^^ keyword.control.flow.asp
   '  ^ meta.between-if-and-then.asp
   '   ^ invalid.illegal.unexpected-end-of-statement.asp,
    
    For Each cookie In Request.Cookies
   '^^^^^^^^ keyword.control.flow.asp
   '                ^^ keyword.control.flow.asp
   '         ^^^^^^ meta.variable-reference.asp
   '                                  ^ meta.for.block.asp
        Response.Write(vbCrLf & cookie)
       '^^^^^^^^ support.class.asp
       '        ^ keyword.object-access.asp
       '               ^^^^^^ support.type.vb.asp
       '                      ^ keyword.operator.asp
       '                        ^^^^^^ meta.variable-reference.asp
        If x = y Then Exit For
       '^^ keyword.control.flow.asp
       '         ^^^^ keyword.control.flow.asp
       '             ^^^^^^^^^ meta.if.line.asp
       '              ^^^^^^^^ keyword.control.flow.asp
       '                      ^ - meta.if.line.asp
        Response.Write("----" & vbCrLf)
       '^^^^^^^^ support.class.asp
    Next
   '^^^^ keyword.control.flow.asp
   '    ^ - meta.for.block.asp
    
    Do
   '^^ meta.do.block.asp keyword.control.flow.asp
        Exit Do
       '^^^^^^^ meta.do.block.asp keyword.control.flow.asp
    Loop
   '^^^^ keyword.control.flow.asp
   '    ^ - meta.do.block.asp
    
    Do
        Exit Do
    Loop Until x = y
   '^^^^^^^^^^ keyword.control.flow.asp
   '                ^ - meta.do.block.asp
    
    Do
        Exit Do
    Loop While x <> y
   '^^^^^^^^^^ keyword.control.flow.asp
   '                 ^ - meta.do.block.asp - meta.while.block.asp
    
    While True
   '^^^^^ meta.while.block.asp keyword.control.flow.asp
        ' ^^^^ storage.type.asp
    Wend
   '^^^^ keyword.control.flow.asp
   '    ^ - meta.while.block.asp
    
    Sub Another_Test()rem
    '                 ^^^^ comment.line.rem.asp - meta.method.identifier.source.asp
        Const ForAppending = 8
       '^^^^^ meta.method.body.source.asp storage.modifier.source.asp
        
        Set objFSO = CreateObject("Scripting.FileSystemObject")
        Set objTextFile = objFSO.OpenTextFile("d:\logfile.c", ForAppending, True)
        
        Dim Line
        Line = 0
        Do While Line < 2000
       '^^^^^^^^ keyword.control.flow.asp
       '^^^^^^^^^^^^^^^^^^^^^ meta.do.block.asp - meta.while.block.asp
       '         ^^^^ meta.variable-reference.asp
       '              ^ keyword.operator.asp
       '                ^^^^ constant.numeric.asp
            objTextFile.WriteLine("long l" & Line & " = " & Line)
            Line = Line + 1
            Dim WshShell 'http://stackoverflow.com/a/2237479/4473405
            Set WshShell=Server.CreateObject("WScript.Shell")
            WshShell.Run "waitfor /T " & numberOfSecond & "SignalThatWontHappen", , True
            
            do until Line = Line
           '^^^^^^^^ keyword.control.flow.asp
           '         ^^^^ meta.variable-reference.asp
           '                ^^^^ meta.variable-reference.asp
           '^^^^^^^^^^^^^^^^^^^^^ meta.do.block.asp meta.do.block.asp - invalid.illegal
                ' this code will never run
            loop
           '^^^^ keyword.control.flow.asp
        Loop
       '^^^^ keyword.control.flow.asp
       '    ^ - meta.do.block.asp
        
        objTextFile.Close
        
        Set objTextFile = Nothing
        Set objFSO = Nothing
    End _
      Sub
    ' ^^^ storage.type.function.end.asp - meta.method.identifier.source.asp
    %>
   '^^ source.asp.embedded.html punctuation.section.embedded.end.asp
   '  ^ - source.asp.embedded.html
    This file was last modified on: <%response.write(modified)
   '^ - source.asp.embedded.html
   '                                ^^ source.asp.embedded.html punctuation.section.embedded.begin.asp
   '                                  ^^^^^^^^ support.class.asp
   '                                           ^^^^^ support.function.asp
    %>
    
    <p>foobar</p>
   '^^^ text.html.asp meta.tag.block.any.html - source.asp.embedded.html
    <%='test %>
   '^^^ source.asp.embedded.html punctuation.section.embedded.begin.asp
   '   ^^^^^^ comment.line.apostrophe.asp
   '         ^^ source.asp.embedded.html punctuation.section.embedded.end.asp - comment.line.apostrophe.asp
   '           ^ - source.asp.embedded.html
    <%= "this" + Chr(32) + "that" %>
   '^^^ source.asp.embedded.html punctuation.section.embedded.begin.asp
   '    ^^^^^^ string.quoted.double.asp
   '           ^ keyword.operator.asp
   '             ^^^ support.function.vb.asp
<%

_
     'a line continuation char can be followed by just a comment on the next non blank line
   ' ^ punctuation.definition.comment.asp
   ' ^^^^^^ comment.line.apostrophe.asp

t = [unclosed variable identifier
'                                ^ invalid.illegal.unclosed-variable-identifier.asp,

Dim test
 rem the syntax on the next line will cause an unterminated string constant error
'^^^^^^ comment.line.rem.asp
test = "hello%>
'      ^^^^^^ source.asp.embedded.html string.quoted.double.asp
'            ^^ punctuation.section.embedded.end.asp - string.quoted.double.asp
'              ^ - source.asp.embedded.html

<footer>
'^^^^^^ text.html.asp meta.tag.block.any.html entity.name.tag.block.any.html
    <% With abc %>
    '  ^^^^ keyword.control.flow.asp
    '           ^^ text.html.asp source.asp.embedded.html meta.with.block.asp punctuation.section.embedded.end.inside-block.asp
        <p>Some conditional content in the footer</p>
        '<- text.html.asp source.asp.embedded.html meta.with.block.asp meta.tag.block.any.html punctuation.definition.tag.begin.html
    <% End With %>
   '^^ text.html.asp source.asp.embedded.html meta.with.block.asp punctuation.section.embedded.begin.inside-block.asp
   '   ^^^^^^^^ keyword.control.flow.asp
   '            ^^ text.html.asp source.asp.embedded.html punctuation.section.embedded.end.asp - meta.with.block.asp
   '              ^ - source.asp.embedded.html
    <% If abc = "def" Then %>
    '                     ^^^^ meta.if.block.asp - meta.if.line.asp
        <span id="span1">Text here</span>
        '     ^^ text.html.asp source.asp.embedded.html meta.if.block.asp meta.tag.inline.any.html meta.attribute-with-value.id.html entity.other.attribute-name.id.html
        '                         ^^ text.html.asp source.asp.embedded.html meta.if.block.asp meta.tag.inline.any.html punctuation.definition.tag.begin.html
    <% End If %>
    '^^ meta.if.block.asp
    '  ^^^^^^ keyword.control.flow.asp
    '        ^^^^ - meta.if.block.asp
   
</footer><% [%><br />
'            ^^ text.html.asp source.asp.embedded.html punctuation.section.embedded.end.asp
'               ^^ text.html.asp meta.tag.inline.any.html entity.name.tag.inline.any.html
<% Sub InventiveMethodNameHere(list) %>
'  ^^^ meta.method.identifier.source.asp storage.type.function.asp
'                                   ^^^^ text.html.asp source.asp.embedded.html meta.method.source.asp meta.method.body.source.asp
  <ul>
<%
        for each item in list
       '^^^^^^^^ text.html.asp source.asp.embedded.html meta.method.source.asp meta.method.body.source.asp meta.for.block.asp keyword.control.flow.asp
       '              ^^ text.html.asp source.asp.embedded.html meta.method.source.asp meta.method.body.source.asp meta.for.block.asp keyword.control.flow.asp
            %><li><%= item %></li><%
           '^^^^^^^^^^^^^^^^^^^^^^^^^ text.html.asp source.asp.embedded.html meta.method.source.asp meta.method.body.source.asp meta.for.block.asp
           '  ^ meta.tag.inline.any.html punctuation.definition.tag.begin.html
           '      ^^^ punctuation.section.embedded.begin.inside-block.asp
           '               ^^ punctuation.section.embedded.end.inside-block.asp
        Next
       '^^^^ text.html.asp source.asp.embedded.html meta.method.source.asp meta.method.body.source.asp keyword.control.flow.asp
       '    ^ - meta.for.block.asp
%></ul>
<% End Sub %>
'  ^^^^^^^ text.html.asp source.asp.embedded.html meta.method.source.asp storage.type.function.end.asp
'         ^ - meta.method.source.asp
 </body>
'^^^^^^^ meta.tag.structure.any.html
<p class="<% If True Then %>test<% End If %>"></p>
'         ^^ text.html.asp text.html.basic meta.tag.block.any.html meta.attribute-with-value.class.html string.quoted.double.html meta.class-name.html source.asp.embedded.html punctuation.section.embedded.begin.asp
'            ^^ text.html.asp text.html.basic meta.tag.block.any.html meta.attribute-with-value.class.html string.quoted.double.html meta.class-name.html source.asp.embedded.html keyword.control.flow.asp
'                         ^^ text.html.asp text.html.basic meta.tag.block.any.html meta.attribute-with-value.class.html string.quoted.double.html meta.class-name.html source.asp.embedded.html meta.if.block.asp punctuation.section.embedded.end.inside-block.asp
'                           ^^^^ text.html.asp text.html.basic meta.tag.block.any.html meta.attribute-with-value.class.html string.quoted.double.html meta.class-name.html source.asp.embedded.html meta.if.block.asp
'                               ^^ text.html.asp text.html.basic meta.tag.block.any.html meta.attribute-with-value.class.html string.quoted.double.html meta.class-name.html source.asp.embedded.html meta.if.block.asp punctuation.section.embedded.begin.inside-block.asp
'                                  ^^^^^^ text.html.asp text.html.basic meta.tag.block.any.html meta.attribute-with-value.class.html string.quoted.double.html meta.class-name.html source.asp.embedded.html keyword.control.flow.asp
'                                         ^^ text.html.asp text.html.basic meta.tag.block.any.html meta.attribute-with-value.class.html string.quoted.double.html meta.class-name.html source.asp.embedded.html punctuation.section.embedded.end.asp - meta.if.block.asp
<script type="text/javascript">
<% If True Then %>var hello = "world";<% End If %>
</script>
<span <% If False Then %>class="test"<% End If %>>Text</span>
</html>
