# SYNTAX TEST "Packages/AppleScript/AppleScript.sublime-syntax"
# <- source.applescript

    10
#   ^^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
    1.
#   ^^ meta.number.float.decimal.applescript constant.numeric.value.applescript
#    ^ punctuation.separator.decimal.applescript
    1.E+9
#   ^^^^^ meta.number.float.decimal.applescript
#   ^^ constant.numeric.value.applescript
#    ^ punctuation.separator.decimal.applescript
#     ^^^ constant.numeric.value.exponent.applescript
    1e+9
#   ^^^^ meta.number.float.decimal.applescript
#   ^ constant.numeric.value.applescript
#    ^^^ constant.numeric.value.exponent.applescript
    -1.4e9
#   ^ keyword.operator.arithmetic.applescript
#    ^^^^^ meta.number.float.decimal.applescript
#    ^^^ constant.numeric.value.applescript
#     ^ punctuation.separator.decimal.applescript
#       ^^ constant.numeric.value.exponent.applescript

    "foo"
#   ^^^^^ meta.string.applescript string.quoted.double.applescript
#   ^ punctuation.definition.string.begin.applescript
#       ^ punctuation.definition.string.end.applescript

    {1, "two", 3}
#   ^^^^^^^^^^^^^ meta.array.applescript
#   ^ punctuation.section.array.begin.applescript
#    ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#     ^ punctuation.separator.array.applescript
#       ^^^^^ meta.string.applescript string.quoted.double.applescript
#       ^ punctuation.definition.string.begin.applescript
#           ^ punctuation.definition.string.end.applescript
#            ^ punctuation.separator.array.applescript
#              ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#               ^ punctuation.section.array.end.applescript
    {1: "one", "two": 2}
#   ^ punctuation.section.mapping.begin.applescript
#    ^ meta.mapping.key.applescript meta.number.integer.decimal.applescript constant.numeric.value.applescript
#     ^^ meta.mapping.applescript
#     ^ meta.mapping.applescript punctuation.separator.key-value.applescript
#       ^^^^^ meta.mapping.value.applescript meta.string.applescript string.quoted.double.applescript
#       ^ punctuation.definition.string.begin.applescript
#           ^ punctuation.definition.string.end.applescript
#            ^^ meta.mapping.applescript
#            ^ punctuation.separator.sequence.applescript
#              ^^^^^ meta.mapping.key.applescript meta.string.applescript string.quoted.double.applescript
#              ^ punctuation.definition.string.begin.applescript
#                  ^ punctuation.definition.string.end.applescript
#                   ^^ meta.mapping.applescript
#                   ^ meta.mapping.applescript punctuation.separator.key-value.applescript
#                     ^ meta.mapping.value.applescript meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                      ^ meta.mapping.applescript punctuation.section.mapping.end.applescript
    {"one": 1, 2: "two"}
#   ^ punctuation.section.mapping.begin.applescript
#    ^^^^^ meta.mapping.key.applescript meta.string.applescript string.quoted.double.applescript
#    ^ punctuation.definition.string.begin.applescript
#        ^ punctuation.definition.string.end.applescript
#         ^^ meta.mapping.applescript
#         ^ meta.mapping.applescript punctuation.separator.key-value.applescript
#           ^ meta.mapping.value.applescript meta.number.integer.decimal.applescript constant.numeric.value.applescript
#            ^^ meta.mapping.applescript
#            ^ punctuation.separator.sequence.applescript
#              ^ meta.mapping.key.applescript meta.number.integer.decimal.applescript constant.numeric.value.applescript
#               ^^ meta.mapping.applescript
#               ^ meta.mapping.applescript punctuation.separator.key-value.applescript
#                 ^^^^^ meta.mapping.value.applescript meta.string.applescript string.quoted.double.applescript
#                 ^ punctuation.definition.string.begin.applescript
#                     ^ punctuation.definition.string.end.applescript
#                      ^ meta.mapping.applescript punctuation.section.mapping.end.applescript

    foo
#   ^^^ variable.other.readwrite.applescript
    |bar|
