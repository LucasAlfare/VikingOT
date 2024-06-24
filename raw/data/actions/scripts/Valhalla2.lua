function onUse(cid, item, frompos, item2, topos)
if item.uid == 2501 then
  queststatus = getPlayerStorageValue(cid,2501)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Valhalla Ring.")
   item_uid = doPlayerAddItem(cid,2169,1)
   setPlayerStorageValue(cid,2501,1)

  else
   doPlayerSendTextMessage(cid,22,"it's empty.")
  end
else
  return 0
end
return 1
end

