function onUse(cid, item, frompos, item2, topos)
if item.uid == 6021 then
  queststatus = getPlayerStorageValue(cid,6021)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found 700 crystal coins and 25 viking coins!")
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
 coins_uid = doPlayerAddItem(cid,2160,100)
coins_uid = doPlayerAddItem(cid,6527,25)

   setPlayerStorageValue(cid,6021,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end