#   ^^^^^ variable.other.readwrite.applescript
#   ^ punctuation.definition.variable.begin.applescript
#       ^ punctuation.definition.variable.end.applescript
    |ba||z|
#   ^^^^^^^ variable.other.readwrite.applescript
#   ^ punctuation.definition.variable.begin.applescript
#      ^^ constant.character.escape.applescript
#         ^ punctuation.definition.variable.end.applescript

    «event sysodlog»
#   ^^^^^^^^^^^^^^^^ constant.other.data.raw.applescript
#   ^ punctuation.definition.data.begin.applescript
#    ^^^^^ support.class.built-in.applescript
#                  ^ punctuation.definition.data.end.applescript
    《event sysodlog》
#   ^^^^^^^^^^^^^^^^ constant.other.data.raw.applescript
#   ^ punctuation.definition.data.begin.applescript
#    ^^^^^ support.class.built-in.applescript
#                  ^ punctuation.definition.data.end.applescript

print page 1
#^^^^ keyword.other.print.applescript
#          ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript

print document 2
#^^^^ keyword.other.print.applescript
#              ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript

print pages 1 thru 5 of document 2
#^^^^ keyword.other.print.applescript
#           ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#             ^^^^ keyword.operator.reference.applescript
#                  ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                    ^^ keyword.other.applescript
#                                ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript

tell application "Microsoft Word"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.generic.applescript
#^^^ keyword.control.tell.applescript
#    ^^^^^^^^^^^ support.class.built-in.applescript
#                ^^^^^^^^^^^^^^^^ string.quoted.double.applescript
#                ^ punctuation.definition.string.begin.applescript
#                               ^ punctuation.definition.string.end.applescript
  quit
#^^^^^ meta.block.tell.application.generic.applescript
# ^^^^ support.function.standard-suite.applescript
end tell
#^^^^^^^ meta.block.tell.application.generic.applescript keyword.control.tell.applescript


tell application "Microsoft Word" to quit
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.generic.applescript
#^^^ keyword.control.tell.applescript
#    ^^^^^^^^^^^ support.class.built-in.applescript
#                ^^^^^^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#                ^ punctuation.definition.string.begin.applescript
#                               ^ punctuation.definition.string.end.applescript
#                                 ^^ keyword.operator.reference.applescript

quit application "Microsoft Word"
#    ^^^^^^^^^^^ support.class.built-in.applescript
#                ^^^^^^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#                ^ punctuation.definition.string.begin.applescript
#                               ^ punctuation.definition.string.end.applescript

tell application "QuarkXPress"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.generic.applescript
#^^^ keyword.control.tell.applescript
#    ^^^^^^^^^^^ support.class.built-in.applescript
#                ^^^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#                ^ punctuation.definition.string.begin.applescript
#                            ^ punctuation.definition.string.end.applescript
  tell document 1
#^^^^^^^^^^^^^^^^ meta.block.tell.application.generic.applescript meta.block.tell.generic.applescript
# ^^^^ keyword.control.tell.applescript
#               ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
    tell page 2
#^^^^^^^^^^^^^^ meta.block.tell.application.generic.applescript meta.block.tell.generic.applescript meta.block.tell.generic.applescript
#   ^^^^ keyword.control.tell.applescript
#             ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
      tell text box 1
#^^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.generic.applescript meta.block.tell.generic.applescript meta.block.tell.generic.applescript meta.block.tell.generic.applescript
#     ^^^^ keyword.control.tell.applescript
#          ^^^^ support.class.built-in.applescript
#                   ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
        set word 5 to "Apple"
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.generic.applescript meta.block.tell.generic.applescript meta.block.tell.generic.applescript meta.block.tell.generic.applescript
#       ^^^ keyword.other.applescript
#           ^^^^ support.function.built-in.property.applescript
#                ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                  ^^ keyword.operator.reference.applescript
#                     ^^^^^^^ meta.string.applescript string.quoted.double.applescript
#                     ^ punctuation.definition.string.begin.applescript
#                           ^ punctuation.definition.string.end.applescript
      end tell
