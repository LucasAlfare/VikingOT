function onUse(cid, item, frompos, item2, topos)

if getPlayerAccess(cid) >= 5 then
itempos = {x=topos.x, y=topos.y, z=topos.z, stackpos=1}
item = getThingfromPos(itempos)

doRemoveItem(item.uid,1)
doSendMagicEffect(itempos,2)
doPlayerSendTextMessage(cid,22,"Você removeu um Item.")

end
end