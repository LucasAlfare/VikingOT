function onUse(cid, item, frompos, item2, topos)
if item.uid == 8552 then
  queststatus = getPlayerStorageValue(cid,8552)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a golden boots.")
   item_uid = doPlayerAddItem(cid,2646,1)
   setPlayerStorageValue(cid,8552,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

