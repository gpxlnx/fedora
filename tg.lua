started = 0
our_id = 0
os = require("os")
now = os.time()
print("now is "..os.date("%m/%d/%Y %I:%M %p"))

function on_binlog_replay_end()
  started = 1
end

function on_get_difference_end()
end

function on_our_id(our_id)
  print("our id is "..our_id)
end

function on_user_update(user,what_changed)
  if user.print_name == "Mahsa" then
    print("Mahsa update:\n")
    for k,v in pairs(user) do
      print(k,v)
    end
    for k,v in pairs(what_changed) do
      print(k,v)
    end
  end
end

function on_chat_update(user,what_changed)
  --[[
  print(type(user))
  print(type(what_changed))
  for k,v in pairs(user) do
    print(k,v)
  end
  for k,v in pairs(what_changed) do
    print(k,v)
  end
  ]]--
end

function on_secret_chat_update(user,what_changed)
end

function ok_cb(extra, success, result)
end

function on_msg_receive(msg)
  --get_contact_list(ok_cb, false)
  --get_dialog_list(ok_cb, true)
  if started == 0 then
    return
  end
  if msg.out then
    return
  end
  local socket = require("socket")
  local host, port = "localhost", 11111
  local tcp = assert(socket.tcp())
  tcp:connect(host, port)

  if (msg.from.print_name == "notifications") then
    print("we got something boss.\n")
  end
  if (msg.from.print_name == "Mahsa") then
    print(msg.from.print_name)
    --tcp:send("Mahsa".."\0")
    tcp:send("Mahsa".."\n")
  end

  if (msg.text == 'hey') then
    if (msg.to.id == our_id) then
      send_msg (msg.from.print_name, 'you', ok_cb, false)
    else
      send_msg (msg.to.print_name, 'you', ok_cb, false)
    end
    return
  end
  --tcp:close()
  --safe_quit()
end

function send_msg_cb(cb_extra, success, result)
end

function postpone_cb(cb_extra, success, result)
end
