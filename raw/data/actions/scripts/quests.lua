-- example of quest --

function onUse(cid, item, frompos, item2, topos)
	if item.uid == 1920 then
		queststatus = getPlayerStorageValue(cid,1000)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a key.")
			lib_key = doPlayerAddItem(cid,2090,1)
			doSetItemActionId(lib_key,191)
			setPlayerStorageValue(cid,1000,1)
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	elseif item.uid == 1930 then
		queststatus = getPlayerStorageValue(cid,1001)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a key.")
			room_key = doPlayerAddItem(cid,2090,1)
			doSetItemActionId(room_key,192)
			setPlayerStorageValue(cid,1001,1)
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	elseif item.uid == 1940 then
		queststatus = getPlayerStorageValue(cid,1002)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a key.")
			arm_key = doPlayerAddItem(cid,2090,1)
			doSetItemActionId(arm_key,193)
			setPlayerStorageValue(cid,1002,1)
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	elseif item.uid == 1950 then
		queststatus = getPlayerStorageValue(cid,1003)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a key.")
			prs_key = doPlayerAddItem(cid,2090,1)
			doSetItemActionId(prs_key,194)
			setPlayerStorageValue(cid,1003,1)
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	elseif item.uid == 2002 then
		queststatus = getPlayerStorageValue(cid,1000)
		if queststatus == 3 then
			doPlayerSendTextMessage(cid,22,"You have found the magic Lyre.")
			lyre_uid = doPlayerAddItem(cid,2071,1)
			doSetItemActionId(lyre_uid,5001)
			doSetItemSpecialDescription(lyre_uid, "the magic Lyre")
			setPlayerStorageValue(cid,1000,4)
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	elseif item.actionid == 5001 then
		queststatus = getPlayerStorageValue(cid,1000)
		if queststatus == 4 then
			doSendMagicEffect(frompos,21)
			createpos = getPlayerPosition(cid)
			doCreateItem(2148,5,createpos)
		else
			doPlayerSendCancel(cid,"Only some special people can use this lyre.")
		end
	else
		return 0
	end
	return 1
end
