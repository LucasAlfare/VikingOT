function onUse(cid, item, frompos, item2, topos)
	
        newnpos  = {x=451, y=568, z=7}

	if item.itemid == 2757 then
		doTeleportThing(cid,newnpos)
		doPlayerSendTextMessage(cid,22,"You are teleported to the city by the powers of the scroll!")
		doSendMagicEffect(newnpos,10)
		doRemoveItem(item.uid,2757)
	else
		return 0
	end
	
	return 1
end