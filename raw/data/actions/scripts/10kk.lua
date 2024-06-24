function onUse(cid, item, frompos, item2, topos)
if item.uid == 2161 then
  queststatus = getPlayerStorageValue(cid,2161)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found 1000 crystal coins.")
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
   setPlayerStorageValue(cid,2161,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end