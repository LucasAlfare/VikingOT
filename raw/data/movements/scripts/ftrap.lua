function onStepIn(cid, item, pos)
	Damage1 = math.random(120,380)
	Damage2 = math.random(160,430)
	if item.actionid > 0 then
		Damage1 = item.actionid
		Damage2 = item.actionid
	end
	if isPlayer(cid) <= 2 then
		if getPlayerAccess(cid) < 3 then
		PlayerPos = getPlayerPosition(cid)
			if getPlayerHealth(cid) < Damage1 or getPlayerHealth(cid) < Damage2 then
				Damage1 = getPlayerHealth(cid)
				Damage2 = getPlayerHealth(cid)
			end
			if item.itemid == 1510 then
				doTransformItem(item.uid, 1511)
				doCreatureAddHealth(cid,-Damage1)
				doSendAnimatedText(PlayerPos, Damage1, 186)
			else
				doTransformItem(item.uid, 1513)
				doCreatureAddHealth(cid,-Damage2)
				doSendAnimatedText(PlayerPos, Damage2, 186)
			end
		end
	else
		if item.itemid == 1510 then
			doTransformItem(item.uid, 1511)
			doCreatureAddHealth(cid,-Damage1)
		else
			doTransformItem(item.uid, 1513)
			doCreatureAddHealth(cid,-Damage2)
		end
	end
 return 1
end

function onStepOut(cid, item, pos)
	doTransformItem(item.uid, item.itemid-1)
end