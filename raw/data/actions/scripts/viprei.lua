function onUse(cid, item, frompos, item2, topos)

access = getPlayeraccess(cid)
if item.uid == 8882 then
if access >= 1 then

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
doPlayerSendTextMessage(cid,22,'Fique na frente da porta.')
return 1
end

doTeleportThing(cid,pos)
doSendMagicEffect(topos,12)
else
doPlayerSendTextMessage(cid,22,'Vc precisa de uma conta VIP para passar.')
end
return 1
else
return 0
end
end