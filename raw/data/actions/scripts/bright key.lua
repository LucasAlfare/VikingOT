function onUse(cid, item, frompos, item2, topos)
playerpos = getPlayerPosition(cid)


if item.uid == 9901 then
queststatus = getPlayerStorageValue(cid,9901)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found the Bright Key.")
coins_uid = doPlayerAddItem(cid,2091,1)
setPlayerStorageValue(cid,9901,1)

else
doPlayerSendTextMessage(cid,22,"Its empty.")
end
return 0
end
return 1
end