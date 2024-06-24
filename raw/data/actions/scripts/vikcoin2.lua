function onUse(cid, item, frompos, item2, topos)
if item.uid == 1996 then
  queststatus = getPlayerStorageValue(cid,1996)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found 60 viking coins.")
   coins_uid = doPlayerAddItem(cid,6527,60)
   setPlayerStorageValue(cid,1996,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end