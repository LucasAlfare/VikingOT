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
  queststatus = getPlayerStorageValue(cid,6120)
     if msgcontains(msg, 'join') and queststatus == -1 then
talk_state = 1   		
selfSay('Mnn.. Do you want to be a member of the School of Magic?')

end
if msgcontains(msg, 'join') and queststatus == 1 then
 		
selfSay('You are already a member')

end
if msgcontains(msg, 'yes') and talk_state == 1 and getPlayerLevel(cid) > 299 then
selfSay('Be welcome new member of our school of magic!')
setPlayerStorageValue(cid,6120,1)
end
if msgcontains(msg, 'yes') and talk_state == 1 and getPlayerLevel(cid) < 300 then
selfSay('You need level 300 to join to our school')
end


if msgcontains(msg, 'no') then
selfSay('ok than..')
		
end




        

    -- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())