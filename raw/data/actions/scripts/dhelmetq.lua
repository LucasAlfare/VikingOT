-- DemonHelmet Script [Made by Talaturen]

function onUse(cid, item, frompos, item2, topos)
leveruniqueid = 7041
rockposition = {x=447, y=70, z=15, stackpos=1}
getrock = getThingfromPos(rockposition)
playerposition = {x=rockposition.x, y=rockposition.y, z=rockposition.z, stackpos=253}
player = getThingfromPos(playerposition)
teleportgotoposition = {x=467, y=93, z=14}
teleportcreateposition = {x=449, y=69, z=15}

if player.itemid == 0 then
if item.uid == leveruniqueid and item.itemid == 1945 and getrock.itemid == 1304 then
doRemoveItem(getrock.uid,1)
doTransformItem(item.uid,item.itemid+1)
addTeleport(teleportcreateposition,teleportgotoposition)
elseif item.uid == leveruniqueid and item.itemid == 1946 and getrock.itemid == 0 then
doCreateItem(1304,1,rockposition)
doTransformItem(item.uid,item.itemid-1)
removeTeleport(teleportcreateposition)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
else
playerposition.x = rockposition.x+1
doTeleportThing(player.uid,playerposition)
doCreateItem(1304,1,rockposition)
doTransformItem(item.uid,item.itemid-1)
removeTeleport(teleportcreateposition)
end
return 1
end