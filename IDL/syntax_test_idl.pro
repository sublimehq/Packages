; SYNTAX TEST "Packages/IDL/IDL.sublime-syntax"
; foo
; ^ source.idl comment.line
; <- punctuation.definition.comment

a = "Hello, World! ; not a comment"
; ^ keyword.operator
;   ^ punctuation.definition.string.begin
;   ^ string.quoted.double
;                  ^ string.quoted.double - comment.line
;                                 ^ punctuation.definition.string.end

a = $
'Hello, World! ; not a comment'
; <- punctuation.definition.string.begin
; <- string.quoted.single
;              ^ string.quoted.single - comment.line
;                             ^ punctuation.definition.string.end

b = [1,10,1.0,1e2,10E20,1e-2,1d2,1L,1l,1u,0]
;    ^ constant.numeric
;      ^ constant.numeric
;         ^ constant.numeric
;             ^ constant.numeric
;                 ^ constant.numeric
;                       ^ constant.numeric
;                            ^ constant.numeric
;                                ^ constant.numeric
;                                   ^ constant.numeric
;                                      ^ constant.numeric
;                                         ^ constant.numeric

b = [1b,.5,1.,.5e2,1.e+21,1d]
;   ^ punctuation.definition.brackets.begin
;    ^ constant.numeric
;       ^ constant.numeric
;          ^ constant.numeric
;             ^ constant.numeric
;                  ^ constant.numeric
;                         ^ constant.numeric
;                           ^ punctuation.definition.brackets.end

a = b & c = d
; ^ keyword.operator
;         ^ keyword.operator

a = b.foo->bar
; ^ keyword.operator
;    ^ punctuation.accessor
;        ^ punctuation.accessor

a = b+c & a = b-c & a = b*c & a = b/c
;    ^ keyword.operator
;              ^ keyword.operator
;                        ^ keyword.operator
;                                  ^ keyword.operator

a = b%c & a = b#c & a = a##c & a++ & a--
;    ^ keyword.operator
;              ^ keyword.operator
;                        ^ keyword.operator
;                               ^ keyword.operator
;                                     ^ keyword.operator

a = b ? c : d
;     ^ keyword.operator
;         ^ keyword.operator

b.foo->bar = a
;^ punctuation.accessor
;    ^ punctuation.accessor
;          ^ keyword.operator

a = foo(b, bar(c, d, bar=2, /test))
;   ^ meta.function-call
;                  ^ meta.function-call meta.function-call
;                    ^ variable.parameter
;                           ^ variable.parameter.keyword

a = foo($ ; test comment
;   ^ meta.function-call
;         ^ comment.line
    b+2, $
    bar($
        c,$
        d,$
;       ^ meta.function-call meta.function-call
        bar=2,$
;       ^ variable.parameter
        /test$
;       ^ variable.parameter.keyword
    )$
)

b = sqrt(2)
;   ^ meta.function-call support.function

dostuff, a, b, width=2, /silent
; <- meta.function-call.procedure
;           ^ meta.function-call.procedure
;              ^ variable.parameter
;                       ^ variable.parameter.keyword

dostuff, $
    a, $
    b+2, $
    width=2, $
    /silent
;   ^ variable.parameter.keyword

print, x, y, z, format='(3F5.1)'
; <- support.function.procedure

print, x & print, z
; <- support.function
;          ^ support.function

print & print
; <- support.function
;       ^ support.function

print, x ; print the value of x
; <- support.function
;        ^ comment.line

if i eq 0 then print else print, i
;              ^ support.function
;                    ^ keyword.control
;                         ^ support.function

if a eq 1 or e xor p then b = d
; <- keyword.control
;    ^ keyword.operator
;         ^ keyword.operator
;              ^ keyword.operator
;                    ^ keyword.control
;                           ^ keyword.operator

IF b ne 2 and a lt b THEN begin
; <- keyword.control
;    ^ keyword.operator
;         ^ keyword.operator
;               ^ keyword.operator
;                    ^ keyword.control
;                         ^ meta.block
    a = c
;     ^ keyword.operator
endif else begin
;     ^ keyword.control
;          ^ meta.block
    c = a
;     ^ keyword.operator
endelse

for i=0, 15 do begin
; <- keyword.control
;           ^ keyword.control
;              ^ meta.block
    a += 1
;     ^ keyword.operator
    break
;   ^ keyword.control
endfor

while a ne b do begin
; <- keyword.control
;            ^ keyword.control
;               ^ meta.block
    b /= c
;     ^ keyword.operator
    continue
;   ^ keyword.control
endwhile

for $
    i=0, $
    15 do $
;      ^ keyword.control
;         ^ punctuation.line-continuation
    begin
    c += v
end

case b of
; <- meta.case-statement keyword.control
;      ^ keyword.control
    '2': a=1
;   ^ meta.case-statement string.quoted.single
;         ^ keyword.operator
    '3': begin
;   ^ meta.case-statement string.quoted.single
;        ^ keyword.control
        c=3
;        ^ keyword.operator
    end
;   ^ keyword.control
    1: d=4
;   ^ meta.case-statement constant.numeric
;       ^ keyword.operator
    1 && 2: d=5
;   ^ meta.case-statement constant.numeric
;     ^ meta.case-statement keyword.operator
;            ^ keyword.operator
    else: print, e
;   ^ meta.case-statement keyword.control
;         ^ meta.function-call.procedure
endcase
; <- keyword.control

function foo::bar, p0, p1_pub=p1_priv
;        ^ entity.name.function.scope
;             ^ entity.name.function
;                  ^ variable.parameter - variable.parameter.keyword
;                      ^ variable.parameter.keyword.public
;                             ^ variable.parameter.keyword.private

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

    return, bla
;   ^ keyword.control
end

FUNCTION bar, p0, p1_pub=p1_priv, $
              p2, p3_pub=p3_priv
;             ^ variable.parameter - variable.parameter.keyword
;                 ^ variable.parameter.keyword.public
;                        ^ variable.parameter.keyword.private

    print, x, y+2, z[5], format='(F12.5)', format = 'test'
;   ^ support.function
;        ^ meta.function-call
;                        ^ variable.parameter
;                                          ^ variable.parameter

    print, x, y+2, z[5], $
        format='(F12.5)'
;       ^ meta.function-call
;       ^ variable.parameter

    if x eq 1 then return, 1 else return, 0
;   ^ keyword.control
;             ^ keyword.control
;                  ^ keyword.control
;                            ^ keyword.control
;                                 ^ keyword.control

    RETURN, bla ; return the value of bla
;   ^ keyword.control
;               ^ comment.line
END
