function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end 
if item.itemid == 2316 then
if item2.itemid == 3128 then
if getPlayerMagLevel(cid) >= 10 then 
doSendMagicEffect(topos,10)
 doSummonCreature("Skeleton", topos)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
end

if item.itemid == 2316 then
if item2.itemid == 3129 then
if getPlayerMagLevel(cid) >= 10 then 
doSendMagicEffect(topos,10)
 doSummonCreature("Skeleton", topos)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
end

if item.itemid == 2316 then
if item2.itemid == 3058 then
if getPlayerMagLevel(cid) >= 10 then 
doSendMagicEffect(topos,10)
 doSummonCreature("Skeleton", topos)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
end

if item.itemid == 2316 then
if item2.itemid == 3065 then
if getPlayerMagLevel(cid) >= 10 then 
doSendMagicEffect(topos,10)
 doSummonCreature("Skeleton", topos)
if item.type > 1 then
  doChangeTypeItem(item.uid,item.type-1)
else
  doRemoveItem(item.uid,1)
end
end
end


else
 doSendMagicEffect(frompos,2)
 doPlayerSendCancel(cid,"You don't have the required magic level to use that rune.")
	end
return 1
end
end
end
end
