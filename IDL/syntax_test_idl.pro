; SYNTAX TEST "Packages/IDL/IDL.sublime-syntax"
; foo
; ^ source.idl comment.line
; <- punctuation.definition.comment

"Hello, World! ; not a comment"
; <- punctuation.definition.string.begin
;^ string.quoted.double
;                ^ string.quoted.double - comment.line
;                             ^ punctuation.definition.string.end

'Hello, World! ; not a comment'
; <- punctuation.definition.string.begin
;^ string.quoted.single
;                ^ string.quoted.single - comment.line
;                             ^ punctuation.definition.string.end

1 10 1.0 1e2 10E20 1e-2 1d2 1L 1l 1u 0
; <- constant.numeric
; ^ constant.numeric
;    ^ constant.numeric
;        ^ constant.numeric
;            ^ constant.numeric
;                  ^ constant.numeric
;                       ^ constant.numeric
;                           ^ constant.numeric
;                              ^ constant.numeric
;                                 ^ constant.numeric
;                                    ^ constant.numeric

1b .5 1. .5e2 1.e2
; <- constant.numeric
;  ^ constant.numeric
;     ^ constant.numeric
;        ^ constant.numeric
;             ^ constant.numeric

function foo::bar, p0, p1_pub=p1_priv
;        ^ entity.name.function.scope
;             ^ entity.name.function
;                  ^ function.parameter-list
;                  ^ variable.parameter - variable.parameter.keyword
;                      ^ variable.parameter.keyword.public
;                             ^ variable.parameter.keyword.private

    function foo::bar
;   ^ invalid.illegal

    p0->bar.foobar = 1
;     ^ punctuation.accessor
;          ^ punctuation.accessor
;                  ^ keyword.operator.assignment

    if n_elements(p0) eq 0 then begin
;   ^ keyword.control
;      ^ support.function
;                     ^ keyword.operator
;                          ^ keyword.control
;                               ^ keyword.control
        p0 = p1_priv[0] + self.babar + !xyz2
;                   ^ punctuation.definition.brackets.begin
;                    ^ meta.brackets
;                     ^ punctuation.definition.brackets.end
;                         ^ variable.language.self
;                                      ^ constant.language
    endif
;   ^ keyword.control
end

FUNCTION foo::bar, p0, p1_pub=p1_priv, $
                   p2, p3_pub=p3_priv
;                  ^ function.parameter-list
;                  ^ variable.parameter - variable.parameter.keyword
;                      ^ variable.parameter.keyword.public
;                             ^ variable.parameter.keyword.private

; !WIP!
    print, x, y+2, z[5], format='(F12.5)', format = 'test'
;   ^ support.function
;        ^ meta.function-call
;                        ^ variable.parameter
;                                          ^ variable.parameter

; !WIP!
    print, x, y+2, z[5], $
        format='(F12.5)'
;       ^ meta.function-call
;       ^ variable.parameter
END
