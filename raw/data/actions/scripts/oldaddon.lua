function onUse(cid, item, frompos, item2, topos)


if getPlayerAccess(cid) >= 1 and item.uid == 10001 and item.itemid == 1945 then


addon(cid, 1)
addon(cid, 2)

doPlayerSendTextMessage(cid,22,"Vc adquiriu todos addons!")
setPlayerStorageValue(cid,10001,1)
end
end