#^^^^^^^^^^^^^ meta.block.tell.application.generic.applescript meta.block.tell.generic.applescript meta.block.tell.generic.applescript meta.block.tell.generic.applescript
#     ^^^^^^^^ keyword.control.tell.applescript
    end tell
#^^^^^^^^^^^ meta.block.tell.application.generic.applescript meta.block.tell.generic.applescript meta.block.tell.generic.applescript
#   ^^^^^^^^ keyword.control.tell.applescript
  end tell
#^^^^^^^^^ meta.block.tell.application.generic.applescript meta.block.tell.generic.applescript
# ^^^^^^^^ keyword.control.tell.applescript
end tell
#^^^^^^^ meta.block.tell.application.generic.applescript keyword.control.tell.applescript

pixel 7 of row 3 of TIFF image "my bitmap"
#     ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#       ^^ keyword.other.applescript
#              ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                ^^ keyword.other.applescript
#                              ^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#                              ^ punctuation.definition.string.begin.applescript
#                                        ^ punctuation.definition.string.end.applescript
TIFF image "my bitmap"'s 3rd row's 7th pixel
#^^^ variable.other.readwrite.applescript
#          ^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#          ^ punctuation.definition.string.begin.applescript
#                    ^ punctuation.definition.string.end.applescript
#                        ^^^ keyword.operator.reference.applescript
#                            ^^^ variable.other.readwrite.applescript
#                                  ^^^ keyword.operator.reference.applescript
#                                      ^^^^^ variable.other.readwrite.applescript

display dialog "Hello, world!"
#^^^^^^^^^^^^^ support.function.built-in.command.applescript
#              ^^^^^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#              ^ punctuation.definition.string.begin.applescript
#                            ^ punctuation.definition.string.end.applescript
display alert "Hello, world!"
#^^^^^^^^^^^^ support.function.built-in.command.applescript
#             ^^^^^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#             ^ punctuation.definition.string.begin.applescript
#                           ^ punctuation.definition.string.end.applescript
say "Hello, world!"
#^^ support.function.built-in.command.applescript
#   ^^^^^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#   ^ punctuation.definition.string.begin.applescript
#                 ^ punctuation.definition.string.end.applescript

tell application "Finder"
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.finder.applescript
#^^^ keyword.control.tell.applescript
#    ^^^^^^^^^^^ support.class.built-in.applescript
#                ^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#                ^ punctuation.definition.string.begin.applescript
#                       ^ punctuation.definition.string.end.applescript
    -- Set variables
#^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.finder.applescript
#   ^^^^^^^^^^^^^^^^ comment.line.double-dash.applescript
#   ^^ punctuation.definition.comment.begin.applescript
    set the1 to text returned of (display dialog "1st" default answer "Number here" buttons {"Continue"} default button 1)
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.finder.applescript
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.applescript
#   ^^^ keyword.control.def.set.applescript
#       ^^^^ variable.other.readwrite.set.applescript
#            ^^ keyword.control.def.set.applescript
#               ^^^^ support.class.built-in.applescript
#                    ^^^^^^^^ variable.other.readwrite.applescript
#                             ^^ keyword.other.applescript
#                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.applescript
#                                ^ punctuation.section.group.begin.applescript
#                                 ^^^^^^^^^^^^^^ support.function.built-in.command.applescript
#                                                ^^^^^ meta.string.applescript string.quoted.double.applescript
#                                                ^ punctuation.definition.string.begin.applescript
#                                                    ^ punctuation.definition.string.end.applescript
#                                                      ^^^^^^^ variable.other.readwrite.applescript
#                                                                     ^^^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#                                                                     ^ punctuation.definition.string.begin.applescript
#                                                                                 ^ punctuation.definition.string.end.applescript
#                                                                                   ^^^^^^^ variable.other.readwrite.applescript
#                                                                                           ^^^^^^^^^^^^ meta.array.applescript
#                                                                                           ^ punctuation.section.array.begin.applescript
#                                                                                            ^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#                                                                                            ^ punctuation.definition.string.begin.applescript
#                                                                                                     ^ punctuation.definition.string.end.applescript
#                                                                                                      ^ punctuation.section.array.end.applescript
#                                                                                                        ^^^^^^^ variable.other.readwrite.applescript
#                                                                                                                ^^^^^^ variable.other.readwrite.applescript
#                                                                                                                       ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                                                                                                                        ^ punctuation.section.group.end.applescript
    set the2 to text returned of (display dialog "2nd" default answer "Number here" buttons {"Continue"} default button 1)
    try
        set the1 to the1 as integer
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.finder.applescript meta.block.try.applescript
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.applescript
#       ^^^ keyword.control.def.set.applescript
#           ^^^^ variable.other.readwrite.set.applescript
#                ^^ keyword.control.def.set.applescript
#                        ^^ keyword.operator.reference.applescript
#                           ^^^^^^^ support.class.built-in.applescript
        set the2 to the2 as integer
    on error
