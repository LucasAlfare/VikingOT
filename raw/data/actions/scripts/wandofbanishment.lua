-- Wand of Banishment by Alreth

function onUse(cid, item, frompos, item2, topos)
    if (getPlayerAccess(cid) > 0) then
        player = getPlayerName(item2.uid)
        if (player ~= nil and player ~= -1) then
            doSendMagicEffect(topos, 14)
            doPlayerSay(cid, "/ban "..player, 23)
            doPlayerSendTextMessage(cid, 16, "You have banned "..player..".")
            doPlayerSay(cid, "/B "..player.." has been banned.", 23)
            
        else
            doPlayerSendCancel(cid, "You have to aim on the player that you want to ban.")
        end
        return 1
    else
        return 0
    end
end
