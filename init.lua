mod0 =  {"cmd"}
mash0 = {"cmd", "ctrl"}
mash1 = {"cmd", "alt"}
app0 = {"cmd", "shift"}

emacs_frame_script =
   os.getenv("HOME").."/.hammerspoon/osx/emacs-frame.applescript"
iterm2_frame_script =
   os.getenv("HOME").."/.hammerspoon/osx/iterm2-frame.applescript"
chrome_frame_script =
   os.getenv("HOME").."/.hammerspoon/osx/chrome-frame.applescript"
ranger_frame_script =
   os.getenv("HOME").."/.hammerspoon/osx/ranger-frame.applescript"

hs.window.animationDuration = 0

hs.hotkey.bind(
   mod0, 'return',
   function()
      hs.osascript.applescriptFromFile(iterm2_frame_script)
end)

hs.hotkey.bind(
   app0, 'm',
   function()
      hs.osascript.applescriptFromFile(emacs_frame_script)
end)

hs.hotkey.bind(
   app0, 'f',
   function()
      hs.osascript.applescriptFromFile(chrome_frame_script)
end)

hs.hotkey.bind(
   app0, 'w',
   function()
      hs.osascript.applescriptFromFile(ranger_frame_script)
end)

hs.hotkey.bind(
   mash0, 'r',
   function()
      hs.reload()
end)