#^^^^^^^^^^^ meta.block.tell.application.finder.applescript meta.block.try.applescript meta.property.error.applescript
#   ^^^^^^^^ keyword.control.exception.on-error.applescript
        display dialog "You may only input numbers into a calculator." with title "ERROR" buttons {"OK"} default button 1
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.finder.applescript meta.block.try.applescript
#       ^^^^^^^^^^^^^^ support.function.built-in.command.applescript
#                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.applescript
#                      ^ punctuation.definition.string.begin.applescript
#                                                                    ^ punctuation.definition.string.end.applescript
#                                                                      ^^^^ keyword.other.applescript
#                                                                                 ^^^^^^^ string.quoted.double.applescript
#                                                                                 ^ punctuation.definition.string.begin.applescript
#                                                                                       ^ punctuation.definition.string.end.applescript
#                                                                                                 ^^^^^^ meta.array.applescript
#                                                                                                 ^ punctuation.section.array.begin.applescript
#                                                                                                  ^^^^ string.quoted.double.applescript
#                                                                                                  ^ punctuation.definition.string.begin.applescript
#                                                                                                     ^ punctuation.definition.string.end.applescript
#                                                                                                      ^ punctuation.section.array.end.applescript
        return
    end try

    -- Add?
    if the button returned of (display dialog "Add?" buttons {"No", "Yes"} default button 2) is "Yes" then
        set ans to (the1 + the2)
        display dialog ans with title "Answer" buttons {"OK"} default button 1
        say ans
    -- Subtract?
    else if the button returned of (display dialog "Subtract?" buttons {"No", "Yes"} default button 2) is "Yes" then
        set ans to (the1 - the2)
        display dialog ans with title "Answer" buttons {"OK"} default button 1
        say ans
    -- Multiply?
    else if the button returned of (display dialog "Multiply?" buttons {"No", "Yes"} default button 2) is "Yes" then
        set ans to (the1 * the2)
        display dialog ans with title "Answer" buttons {"OK"} default button 1
        say ans
    -- Divide?
    else if the button returned of (display dialog "Divide?" buttons {"No", "Yes"} default button 2) is "Yes" then
        set ans to (the1 / the2)
        display dialog ans with title "Answer" buttons {"OK"} default button 1
        say ans
    else
        delay 1
        say "You haven't selected a function. The operation has cancelled."
    end if

end tell

tell application "Finder"
    set passAns to "app123"
#^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.application.finder.applescript
#   ^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.applescript
#   ^^^ keyword.control.def.set.applescript
#       ^^^^^^^ variable.other.readwrite.set.applescript
#               ^^ keyword.control.def.set.applescript
#                  ^^^^^^^^ string.quoted.double.applescript
#                  ^ punctuation.definition.string.begin.applescript
#                         ^ punctuation.definition.string.end.applescript
    set userAns to "John"
    if the text returned of (display dialog "Username" default answer "") is userAns then
        display dialog "Correct" buttons {"Continue"} default button 1
        if the text returned of (display dialog "Username : John" & return & "Password" default answer "" buttons {"Continue"} default button 1 with hidden answer) is passAns then
            display dialog "Access granted" buttons {"OK"} default button 1
        else
            display dialog "Incorrect password" buttons {"OK"} default button 1
        end if
    else
        display dialog "Incorrect username" buttons {"OK"} default button 1
    end if
