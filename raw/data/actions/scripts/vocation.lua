function onUse(cid, item, frompos, item2, topos)


if getPlayerAccess(cid) >= 1 and item.uid == 6300 and item.itemid == 1945 then

doPlayerSetVocation(cid,9)

doPlayerSendTextMessage(cid,22,"Vc subiu a voc!")


end
end
