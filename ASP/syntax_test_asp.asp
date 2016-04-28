' SYNTAX TEST "Packages/ASP/HTML-ASP.sublime-syntax"
<!DOCTYPE html>
<html>
'<- meta.tag.structure.any.html punctuation.definition.tag.begin.html
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
   '^^^^^^^^ storage.type.function.asp
   '         ^^^^^^^^^^^^^^^ entity.name.function.asp
   '                        ^ punctuation.definition.parameters
   '                         ^^^^ variable.parameter.function.asp
   '                             ^ punctuation.definition.parameters
        Set fs = Server.CreateObject("Scripting.FileSystemObject")
       '^^^ storage.type.asp
       '       ^ keyword.operator.asp
       '         ^^^^^^ support.class.asp
       '                ^^^^^^^^^^^^ support.function.asp
       '                             ^ punctuation.definition.string.begin.asp
       '                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.asp
       '                                                        ^ punctuation.definition.string.end.asp
        Set rs = fs.GetFile(Server.MapPath(path))
        GetModifiedDate = rs.DateLastModified
        Set rs = Nothing
       '^^^ storage.type.asp
       '       ^ keyword.operator.asp
       '         ^^^^^^^ constant.language.asp
        Set fs = Nothing
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
            example = example + 1
            '                 ^ keyword.operator.asp
        End If
       '^^^^^^ keyword.control.asp
    End Sub
   '^^^^^^^ storage.type.asp
    %>
   '^^ source.asp.embedded.html punctuation.section.embedded.end.asp
    This file was last modified on: <%response.write(modified)
   '^ - source.asp.embedded.html
   '                                ^^ source.asp.embedded.html punctuation.section.embedded.begin.asp
   '                                  ^^^^^^^^ support.class.asp
   '                                           ^^^^^ support.function.asp
    %>
</body>
</html>