end tell

-- create an integer variable called variable1
set variable1 to 1
#^^^^^^^^^^^^^^^^^ meta.statement.set.applescript
#^^ keyword.control.def.set.applescript
#   ^^^^^^^^^ variable.other.readwrite.set.applescript
#             ^^ keyword.control.def.set.applescript
#                ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript

-- create a text variable called variable2
set variable2 to "Hello" 
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.applescript
#^^ keyword.control.def.set.applescript
#   ^^^^^^^^^ variable.other.readwrite.set.applescript
#             ^^ keyword.control.def.set.applescript
#                ^^^^^^^ string.quoted.double.applescript
#                ^ punctuation.definition.string.begin.applescript
#                      ^ punctuation.definition.string.end.applescript

-- create a list variable called variable3
copy {17, "doubleday"} to variable3 
#^^^ keyword.other.applescript
#    ^^^^^^^^^^^^^^^^^ meta.array.applescript
#    ^ punctuation.section.array.begin.applescript
#     ^^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#       ^ punctuation.separator.array.applescript
#         ^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#         ^ punctuation.definition.string.begin.applescript
#                   ^ punctuation.definition.string.end.applescript
#                    ^ punctuation.section.array.end.applescript
#                      ^^ keyword.operator.reference.applescript
#                         ^^^^^^^^^ variable.other.readwrite.applescript

-- copy the list items of variable3 into separate variables variable4 and variable5
set {variable4, variable5} to variable3 

-- set a variable to an instance of a script
set variable6 to script myScript

tell application "Finder"
    set x to my myHandler()
    -- or
    set x to myHandler() of me
end tell

on myHandler()
#^^^^^^^^^^^^^ meta.function.positional.applescript
#^ keyword.control.function.applescript
#  ^^^^^^^^^ entity.name.function.handler.applescript
#           ^^ punctuation.section.parameters.applescript
    --commands
end myHandler
#^^^^^^^^^^^^ meta.function.positional.applescript
#^^ keyword.control.function.applescript

-- Simple form
tell application "Safari" to activate
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.tell.generic.applescript
#^^^ keyword.control.tell.applescript
#    ^^^^^^^^^^^ support.class.built-in.applescript
#                ^^^^^^^^ string.quoted.double.applescript
#                ^ punctuation.definition.string.begin.applescript
#                       ^ punctuation.definition.string.end.applescript
#                         ^^ keyword.operator.reference.applescript
#                            ^^^^^^^^ support.function.built-in.command.applescript

-- Compound
tell application "MyApp"
     -- commands for app
end tell

script scriptName
#^^^^^^^^^^^^^^^^ meta.block.script.applescript
#^^^^^ keyword.control.script.applescript
#      ^^^^^^^^^^ entity.name.type.script-object.applescript
     -- commands and handlers specific to the script
end script

repeat
     -- commands to be repeated
end repeat

repeat 10 times
     -- commands to be repeated
end repeat

set x to 5
repeat while x > 0
#^^^^^^^^^^^^^^^^^ meta.block.repeat.while.applescript
#^^^^^ keyword.control.repeat.applescript
#      ^^^^^ keyword.control.while.applescript
#              ^ keyword.operator.comparison.applescript
#                ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
     set x to x - 1
#^^^^^^^^^^^^^^^^^^ meta.block.repeat.while.applescript
#    ^^^^^^^^^^^^^^ meta.statement.set.applescript
#    ^^^ keyword.control.def.set.applescript
#        ^ variable.other.readwrite.set.applescript
#          ^^ keyword.control.def.set.applescript
#               ^ keyword.operator.arithmetic.applescript
#                 ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
end repeat

set x to 5
repeat until x ≤ 0
#^^^^^^^^^^^^^^^^^ meta.block.repeat.until.applescript
#^^^^^ keyword.control.repeat.applescript
#      ^^^^^ keyword.control.until.applescript
#              ^ keyword.operator.comparison.applescript
#                ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
     set x to x - 1
end repeat

