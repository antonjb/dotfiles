on run argv
	set cmd to item 1 of argv
	tell application "Ghostty"
		set newSurface to new surface configuration
		set newTab to new tab in front window with configuration newSurface
		set newTerm to focused terminal of newTab
		input text cmd to newTerm
		send key "enter" to newTerm
	end tell
end run
