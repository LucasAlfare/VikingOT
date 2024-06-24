function onWalkIn(cid, item, topos)

	if item.itemid == 446 then
		doTransformItem(item.uid, 447)
	end

	if item.itemid == 416 then
		doTransformItem(item.uid, 417)
	end

	if item.itemid == 426 then
		doTransformItem(item.uid, 425)
	end

	if item.itemid == 3216 then
		doTransformItem(item.uid, 3217)
	end

end

function onWalkOut(cid, item, frompos)

	if item.itemid == 447 then
		doTransformItem(item.uid, 446)
	end

	if item.itemid == 417 then
		doTransformItem(item.uid, 416)
	end

	if item.itemid == 425 then
		doTransformItem(item.uid, 426)
	end

	if item.itemid == 3217 then
		doTransformItem(item.uid, 3216)
	end

	return 1
end
