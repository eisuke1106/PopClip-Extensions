-- new version of script for iTerm2 v2.9+
tell application id "com.googlecode.iterm2"
	activate
	my newTab()
	set _session to current session of current window
	tell _session
		set command to get the clipboard
		write text "{popclip text}"
	end tell
end tell

on newTab()
	tell application "System Events" to keystroke "t" using command down
end newTab