-- repeat the block 2000 times, i gets all values from 1 to 2000
repeat with i from 1 to 2000
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.repeat.with.applescript
#^^^^^ keyword.control.repeat.applescript
#      ^^^^ keyword.control.until.applescript
#           ^ variable.parameter.loop.applescript
#             ^^^^ keyword.control.modifier.range.applescript
#                  ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                    ^^ keyword.control.modifier.range.applescript
#                       ^^^^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
     -- commands to be repeated
end repeat

-- repeat the block 4 times, i gets values 100, 75, 50 and 25
repeat with i from 100 to 25 by -25
    -- commands to be repeated 
end repeat

set total to 0
repeat with loopVariable in {1, 2, 3, 4, 5}
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.repeat.with.applescript
#^^^^^ keyword.control.repeat.applescript
#      ^^^^ keyword.control.until.applescript
#           ^^^^^^^^^^^^ variable.parameter.loop.applescript
#                        ^^ keyword.control.modifier.list.applescript
#                           ^^^^^^^^^^^^^^^ meta.array.applescript
#                           ^ punctuation.section.array.begin.applescript
#                            ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                             ^ punctuation.separator.array.applescript
#                               ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                                ^ punctuation.separator.array.applescript
#                                  ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                                   ^ punctuation.separator.array.applescript
#                                     ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                                      ^ punctuation.separator.array.applescript
#                                        ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                                         ^ punctuation.section.array.end.applescript
    set total to total + loopVariable
end repeat

on myFunction(parameters...)
     -- subroutine commands 
end myFunction

on adding folder items to thisFolder after receiving theseItems
#^ keyword.other.applescript
#  ^^^^^^^^^^^^^^^^^^^^^^ support.function.standardadditions.folder-actions.applescript
#                                    ^^^^^ keyword.operator.reference.applescript
     -- commands to apply to the folder or items    
end adding folder items to

on rock around the clock
#^^^^^^^^^^^^^^^^^^^^^^^ meta.function.prepositional.applescript
#^ keyword.control.function.applescript
#  ^^^^ entity.name.function.handler.applescript
#       ^^^^^^ keyword.control.preposition.applescript
#              ^^^ keyword.other.applescript
#                  ^^^^^ variable.parameter.handler.applescript
    display dialog (clock as string)
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.prepositional.applescript
#   ^^^^^^^^^^^^^^ support.function.built-in.command.applescript
#                  ^^^^^^^^^^^^^^^^^ meta.group.applescript
#                  ^ punctuation.section.group.begin.applescript
#                   ^^^^^ variable.other.readwrite.applescript
#                         ^^ keyword.operator.reference.applescript
#                            ^^^^^^ support.class.built-in.applescript
#                                  ^ punctuation.section.group.end.applescript
end rock
-- called with:
rock around the current date
#    ^^^^^^ keyword.other.applescript
#           ^^^ keyword.other.applescript
#               ^^^^^^^ support.function.built-in.command.applescript
#                       ^^^^ support.function.built-in.command.applescript

to check for yourNumber from bottom thru top
    if bottom ≤ yourNumber and yourNumber ≤ top then
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.prepositional.applescript meta.block.if.applescript
#   ^^ keyword.control.if.applescript
#             ^ keyword.operator.comparison.applescript
#                          ^^^ keyword.operator.logical.applescript
#                                         ^ keyword.operator.comparison.applescript
#                                               ^^^^ keyword.control.then.applescript
        display dialog "Congratulations! You scored."
    end if
end check
--called with:
check for 8 from 7 thru 10
#     ^^^ keyword.other.applescript
#         ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#           ^^^^ keyword.operator.reference.applescript
#                ^ meta.number.integer.decimal.applescript constant.numeric.value.applescript
#                  ^^^^ keyword.operator.reference.applescript
#                       ^^ meta.number.integer.decimal.applescript constant.numeric.value.applescript

on open theItems
     repeat with thisItem in theItems
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.repeat.with.applescript
#    ^^^^^^ keyword.control.repeat.applescript
#           ^^^^ keyword.control.until.applescript
#                ^^^^^^^^ variable.parameter.loop.applescript
#                         ^^ keyword.control.modifier.list.applescript
         tell application "Finder" to update thisItem
     end repeat 
