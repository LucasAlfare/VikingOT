function onUse(cid, item, frompos, item2, topos)
	
if getPlayerAccess(cid) >= 1 then

doTeleportThing(cid,{x=684, y=573, z=8})
doSendMagicEffect(topos,10)
else
doPlayerSendTextMessage(cid,22,"Somente contas vip podem passar.")
end

end





