function onUse(cid, item, frompos, item2, topos)
templepos = getPlayerMasterPos(cid)
if item.itemid == 2300 and item.type > 0 then
doTeleportThing(cid,templepos)
doChangeTypeItem(item.uid,item.type-1)
else
doRemoveItem(item.uid,1)
end
return 1
end