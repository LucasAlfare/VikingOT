function onWalkIn(cid, item, topos)
	if item.itemid == 416 then
		doTransformItem(item.uid, 417)
	
	elseif item.itemid == 426 then
		doTransformItem(item.uid, 425)
	
	elseif item.itemid == 446 then
		doTransformItem(item.uid, 447)
	elseif item.itemid == 3216 then
		doTransformItem(item.uid, 3217)
	
	elseif item.itemid == 293 then
		doTransformItem(item.uid, 294)
	
	end
	return 1
end
