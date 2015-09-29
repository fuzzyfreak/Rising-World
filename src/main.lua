function onEnable()
  create_database()
  create_cache()
    print("FUZZYPLUGLODED")
end

function onDisable()
  print("FUZZYPLUGUNLOADED!")
end

function onPCmd(event)
  local cmd = cmd[1]
  
  if cmd == "//hello" then
    event.player:sendTextMessage("[#ff0000]Hello World!")
  else
    event.player:sendTextMessage("[#ff0000]Error: No Hello!")
  end
end

addEvent("HelloWorldCommand", onPCmd)