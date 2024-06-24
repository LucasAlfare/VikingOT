function onUse(cid, item, frompos, item2, topos)
if item.uid == 6522 then
  queststatus = getPlayerStorageValue(cid,6522)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found Vanir's food.")
   doPlayerSendTextMessage(cid,22,"If you want to give back just say 'tomato' to vanir.")
 coins_uid = doPlayerAddItem(cid,2685,5)

   setPlayerStorageValue(cid,6522,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end