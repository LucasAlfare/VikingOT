function onUse(cid, item, frompos, item2, topos)

mainpos = {x=201, y=260, z=7} -- temple respawn 1st city
desertpos = {x=362, y=237, z=7} -- temple respawn 2nd city
newpos = {x=550, y=347, z=5} -- temple respawn 3rd city
junglepos = {x=344, y=315, z=7} -- temple respawn 4th city
swamppos = {x=561, y=57, z=6} -- temple respawn 4th city
playerpos = getPlayerPosition(cid)

if item.uid == 2000 then
doSendMagicEffect(playerpos,12)
doPlayerSetMasterPos(cid,mainpos)
doTeleportThing(cid,mainpos)
doSendMagicEffect(mainpos,10)
doPlayerSendTextMessage(cid,22,"You are now a Citizen of Ricarten!")
end
if item.uid == 2001 then
doSendMagicEffect(playerpos,12)
doPlayerSetMasterPos(cid,desertpos)
doTeleportThing(cid,desertpos)
doSendMagicEffect(desertpos,10)
doPlayerSendTextMessage(cid,22,"You are now a Citizen of Navisko!")
end
if item.uid == 2002 then
doSendMagicEffect(playerpos,12)
doPlayerSetMasterPos(cid,newpos)
doPlayerSendTextMessage(cid,22,"You are now a Citizen of Pillai!")
doTeleportThing(cid,newpos)
doSendMagicEffect(newpos,10)
end
if item.uid == 2003 then
doSendMagicEffect(playerpos,12)
doPlayerSetMasterPos(cid,junglepos)
doPlayerSendTextMessage(cid,22,"You are now a Citizen of Ruinen Village!")
doTeleportThing(cid,junglepos)
doSendMagicEffect(junglepos,10)
end
return 1
end
