function onUse(cid, item, frompos, item2, topos)
if item.uid == 6122 then
  queststatus = getPlayerStorageValue(cid,6122)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found the spellbook of the school of magic.")
   doPlayerAddItem(cid,6120,1)

   setPlayerStorageValue(cid,6122,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end