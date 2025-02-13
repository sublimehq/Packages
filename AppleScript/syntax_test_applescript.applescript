# SYNTAX TEST "AppleScript.sublime-syntax"

print page 1
# 

print document 2

print pages 1 thru 5 of document 2

tell application "Microsoft Word"
  quit
end tell


tell application "Microsoft Word" to quit

quit application "Microsoft Word"

tell application "QuarkXPress"
  tell document 1
    tell page 2
      tell text box 1
        set word 5 to "Apple"
      end tell
    end tell
  end tell
end tell

pixel 7 of row 3 of TIFF image "my bitmap"
TIFF image "my bitmap"'s 3rd row's 7th pixel

display dialog "Hello, world!"
display alert "Hello, world!"
say "Hello, world!"

tell application "Finder"
    -- Set variables
    set the1 to text returned of (display dialog "1st" default answer "Number here" buttons {"Continue"} default button 1)
    set the2 to text returned of (display dialog "2nd" default answer "Number here" buttons {"Continue"} default button 1)
    try
        set the1 to the1 as integer
        set the2 to the2 as integer
    on error
        display dialog "You may only input numbers into a calculator." with title "ERROR" buttons {"OK"} default button 1
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

- create an integer variable called variable1
set variable1 to 1

-- create a text variable called variable2
set variable2 to "Hello" 

-- create a list variable called variable3
copy {17, "doubleday"} to variable3 

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
    --commands
end myHandler

-- Simple form
tell application "Safari" to activate

-- Compound
tell application "MyApp"
     -- commands for app
end tell

script scriptName
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
     set x to x - 1
end repeat

set x to 5
repeat until x ≤ 0
     set x to x - 1
end repeat

-- repeat the block 2000 times, i gets all values from 1 to 2000
repeat with i from 1 to 2000
     -- commands to be repeated
end repeat

-- repeat the block 4 times, i gets values 100, 75, 50 and 25
repeat with i from 100 to 25 by -25
    -- commands to be repeated 
end repeat

set total to 0
repeat with loopVariable in {1, 2, 3, 4, 5}
    set total to total + loopVariable
end repeat

on myFunction(parameters...)
     -- subroutine commands 
end myFunction

on adding folder items to thisFolder after receiving theseItems
     -- commands to apply to the folder or items    
end adding folder items to

on rock around the clock
    display dialog (clock as string)
end rock
-- called with:
rock around the current date

to check for yourNumber from bottom thru top
    if bottom ≤ yourNumber and yourNumber ≤ top then
        display dialog "Congratulations! You scored."
    end if
end check
--called with:
check for 8 from 7 thru 10

on open theItems
     repeat with thisItem in theItems
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
# So is this! (in later versions)

(* This is a
multiple
line
comment *)

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
    with title "List Title"
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
set theAnswer to button returned of the result
if theAnswer is "Happily accept" then
    beep 5
else
    say "Piffle!"
end if
