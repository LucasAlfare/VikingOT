function onUse(cid, item, frompos, item2, topos)
	-- itemid means that is a creature
	if item2.itemid == 1786 then
		doRemoveItem(item.uid,1)
                doAddItem(cid,2689,1)
                end
	
	return 1
end