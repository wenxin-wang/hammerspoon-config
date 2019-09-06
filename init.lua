mod0 =  {"cmd"}
mod1 =  {"cmd", "shift"}
mod2 = {"cmd", "ctrl"}
mod3 = {"cmd", "alt"}

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
   mod1, 'm',
   function()
      hs.osascript.applescriptFromFile(emacs_frame_script)
end)

hs.hotkey.bind(
   mod1, 'f',
   function()
      hs.osascript.applescriptFromFile(chrome_frame_script)
end)

hs.hotkey.bind(
   mod1, 'w',
   function()
      hs.osascript.applescriptFromFile(ranger_frame_script)
end)

hs.hotkey.bind(
   mod2, 'r',
   function()
      hs.reload()
end)

-- hs.loadSpoon("HoldToQuit")
-- spoon.HoldToQuit:init()
-- spoon.HoldToQuit:start()

--- chunkwm

hs.hotkey.bind(
   mod0, 'h',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::window --focus west')
end)

hs.hotkey.bind(
   mod0, 'j',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::window --focus south')
end)

hs.hotkey.bind(
   mod0, 'k',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::window --focus north')
end)

hs.hotkey.bind(
   mod0, 'l',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::window --focus east')
end)

hs.hotkey.bind(
   mod1, 'h',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::window --warp west')
end)

hs.hotkey.bind(
   mod1, 'j',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::window --warp south')
end)

hs.hotkey.bind(
   mod1, 'k',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::window --warp north')
end)

hs.hotkey.bind(
   mod1, 'l',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::window --warp east')
end)

for i=1,9 do
   hs.hotkey.bind(
      mod1, tostring(i),
      function()
	 hs.execute('/usr/local/bin/chunkc tiling::window --send-to-desktop '
		       ..tostring(i))
   end)
end

hs.hotkey.bind(
   mod1, '0',
   function()
 hs.execute('/usr/local/bin/chunkc tiling::window --send-to-desktop 10')
end)

hs.hotkey.bind(
   mod3, 'i',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::monitor -f prev')
end)

hs.hotkey.bind(
   mod3, 'o',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::monitor -f next')
end)

hs.hotkey.bind(
   mod3, 'm',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::desktop --equalize')
end)

hs.hotkey.bind(
   mod3, 'e',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::desktop --layout bsp')
end)

hs.hotkey.bind(
   mod3, 'w',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::desktop --layout monocle')
end)

hs.hotkey.bind(
   mod3, 'f',
   function()
      hs.execute('/usr/local/bin/chunkc tiling::desktop --layout float')
end)
