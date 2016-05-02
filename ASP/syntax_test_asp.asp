' SYNTAX TEST "Packages/ASP/HTML-ASP.sublime-syntax"
<!DOCTYPE html>
<html>
'<- meta.tag.structure.any.html punctuation.definition.tag.begin.html - source.asp.embedded.html
'^^^^ meta.tag.structure.any.html entity.name.tag.structure.any.html
'    ^ meta.tag.structure.any.html punctuation.definition.tag.end.html
<head>
    <title>ASP Test Page</title>
</head>
<body>
    <%
   '^^ source.asp.embedded.html punctuation.section.embedded.begin.asp
   'this is a comment
  '^ punctuation.definition.comment.asp
  '^^^^^^^^^^^^^^^^^^ comment.line.apostrophe.asp
    Function GetModifiedDate(path) ' test function
   '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.asp
   '                               ^ punctuation.definition.comment.asp
   '                               ^^^^^^^^^^^^^^^ comment.line.apostrophe.asp
   '^^^^^^^^ storage.type.function.asp
   '         ^^^^^^^^^^^^^^^ entity.name.function.asp
   '                        ^ punctuation.definition.parameters.begin.asp
   '                         ^^^^ variable.parameter.function.asp
   '                             ^ punctuation.definition.parameters.end.asp
        On Error Resume Next
       '^^^^^^^^^^^^^^^^^^^^ storage.type.asp
        Set fs = Server.CreateObject("Scripting.FileSystemObject")
