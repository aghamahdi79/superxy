do
local function runs(msg, matches)
local x = 256554951

    if matches[1]:lower() == "add" and is_sudo(msg) then
       chat_add_user("channel#id"..msg.to.id, 'user#id'..x, ok_cb, false)
       --chat_add_user("chat#id"..msg.to.id, 'user#id'..bot_id2, ok_cb, false)
       return "Added"
    end
end
 
return {
  patterns = {
    "^([Aa]dd)$",
  },
  run = runs
}
end
