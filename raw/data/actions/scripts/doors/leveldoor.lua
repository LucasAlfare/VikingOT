local QUEST_DOOR_CLOSED_TO_OPEN = {1227, 1229, 1245, 1247, 1259, 1261, 3540, 3549, 5103, 5112, 5121, 5130, 5292, 5294, 6263, 6265, 6206, 6208}
--local QUEST_DOOR_OPENED_TO_CLOSE = {1228, 1230, 1246, 1248, 1260, 1262, 3541, 3550, 5104, 5113, 5122, 5131, 5293, 5295, 6264, 6266}
--local QUEST_DOOR_OPENED_TO_CLOSE_VERTICAL = {1228, 1246, 1260, 3541, 5104, 5122, 5293, 6264}
--local QUEST_DOOR_OPENED_TO_CLOSE_HORIZONTAL = {1230, 1248, 1262, 3550, 5113, 5131, 5295, 6266}
function onUse(cid, item, frompos, item2, topos) 
	playerpos = getPlayerPosition(cid)
	doorpos = {x=frompos.x, y=frompos.y, z=frompos.z, stackpos=253}
	doorlevel = item.actionid - 1000
	if isInArray(QUEST_DOOR_CLOSED_TO_OPEN, item.itemid) == TRUE then -- first array
		if getPlayerLevel(cid) >= doorlevel then
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
			doPlayerSendTextMessage(cid, 23, 'You have the required level, ' .. doorlevel .. '. You may pass.')
		else
			doPlayerSendTextMessage(cid, 22, 'Only the worthy may pass.')
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
