function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end 

if item2.itemid == 2782 then
doTransformItem(item2.uid,2781)
doDecayItem(item2.uid)
else
return 0
end
return 1
end