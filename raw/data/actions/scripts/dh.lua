function onUse(cid, item, frompos, item2, topos)
	if item.uid == 1500 then
		queststatus = getPlayerStorageValue(cid, 1500)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, 22, "You have found a Demon Helmet.")
			doPlayerAddItem(cid, 2493, 1)
			setPlayerStorageValue(cid, 1500, 1)
		else
			doPlayerSendTextMessage(cid, 22, "The chest is empty.")
		end
	else
		return 0
	end
	return 1
end
