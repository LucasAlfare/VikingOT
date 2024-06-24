function onUse(cid, item, frompos, item2, topos) 
sorte = math.random(1,4) 
pos = getPlayerPosition(cid) 

if item.itemid == 6558 then 
if sorte == 1 then 
doPlayerAddItem(cid,20010,7) 
doRemoveItem(item.uid,1) 

elseif sorte == 2 then 
doPlayerAddItem(cid,2006,7) 
doRemoveItem(item.uid,1) 

elseif sorte == 3 then 
doPlayerAddItem(cid,20010,10) 
doRemoveItem(item.uid,1) 

elseif sorte == 4 then 
doPlayerAddItem(cid,2006,10) 
doRemoveItem(item.uid,1) 

else 
end 
end 
return 1 
end