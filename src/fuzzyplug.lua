function onEnable()
    print("FUZZYPLUGLODED")
end

function onDisable()
  print("FUZZYPLUGUNLOADED!")
end

function onPlayerCommand(event)
  local cmd = StringUtils:explode(event.command, " ")
  local cmnd = cmd[1]
  
  if cmnd == "/freak" then
    event.player:sendTextMessage("[#ff0000]Welcome to Freaks R Us!")
  else
    event.player:sendTextMessage("[#ff0000]Error: No Hello!")
  end
end

addEvent("PlayerCommand", onPlayerCommand)