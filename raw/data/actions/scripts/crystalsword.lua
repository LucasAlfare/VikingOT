function onUse(cid, item, frompos, item2, topos)
if item.uid == 7449 then
  queststatus = getPlayerStorageValue(cid,7449)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a crystal sword.")
   item_uid = doPlayerAddItem(cid,7449,1)
   setPlayerStorageValue(cid,7449,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

