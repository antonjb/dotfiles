on runCommand(theTerminal, theCommand)
	tell application "Ghostty"
		input text theCommand to theTerminal
		send key "enter" to theTerminal
	end tell
end runCommand

on newTabRunning(theWindow, theCommand)
	tell application "Ghostty"
		set newSurface to new surface configuration
		set newTab to new tab in theWindow with configuration newSurface
		set newTerm to focused terminal of newTab
	end tell

	my runCommand(newTerm, theCommand)
	return newTerm
end newTabRunning

on run argv
	if (count of argv) is less than 1 then
		error "usage: ghostty-tuicr-pr.applescript <pr-number> [repo-path]"
	end if

	set prNumber to item 1 of argv
	set tuicrCommand to "tuicr pr " & prNumber

	if (count of argv) is greater than or equal to 2 then
		set repoPath to item 2 of argv
		if repoPath is not "" then
			set tuicrCommand to "cd " & quoted form of repoPath & " && " & tuicrCommand
		end if
	end if

	tell application "Ghostty"
		activate
		set mainWindow to front window
	end tell

	my newTabRunning(mainWindow, tuicrCommand)
end run
