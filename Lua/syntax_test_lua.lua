-- SYNTAX TEST "Lua.sublime-syntax"

local function foo(arg1, arg2, ...)
--^^^ source.lua keyword.control.lua
    --^^^^^^^^ source.lua meta.function.lua keyword.control.lua
             --^^^ source.lua meta.function.lua entity.name.function.lua
                --^ source.lua meta.function.lua punctuation.definition.parameters.begin.lua
                 --^^^^^^^^^^^^^^^ source.lua meta.function.lua variable.parameter.function.lua
                                --^ source.lua meta.function.lua punctuation.definition.parameters.end.lua
end
--^ source.lua keyword.control.lua

function foo(arg1, arg2, ...)
--^^^^^^ source.lua meta.function.lua keyword.control.lua
       --^^^ source.lua meta.function.lua entity.name.function.lua
          --^ source.lua meta.function.lua punctuation.definition.parameters.begin.lua
           --^^^^^^^^^^^^^^^ source.lua meta.function.lua variable.parameter.function.lua
                          --^ source.lua meta.function.lua punctuation.definition.parameters.end.lua
end
--^ source.lua keyword.control.lua

function foo:bar(arg1, arg2, ...)
--^^^^^^ source.lua meta.function.lua keyword.control.lua
       --^^^ source.lua meta.function.lua entity.name.function.scope.lua
          --^ source.lua meta.function.lua entity.name.function.scope.lua
           --^^^ source.lua meta.function.lua entity.name.function.lua
              --^ source.lua meta.function.lua punctuation.definition.parameters.begin.lua
               --^^^^^^^^^^^^^^^ source.lua meta.function.lua variable.parameter.function.lua
                              --^ source.lua meta.function.lua punctuation.definition.parameters.end.lua
end
--^ source.lua keyword.control.lua

function foo.bar(arg1, arg2, ...)
--^^^^^^ source.lua meta.function.lua keyword.control.lua
       --^^^ source.lua meta.function.lua entity.name.function.scope.lua
          --^ source.lua meta.function.lua entity.name.function.scope.lua
           --^^^ source.lua meta.function.lua entity.name.function.lua
              --^ source.lua meta.function.lua punctuation.definition.parameters.begin.lua
               --^^^^^^^^^^^^^^^ source.lua meta.function.lua variable.parameter.function.lua
                              --^ source.lua meta.function.lua punctuation.definition.parameters.end.lua
end
--^ source.lua keyword.control.lua

function foo.bar:foo(arg1, arg2, ...)
--^^^^^^ source.lua meta.function.lua keyword.control.lua
       --^^^ source.lua meta.function.lua entity.name.function.scope.lua
          --^ source.lua meta.function.lua entity.name.function.scope.lua
           --^^^ source.lua meta.function.lua entity.name.function.scope.lua
              --^ source.lua meta.function.lua entity.name.function.scope.lua
               --^^^ source.lua meta.function.lua entity.name.function.lua
                  --^ source.lua meta.function.lua punctuation.definition.parameters.begin.lua
                   --^^^^^^^^^^^^^^^ source.lua meta.function.lua variable.parameter.function.lua
                                  --^ source.lua meta.function.lua punctuation.definition.parameters.end.lua
end
--^ source.lua keyword.control.lua

function foo.bar.foo(arg1, arg2, ...)
--^^^^^^ source.lua meta.function.lua keyword.control.lua
       --^^^ source.lua meta.function.lua entity.name.function.scope.lua
          --^ source.lua meta.function.lua entity.name.function.scope.lua
           --^^^ source.lua meta.function.lua entity.name.function.scope.lua
              --^ source.lua meta.function.lua entity.name.function.scope.lua
               --^^^ source.lua meta.function.lua entity.name.function.lua
                  --^ source.lua meta.function.lua punctuation.definition.parameters.begin.lua
                   --^^^^^^^^^^^^^^^ source.lua meta.function.lua variable.parameter.function.lua
                                  --^ source.lua meta.function.lua punctuation.definition.parameters.end.lua
end
--^ source.lua keyword.control.lua
