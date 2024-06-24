function onUse(cid, item, frompos, item2, topos)

doorpos = {x=frompos.x, y=frompos.y, z=frompos.z}
playerpos = getPlayerPosition(cid)

if item.itemid == 1225 or item.itemid == 1223 then
 doTransformItem(item.uid,item.itemid+1)
elseif doorpos.x == playerpos.x and doorpos.y == playerpos.y and doorpos.z == playerpos.z then
 if item.itemid == 1226 then
  playerpos.y=playerpos.y+1
  doTeleportThing(cid,playerpos)
 elseif item.itemid == 1224 then
  playerpos.x=playerpos.x+1
  doTeleportThing(cid,playerpos)
 end

 doTransformItem(item.uid,item.itemid-1)
else
 doTransformItem(item.uid,item.itemid-1)
end

return 1
end