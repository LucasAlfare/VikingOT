function onUse(cid, item, frompos, item2, topos)


playername = getCreatureName(cid)

if item.uid == 1999 and item.itemid == 1945 then
setHouseOwner(154, playername)
doPlayerSendTextMessage(cid,22,"You are the new owner of the Bless Castle, prepare and try to defense the castle until the event ends!")


end
end