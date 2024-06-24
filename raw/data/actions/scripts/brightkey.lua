function onUse(cid, item, frompos, item2, topos)

itempos = {x=topos.x, y=topos.y, z=topos.z, stackpos=1}
item = getThingfromPos(itempos)

if item.itemid == 1219  and item.uid == 9902 then
doTransformItem(item.uid,item.itemid+1)
elseif item.itemid == 1220 then
doTransformItem(item.uid,item.itemid-1)

end
end