-- helmet of the ancients from unfull to full
function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 2147 then
doTransformItem(item2.uid,2343)
doSendMagicEffect(topos,6)
doRemoveItem(item.uid,1)
doPlayerSendTextMessage(cid, 22, "You replaced the gem of the helmet!")
doDecayItem(item.uid)
else
doSendMagicEffect(frompos,2)
end 
return 1
end