--God rune by Anstice
function onUse(cid, item, frompos, item2, topos)

if getPlayerAccess(cid) == 3 then


player1pos = {x=topos.x, y=topos.y, z=topos.z, stackpos=253}
player1 = getThingfromPos(player1pos)


if player1.itemid > 0 then
temple = {x=253, y=116, z=8}
doSendMagicEffect(topos,12)
doTeleportThing(player1.uid,temple)
doSendMagicEffect(temple,12)
doPlayerSendTextMessage(player1.uid,22,"Voce foi teleportado para o templo.")
return 0
else
doSendMagicEffect(frompos,2)
return 0
end
else
doPlayerSendTextMessage(cid,22,"Voce nao pode usar esta runa.")
return 0
end
end
"