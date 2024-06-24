function onUse(cid, item, frompos, item2, topos) 
if item.itemid == 3673 then
rand = math.random(20,50)
doPlayerAddHealth(cid,rand)  
doSendMagicEffect(topos,13)   
doPlayerSendTextMessage(cid,22,"The magical herb has healed you...")
doRemoveItem(item.uid,1)
end
return 1
end