end open

on idle
     --code to execute when the script's execution has completed
  return 60 -- number of seconds to pause before executing idle handler again
end idle

on quit
     --commands to execute before the script quits
  continue quit -- required for the script to actually quit
end quit

--This is a line comment
#^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-dash.applescript
#^ punctuation.definition.comment.begin.applescript
# So is this! (in later versions)
#^^^^^^^^^^^^^^^^^^^^^^^ comment.line.number-sign.applescript
# <- punctuation.definition.comment.begin.applescript


(* This is a
#^^^^^^^^^^^ comment.block.applescript
#^ punctuation.definition.comment.begin.applescript
multiple
line
comment *)
#^^^^^^^^^ comment.block.applescript
#       ^^ punctuation.definition.comment.end.applescript

-- Dialog
set dialogReply to display dialog "Dialog Text"
    default answer "Text Answer"
    hidden answer false
    buttons {"Skip", "Okay", "Cancel"}
    default button "Okay"
    cancel button "Skip"
    with title "Dialog Window Title"
    with icon note
    giving up after 15

-- Choose from list
set chosenListItem to choose from list {"A", "B", "3"}
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.statement.set.applescript
#^^ keyword.control.def.set.applescript
#   ^^^^^^^^^^^^^^ variable.other.readwrite.set.applescript
#                  ^^ keyword.control.def.set.applescript
#                     ^^^^^^^^^^^^^^^^ support.function.built-in.command.applescript
#                                      ^^^^^^^^^^^^^^^ meta.array.applescript
#                                      ^ punctuation.section.array.begin.applescript
#                                       ^^^ string.quoted.double.applescript
#                                       ^ punctuation.definition.string.begin.applescript
#                                         ^ punctuation.definition.string.end.applescript
#                                          ^ punctuation.separator.array.applescript
#                                            ^^^ string.quoted.double.applescript
#                                            ^ punctuation.definition.string.begin.applescript
#                                              ^ punctuation.definition.string.end.applescript
#                                               ^ punctuation.separator.array.applescript
#                                                 ^^^ string.quoted.double.applescript
#                                                 ^ punctuation.definition.string.begin.applescript
#                                                   ^ punctuation.definition.string.end.applescript
#                                                    ^ punctuation.section.array.end.applescript
    with title "List Title"
#   ^^^^ keyword.other.applescript
#              ^^^^^^^^^^^^ string.quoted.double.applescript
#              ^ punctuation.definition.string.begin.applescript
#                         ^ punctuation.definition.string.end.applescript
    with prompt "Prompt Text"
    default items "B"
    OK button name "Looks Good!"
    cancel button name "Nope, try again"
    multiple selections allowed false
    with empty selection allowed

-- Alert
set resultAlertReply to display alert "Alert Text"
    as warning
    buttons {"Skip", "Okay", "Cancel"}
    default button 2
    cancel button 1
    giving up after 2

display alert "Hello, world!" buttons {"Rudely decline", "Happily accept"}
#^^^^^^^^^^^^ support.function.built-in.command.applescript
#             ^^^^^^^^^^^^^^^ meta.string.applescript string.quoted.double.applescript
#             ^ punctuation.definition.string.begin.applescript
#                           ^ punctuation.definition.string.end.applescript
#                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.array.applescript
#                                     ^ punctuation.section.array.begin.applescript
#                                      ^^^^^^^^^^^^^^^^ string.quoted.double.applescript
#                                      ^ punctuation.definition.string.begin.applescript
#                                                     ^ punctuation.definition.string.end.applescript
#                                                      ^ punctuation.separator.array.applescript
#                                                        ^^^^^^^^^^^^^^^^ string.quoted.double.applescript
#                                                        ^ punctuation.definition.string.begin.applescript
#                                                                       ^ punctuation.definition.string.end.applescript
#                                                                        ^ punctuation.section.array.end.applescript
set theAnswer to button returned of the result
if theAnswer is "Happily accept" then
    beep 5
else
    say "Piffle!"
end if
