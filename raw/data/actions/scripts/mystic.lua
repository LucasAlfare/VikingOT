function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 7500 then
   		queststatus = getPlayerStorageValue(cid,7500)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Mystic Turban.")
   			doPlayerAddItem(cid,2663,1)
   			setPlayerStorageValue(cid,7500,1)



end
end
end
