on runCommand(theTerminal, theCommand)
	tell application "Ghostty"
		input text theCommand to theTerminal
		send key "enter" to theTerminal
	end tell
end runCommand

on newTabRunning(theWindow, theCommand)
	tell application "Ghostty"
		set newTab to new tab in theWindow
		set newTerm to focused terminal of newTab
	end tell

	my runCommand(newTerm, theCommand)
	return newTerm
end newTabRunning

tell application "Ghostty"
	activate
	set mainWindow to front window
	set termAssistant to focused terminal of selected tab of mainWindow
end tell

my runCommand(termAssistant, "z llm && claude")

tell application "Ghostty"
	set termAssistantSplit to split termAssistant direction right
end tell

my newTabRunning(mainWindow, "gh dash")
my newTabRunning(mainWindow, "monorepo")
