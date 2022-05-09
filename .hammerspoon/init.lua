local function switchToEN() 
  hs.keycodes.setLayout('ABC') 
end

local function includes(v, arr)
  for idx, value in ipairs(arr) do
    if value:lower() == v:lower() then
      return true
    end
  end

  return false
end

enApps = { "WebStorm", "iTerm2", "Spotlight", "GoLand", "code", "code - insiders" }

hs.window.filter.default:subscribe(
  hs.window.filter.windowFocused, 
  function(window, appName) 
    matched = includes(appName, enApps)
    -- print('app name is: ' .. appName)
    if matched then
      print('matched: ' .. window:title() .. ', app name is ' .. appName) 
      switchToEN()
    end
  end
)
