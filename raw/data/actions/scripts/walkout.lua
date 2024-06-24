function onWalkOut(cid, item, frompos)
	if item.itemid == 417 then
		doTransformItem(item.uid, 416)
	
	elseif item.itemid == 425 then
		doTransformItem(item.uid, 426)
	
	elseif item.itemid == 447 then
		doTransformItem(item.uid, 446)
	elseif item.itemid == 3217 then
		doTransformItem(item.uid, 3216)
	end
	return 1
end