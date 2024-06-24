-- GOLDEN NUGGETS GATHERING BY KILLAVUS
function onUse(cid, item, frompos, item2, topos)
if item.itemid == 4006 then
rand = math.random (1,40)
if rand <= 5 then
doPlayerAddItem(cid,2157,1)
doTransformItem(item.uid,4008)
end
elseif rand > 5 then
doTransformItem(item.uid,4008)
end
return 1
end