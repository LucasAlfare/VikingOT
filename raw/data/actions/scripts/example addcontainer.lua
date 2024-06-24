function onUse(cid, item, frompos, item2, topos)

	queststatus = getPlayerStorageValue(cid, 5006)
	if queststatus < 1 then
		container = doPlayerAddItem(cid, 1988, 1)
		container2 = doContainerAddItem(container, 2000, 1)
		doContainerAddItem(container2, 2006, 7) -- Mf
		doContainerAddItem(container, 2006, 7)
		doPlayerSendTextMessage(cid, 22, "You have found a backpack.")
		doPlayerSetStorageValue(cid, 5006, 1)
	else
		doPlayerSendTextMessage(cid, 22, "The chest is empty.")
	end
	return 1
end 