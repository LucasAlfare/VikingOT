function onUse(cid, item, frompos, item2, topos)
	if item.uid == 1010 then
		queststatus = getPlayerStorageValue(cid, 1005)
		if queststatus == -1 or queststatus == 0 then
			if getPlayerLevel(cid) >= 40 then
			doPlayerSendTextMessage(cid, 22, "You have found a knight armor.")
			doPlayerAddItem(cid, 2476, 1)
			setPlayerStorageValue(cid, 1010, 1)
			else
			doPlayerSendTextMessage(cid,22,"You need level 150 to open the Chest of Vocation.")
			end
		else
			doPlayerSendTextMessage(cid, 22, "The chest is empty.")
		end
	else
		return 0
	end
	return 1
end
