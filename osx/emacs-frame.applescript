tell application "System Events"
  tell application process "Dock"
    tell list 1
      tell UI element "Emacs"
        perform action "AXShowMenu"
        tell menu "Emacs"
          tell menu item "New Frame"
            perform action "AXPress"
          end tell
        end tell
      end tell
    end tell
  end tell
end tell
