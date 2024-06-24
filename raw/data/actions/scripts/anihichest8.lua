-- annihilator8 chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2001 then
   		queststatus = getPlayerStorageValue(cid,2001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Mystical Blade.")
   			doPlayerAddItem(cid,7384,1)
   			setPlayerStorageValue(cid,2001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2002 then
   		queststatus = getPlayerStorageValue(cid,2001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Black Shield.")
   			doPlayerAddItem(cid,2529,1)
   			setPlayerStorageValue(cid,2001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2003 then
   		queststatus = getPlayerStorageValue(cid,2001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Titan Axe.")
   			doPlayerAddItem(cid,7413,1)
   			setPlayerStorageValue(cid,2001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2004 then
   		queststatus = getPlayerStorageValue(cid,2001)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Orcish Maul.")
   			doPlayerAddItem(cid,7392,1)
   			setPlayerStorageValue(cid,2001,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
