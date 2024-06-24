function onUse(cid, item, frompos, item2, topos)
	VERTICAL_CLOSED2 = {1209, 1231, 1249, 3544, 5107, 5125, 5140, 5143, 5281, 6192, 6249, 5735, 6192}
	VERTICAL_CLOSED_DOOR = {1210, 1219, 1232, 1237, 1250, 3545, 3547, 5108, 5110, 5126, 5128, 5141, 5144, 5282, 5284, 5515, 5748, 6193, 6198, 6250, 6255, 1539, 1634, 1638, 5736, 6193, 6198}
	VERTICAL_OPENED_DOOR = {1211, 1220, 1233, 1238, 1251, 3546, 3548, 5109, 5111, 5127, 5129, 5142, 5145, 5283, 5285, 5516, 5749, 6194, 6199, 6251, 6256, 1540, 1635, 1639, 5737, 6194, 6199}
	HORIZONTAL_CLOSED2 = {1212, 1234, 1252, 3535, 5098, 5116, 5134, 5137, 5278, 6195, 6252, 5732, 6195}
	HORIZONTAL_CLOSED_DOOR = {1213, 1221, 1235, 1239, 1253, 3536, 3538, 5099, 5101, 5117, 5119, 5135, 5138, 5279, 5286, 5517, 5745, 6196, 6200, 6253, 6257, 1541, 1636, 1640, 5733, 6196, 6200}
	HORIZONTAL_OPENED_DOOR = {1214, 1222, 1236, 1240, 1254, 3537, 3539, 5100, 5102, 5118, 5120, 5136, 5139, 5280, 5287, 5518, 5746, 6197, 6201, 6254, 6258, 1542, 1637, 1641, 5734, 6197, 6201}

	DoorPosition = {x=frompos.x, y=frompos.y, z=frompos.z, stackpos=253}
	PlayerPosition = getThingfromPos(DoorPosition)
	if item.actionid > 0 then
		doPlayerSendTextMessage(cid, 22, "It is locked.")
	else
		if isInArray(VERTICAL_CLOSED2, item.itemid) or isInArray(HORIZONTAL_CLOSED2, item.itemid) == 1 then
			doTransformItem(item.uid, item.itemid+2)
		end
		if isInArray(VERTICAL_CLOSED_DOOR, item.itemid) or isInArray(HORIZONTAL_CLOSED_DOOR, item.itemid) == 1 then
			doTransformItem(item.uid, item.itemid+1)
		end
	end

	if isInArray(VERTICAL_OPENED_DOOR, item.itemid) == 1 then
		if PlayerPosition.itemid > 0 then
			doMoveCreature(PlayerPosition.uid, 1)
		end
		doTransformItem(item.uid, item.itemid-1)
	end
	if isInArray(HORIZONTAL_OPENED_DOOR, item.itemid) == 1 then
		if PlayerPosition.itemid > 0 then
			doMoveCreature(PlayerPosition.uid, 2)
		end
		doTransformItem(item.uid, item.itemid-1)
	end
	return 1
end
