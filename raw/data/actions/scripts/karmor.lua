-- horned helmet Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 2476 then
  queststatus = getPlayerStorageValue(cid,2476)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a knight armor.")
   item_uid = doPlayerAddItem(cid,2476,1)
   setPlayerStorageValue(cid,2476,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

