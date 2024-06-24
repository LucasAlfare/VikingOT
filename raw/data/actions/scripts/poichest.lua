-- poi chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2453 then
   		queststatus = getPlayerStorageValue(cid,5050)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Sprite Wand.")
   			doPlayerAddItem(cid,2453,1)
   			setPlayerStorageValue(cid,5050,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 6528 then
   		queststatus = getPlayerStorageValue(cid,5050)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found an Avenger Sword.")
   			doPlayerAddItem(cid,6528,1)
   			setPlayerStorageValue(cid,5050,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5803 then
   		queststatus = getPlayerStorageValue(cid,5050)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found an Arbalest.")
   			doPlayerAddItem(cid,5803,1)
   			setPlayerStorageValue(cid,5050,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
