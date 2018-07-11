started = 0
our_id = 0

function on_binlog_replay_end()
  started = 1
end

function on_get_difference_end()
end

function on_our_id(our_id)
end

function on_user_update(user,what_changed)
end

function on_chat_update(user,what_changed)
end

function on_secret_chat_update(user,what_changed)
end

function ok_cb(extra, success, result)
end


function on_msg_receive(msg)
  local socket = require("socket")
  local host, port = "localhost", "11111"
  local tcp = assert(socket.tcp())
  tcp:connect(host, port)
  get_contact_list(ok_cb, false)
  get_dialog_list(ok_cb, true)
  if started == 0 then
    return
  end
  if msg.out then
    return
  end

  if (msg.from.print_name == "mahsa") then
    print("mahsa")
  end
  if (msg.from.print_name == "Mahsa") then
    --print("Mahsa")
  end
  if (msg.from.print_name == "Mahsa") then
    print(msg.from.print_name)
    --tcp:send("Mahsa".."\0")
    tcp:send("Mahsa".."\n")
  else
    tcp:send("")
  end

  if (msg.text == 'fuck') then
    if (msg.to.id == our_id) then
      send_msg (msg.from.print_name, 'you', ok_cb, false)
    else
      send_msg (msg.to.print_name, 'you', ok_cb, false)
    end
    return
  end
  safe_quit()
  tcp:close()
end
