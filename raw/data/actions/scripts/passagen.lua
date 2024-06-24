function onUse(cid, item, frompos, item2, topos)

tilepos = {x=topos.x, y=topos.y, z=topos.z}


if item2.itemid == 0 then
return 0
end



if item2.itemid == 1444 and tilepos.x == 677 and tilepos.y == 608 and tilepos.z == 7 then

terminar = {x=685, y=611, z=7}

doSendMagicEffect(cid,2)
doTeleportThing(cid,terminar)
doSendMagicEffect(terminar,14)
end
return 1
end 