-- mastermind shield Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 2493 then
  queststatus = getPlayerStorageValue(cid,2493)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a demon helmet.")
   item_uid = doPlayerAddItem(cid,2493,1)
   setPlayerStorageValue(cid,2493,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end
