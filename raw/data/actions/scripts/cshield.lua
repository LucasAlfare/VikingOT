-- horned helmet Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 2519 then
  queststatus = getPlayerStorageValue(cid,2519)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Crown Shield.")
   item_uid = doPlayerAddItem(cid,2519,1)
   setPlayerStorageValue(cid,2519,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

