function onUse(cid, item, frompos, item2, topos)
if item.uid == 2162 then
  queststatus = getPlayerStorageValue(cid,2162)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found 2000 crystal coins.")
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
   setPlayerStorageValue(cid,2162,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end