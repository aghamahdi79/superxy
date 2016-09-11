do
-- Will leave the group if leave cmd sent
local function runs(msg, matches)
local bot_id = our_id 
local receiver = get_receiver(msg)
    if matches[1]:lower() == 'leave' and is_admin1(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
       leave_channel(receiver, ok_cb, false)
       end
end
 
return {
  patterns = {
    "^([Ll]eave)$",
  },
  run = runs
}
end
