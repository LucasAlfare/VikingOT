function onUse(cid, item, frompos, item2, topos)
reqlvl = getPlayerLevel(cid)
reqvoc = getPlayerVocation(cid)
if item.uid == 5600 then
if (reqvoc == 3 or reqvoc == 4 or reqvoc == 7 or reqvoc == 8 or reqvoc == 11 or reqvoc == 12) and reqlvl >= 15 then
  pos = getPlayerPosition(cid)

  if pos.x == topos.x then
   if pos.y < topos.y then
    pos.y = topos.y + 1
   else
    pos.y = topos.y - 1
   end
  elseif pos.y == topos.y then
   if pos.x < topos.x then
    pos.x = topos.x + 1
   else
    pos.x = topos.x - 1
   end
  else
   doPlayerSendTextMessage(cid,22,'Stand in front of the door.')
   return 1
  end

  doTeleportThing(cid,pos)
  doSendMagicEffect(topos,12)
else
  doPlayerSendTextMessage(cid,22,'Only Knights and Paladins level 15+.')
end
return 1
else
return 0
end
end