function onUse(cid, item, frompos, item2, topos)
if item.uid == 10002 then
  queststatus = getPlayerStorageValue(cid,10002)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Pharaoh Sword!")
   item_uid = doPlayerAddItem(cid,2446,1)
   setPlayerStorageValue(cid,10002,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end