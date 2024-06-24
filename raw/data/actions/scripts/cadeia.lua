function onUse(cid, item, frompos, item2, topos)
	
if item.itemid == 1945 then

doPlayerRemoveMoney(cid,35000)
doTeleportThing(cid,{x=703, y=600, z=7})
doSendMagicEffect(topos,10)
else
doPlayerSendTextMessage(cid,22,"Para sair da cadeia vc deve pagar sua fianca de 30k.")

end
end





