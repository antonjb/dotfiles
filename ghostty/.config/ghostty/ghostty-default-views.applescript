tell application "Ghostty"
	activate

	set termAssistant to focused terminal of selected tab of front window
	input text "z llm" to termAssistant
	send key "enter" to termAssistant
	input text "claude" to termAssistant
	send key "enter" to termAssistant
	split termAssistant direction right

	set ghDashSurface to new surface configuration
	set tabDash to new tab in front window with configuration ghDashSurface
	set termDash to focused terminal of tabDash
	input text "gh dash" to termDash
	send key "enter" to termDash

    set workingSurface to new surface configuration
    set tabWorking to new tab in front window with configuration workingSurface
    set termWorking to focused terminal of tabWorking
    input text "monorepo" to termWorking
    send key "enter" to termWorking

end tell
