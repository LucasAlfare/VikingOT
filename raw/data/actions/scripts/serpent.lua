-- horned helmet Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 2409 then
  queststatus = getPlayerStorageValue(cid,2409)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Serpent Sword.")
   item_uid = doPlayerAddItem(cid,2409,1)
   setPlayerStorageValue(cid,2409,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

