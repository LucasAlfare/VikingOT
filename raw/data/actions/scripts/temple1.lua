--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if getPlayerLevel(cid) >= 1 then
		newpos = {x=154, y=129, z=7}
		doPlayerSetMasterPos(cid, newpos)
		doPlayerSendTextMessage(cid,22,"Now your Temple is Tyrendria")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	else
		doPlayerSendTextMessage(cid,22,"Sorry, you are under lvl 1")
		return 0
	end
end