function onUse(cid, item, frompos, item2, topos)
if item.uid == 8551 then
  queststatus = getPlayerStorageValue(cid,8551)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a golden helmet.")
   item_uid = doPlayerAddItem(cid,2471,1)
   setPlayerStorageValue(cid,8551,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

