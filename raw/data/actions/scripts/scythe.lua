function onUse(cid, item, frompos, item2, topos)
	storevalue = 9005
	exhausttime = 1

	if (exhaust(cid, storevalue, 1) > 0) then
		if item2.itemid == 2739 then 
			doTransformItem(item2.uid,2737)
			doCreateItem(2694,1,topos)
		else
			return 0
		end
	end
	
	doDecayItem(item2.uid)
	return 1
end