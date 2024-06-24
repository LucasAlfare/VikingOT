function onUse(cid, item, frompos, item2, topos)
	if item.uid == 1053 then
		queststatus = getPlayerStorageValue(cid, 1053)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, 22, "You have found a BOH.")
			doPlayerAddItem(cid, 2195, 1)
			setPlayerStorageValue(cid, 1053, 1)
		else
			doPlayerSendTextMessage(cid, 22, "The chest is empty.")
		end
	else
		return 0
	end
	return 1
end