'<- - comment.line.apostrophe.asp
       '^^^ storage.type.asp
       '       ^ keyword.operator.asp
       '         ^^^^^^ support.class.asp
       '                ^^^^^^^^^^^^ support.function.asp
       '                             ^ punctuation.definition.string.begin.asp
       '                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.asp
       '                                                        ^ punctuation.definition.string.end.asp
        With fs
       '^^^^ keyword.control.asp
            Set rs = .GetFile(Server.MapPath(path))
            GetModifiedDate = rs.DateLastModified
            Set rs = Nothing
           '^^^ storage.type.asp
           '       ^ keyword.operator.asp
           '         ^^^^^^^ constant.language.asp
        End With
        '^^^^^^^ keyword.control.asp
       
        Set fs = Nothing
        On Error Goto 0
       '^^^^^^^^^^^^^ storage.type.asp
    End Function
   '^^^^^^^^^^^^ storage.type.asp
    
    modified = GetModifiedDate("demo_lastmodified.asp")
    
    Sub Example ()
   '^^^^^^^^^^^^^^ meta.function.asp
   '^^^ storage.type.function.asp
   '    ^^^^^^^ entity.name.function.asp
   '            ^^ punctuation.definition.parameters
        div = 4
       '    ^ keyword.operator.asp
       '      ^ constant.numeric.asp
       
        If 1<div And 2>1 Then
       '^^ keyword.control.asp
       '    ^ keyword.operator.asp - punctuation.definition.tag.begin.html
       '         ^^^ keyword.operator.asp
       '              ^ keyword.operator.asp - punctuation.definition.tag.end.html
       '                 ^^^^ keyword.control.asp
           Exit Sub
          '^^^^^^^^ keyword.control.asp
        ElseIf "abc>"<>"def=" Then
       '^^^^^^ keyword.control.asp
       '           ^ string.quoted.double.asp - keyword.operator.asp
       '             ^^ keyword.operator.asp
       '                   ^ string.quoted.double.asp - keyword.operator.asp
       '                      ^^^^ keyword.control.asp
        Else
       '^^^^ keyword.control.asp
            example = example - 1
            '                 ^ keyword.operator.asp
        End If
       '^^^^^^ keyword.control.asp
    End Sub
   '^^^^^^^ storage.type.asp
    
    Dim str1 REM example
   '^^^ storage.type.asp
   '       ^ - constant.numeric.asp
   '         ^^^ punctuation.definition.comment.asp
   '         ^^^^^^^^^^^ comment.line.rem.asp
    str1 = "this is a ""hello-world""" & " " &"""" + "test" +_'continue on next line
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
    '                                                        ^ keyword.operator.asp
    '                                                         ^ comment.line.apostrophe.asp
                Chr(34) & vbCrLf _+
    '           ^^^ support.function.vb.asp
    '                     ^^^^^^ support.type.vb.asp
    '                            ^ keyword.operator.asp
    '                             ^ invalid.illegal.after-line-continuation-char.asp
    
    value = 1/2
    '        ^ keyword.operator.asp
    value = &HFF mod 3
    '       ^^^^ constant.numeric.asp
    '            ^^^ keyword.operator.asp
    Select Case value
   '^^^^^^
   '       ^^^^ keyword.control.asp
        Case 1
       '^^^^ keyword.control.asp
        Case vbNullString
        '    ^^^^^^^^^^^^ support.type.vb.asp
        Case Else
       '^^^^ keyword.control.asp
       '     ^^^^ keyword.control.asp
            If value >= 4 and Value<=5 Then MsgBox("no end if required here")
            '        ^^ keyword.operator.asp
            '                      ^^ keyword.operator.asp
            '                               ^^^^^^ support.function.vb.asp
            If Not (value Is Nothing) then valueis = vbFalse
            '  ^^^ keyword.operator.asp
            '             ^^ keyword.operator.asp
            '                                    ^^ - keyword.operator.asp
            '                                        ^^^^^^^ support.type.vb.asp
    End Select
   '^^^^^^^^^^ keyword.control.asp
   
    Sub Test _
   '^^^ storage.type.function.asp
   '    ^^^^ entity.name.function.asp
   '^^^^^^^^^^^ meta.function.asp
   '         ^ keyword.operator.asp
            (_
   '        ^ meta.function.asp punctuation.definition.parameters.begin.asp
   '         ^ keyword.operator.asp
             abc, def _'example_
            '^^^^^^^^ meta.function.asp variable.parameter.function.asp
            '         ^ meta.function.asp keyword.operator.asp
            '          ^^^^^^^^^ meta.function.asp comment.line.apostrophe.asp - keyword.operator.asp
             ) fg
            '^ meta.function.asp punctuation.definition.parameters.end.asp
            '  ^^ invalid.illegal.unexpected-token-after-method-declaration.asp - meta.function.asp
    'comment_
    '       ^ comment.line.apostrophe.asp - keyword.operator.asp

        Dim a(0 To 9)
        '       ^^ keyword.control.asp
        b = a Is Empty
        ReDim Preserve a(1 To 10)
       '^^^^^^^^^^^^^^ storage.type.asp
        For x = LBound(a) to UBound(a) Step 2
       '^^^ keyword.control.asp
       '      ^ keyword.operator.asp
       '        ^^^^^^ support.function.vb.asp
       '                  ^^ keyword.control.asp
       '                     ^^^^^^ support.function.vb.asp
       '                               ^^^^ keyword.control.asp
            a(x) = x * 10
            '        ^ keyword.operator.asp
        Next
       '^^^^ keyword.control.asp
    End Sub
    
    Function NoParams'()
   '^^^^^^^^^^^^^^^^^ meta.function.asp
   '         ^^^^^^^^ entity.name.function.asp
   '                 ^^ comment.line.apostrophe.asp - entity.name.function.asp - invalid.illegal.unexpected-token-after-method-declaration.asp - punctuation.definition.parameters
        NoParams = InStr(1, "hello_'", "L", vbTextCompare)
'<- - invalid.illegal.unexpected-token-after-method-declaration.asp - meta.function.asp
       '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid.illegal.unexpected-token-after-method-declaration.asp - meta.function.asp - invalid.illegal.after-line-continuation-char.asp - comment.line.rem.asp
        '          ^^^^^ support.function.vb.asp
        '                                   ^^^^^^^^^^^^^ support.type.vb.asp
        Test = True Xor False
        '      ^^^^ constant.language.asp
        '           ^^^ keyword.operator.asp
        '               ^^^^ constant.language.asp
    End Function
    Sub Test2
   '^^^ meta.function.asp storage.type.function.asp
    '   ^^^^^ meta.function.asp entity.name.function.asp
        hello = world
       '^ - entity.name.function.asp - meta.function.asp
    End Sub
    Call Test
   '^^^^ storage.type.asp
    Call NoParams
    
    Sub Wow (test 'test
   '^^^^^^^^^^^^^ meta.function.asp
   '^^^ storage.type.function.asp
   '    ^^^ entity.name.function.asp
   '              ^^^^^ comment.line.apostrophe.asp
    ) ' this bracket doesn't form part of the method declaration - the line above is missing a _
   '^ - meta.function.asp - punctuation.definition.parameters.end.asp
        MsgBox "hi", vbOkCancel or vbExclamation or vbDefaultButton1, "title"
        '            ^^^^^^^^^ support.type.vb.asp
        '                       ^^ keyword.operator.asp
        '                          ^^^^^^^^^^^^^ support.type.vb.asp
        '                                           ^^^^^^^^^^^^^^^^ support.type.vb.asp
    End Sub
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
<%

Dim test
 rem the syntax on the next line will cause an unterminated string constant error
'^^^^^^ comment.line.rem.asp
test = "hello%>
'      ^^^^^^ source.asp.embedded.html string.quoted.double.asp
'            ^^ punctuation.section.embedded.end.asp - string.quoted.double.asp
'              ^ - source.asp.embedded.html
 </body>
'^^^^^^^ meta.tag.structure.any.html
</html>
