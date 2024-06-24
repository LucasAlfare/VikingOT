


-- BE Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 5898 then
  queststatus = getPlayerStorageValue(cid,5898)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a beholder eye.")
   item_uid = doPlayerAddItem(cid,5898,1)
   setPlayerStorageValue(cid,5898,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

