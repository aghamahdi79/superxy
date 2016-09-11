local function add_user(chat, user)
   local status = channel_add_user (channel, user, ok_cb, false)
   if not status then
   end
end
    local function runs(msg, matches)
           if matches[1] == 'chat_del_user' then
                local user = 'channel#id'..msg.to.id 
                local chat = 'channel#id'..msg.from.id
                add_user("channel#id"..msg.to.id, "user#id"..msg.action.user.id)
                --return "" -- You can put everything here for returing when someone is added !
    end
end

return {
    patterns = {
        "^!!tgservice (chat_del_user)$",
        },
    run = runs
}
