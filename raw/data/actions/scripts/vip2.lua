function onUse(cid, item, frompos, item2, topos)
	
if getPlayerAccess(cid) >= 1 then

doTeleportThing(cid,{x=584, y=731, z=7})
doSendMagicEffect(topos,10)
else
doPlayerSendTextMessage(cid,22,"Somente contas vip podem passar.")
end

end





