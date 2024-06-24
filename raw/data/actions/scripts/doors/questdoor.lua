local QUEST_DOOR_CLOSED_TO_OPEN = {1223, 1225, 1241, 1243, 1255, 1257, 3542, 3551, 5105, 5114, 5123, 5132, 5288, 5290, 5745, 5748, 6259, 6261, 6202, 6204}
--local QUEST_DOOR_OPENED_TO_CLOSE = {1224, 1226, 1242, 1244, 1256, 1258, 3543, 3552, 5106, 5115, 5124, 5133, 5289, 5291, 5746, 5749, 6260, 6262}
--local QUEST_DOOR_OPENED_TO_CLOSE_VERTICAL = {1224, 1242, 1256, 3543, 5106, 5124, 5289, 5746, 6260}
--local QUEST_DOOR_OPENED_TO_CLOSE_HORIZONTAL = {1226, 1244, 1258, 3552, 5115, 5133, 5291, 5749, 6262}
function onUse(cid, item, frompos, item2, topos) 
	playerpos = getPlayerPosition(cid)
	doorpos = {x=frompos.x, y=frompos.y, z=frompos.z, stackpos=253}
	storagevalue = getPlayerStorageValue(cid,item.actionid)
	if isInArray(QUEST_DOOR_CLOSED_TO_OPEN, item.itemid) == TRUE then -- first array
		if storagevalue == -1 and item.actionid >= 1 then
			if getPlayerAccess(cid) >= 5 then
				subfix = ' (Storage value: ' .. storagevalue .. ').'
			else
				subfix = ''
			end
			doPlayerSendTextMessage(cid, 22, 'The door seems to be sealed against unwanted intruders.' .. subfix)
		else
			doTransformItem(item.uid, item.itemid+1)
			if playerpos.y == doorpos.y+1 and playerpos.x == doorpos.x then
				doMoveCreature(cid, 0)
			elseif playerpos.x == doorpos.x-1 and playerpos.y == doorpos.y then
				doMoveCreature(cid, 1)
			elseif playerpos.y == doorpos.y-1 and playerpos.x == doorpos.x then
				doMoveCreature(cid, 2)
			elseif playerpos.y == doorpos.y and playerpos.x == doorpos.x+1 then
				doMoveCreature(cid, 3)
			elseif playerpos.x == doorpos.x+1 and playerpos.y == doorpos.y-1 then
				doMoveCreature(cid, 4)
			elseif playerpos.x == doorpos.x-1 and playerpos.y == doorpos.y-1 then
				doMoveCreature(cid, 5)
			elseif playerpos.x == doorpos.x+1 and playerpos.y == doorpos.y+1 then
				doMoveCreature(cid, 6)
			elseif playerpos.x == doorpos.x-1 and playerpos.y == doorpos.y+1 then
				doMoveCreature(cid, 7)
			end
			if getPlayerAccess(cid) >= 5 then
				subfix = ' (Storage value: ' .. storagevalue .. ').'
			else
				subfix = ''
			end
			doPlayerSendTextMessage(cid, 23, 'You may pass.' .. subfix)
		end
--	elseif isInArray(QUEST_DOOR_OPENED_TO_CLOSE, item.itemid) == TRUE then -- second array
--		if isInArray(QUEST_DOOR_OPENED_TO_CLOSE_VERTICAL, item.itemid) == TRUE then -- third array
--			doMoveCreature(cid, 1)
--			return 1
--		elseif isInArray(QUEST_DOOR_OPENED_TO_CLOSE_HORIZONTAL, item.itemid) == TRUE then -- fourth array
--			doMoveCreature(cid, 2)
--			return 1
--		end			
--		doTransformItem(item.uid, item.itemid-1)
	else
		return 0
	end
	return 1
end
