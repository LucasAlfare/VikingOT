local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                         npcHandler:onThink() end
-- OTServ event handling functions end

function creatureSayCallback(cid, type, msg)
    -- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
    if(npcHandler.focus ~= cid) then
        return false
    end
  
     if msgcontains(msg, 'tomato') and getPlayerItemCount(cid,2685) > 4 and doPlayerRemoveItem(cid,2685,5) == 1  then
selfSay('Oh! Thank you for giving back my food!')
selfSay('As reward I can teleport you to a forgotten place.. do you want to go there?')
talk_state = 1
else
selfSay('You dont have any tomato.')
end
if msgcontains(msg, 'yes') and talk_state == 1 then
selfSay('Good travel!')
		destpos = {x = 441, y = 482, z = 7}
	                doTeleportThing(cid, destpos)
end




        

    -- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())