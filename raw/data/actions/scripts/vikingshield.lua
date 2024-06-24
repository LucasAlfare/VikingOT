function onUse(cid, item, frompos, item2, topos)
if item.uid == 3222 then
  queststatus = getPlayerStorageValue(cid,3222)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Viking Shield.")
   item_uid = doPlayerAddItem(cid,2531,1)
   setPlayerStorageValue(cid,3222,1)

  else
   doPlayerSendTextMessage(cid,22,"it's empty.")
  end
else
  return 0
end
return 1
end

