function onUse(cid, item, frompos, item2, topos)

cname = getPlayerName(uid)
gname = getPlayerGuildName(cname)
  					

if item.uid == 2005 then
cname = getPlayerName(cid)
if getPlayerGuildName(cname) == "Quem Traiasdsau Vai Paagar" then
pos = getPlayerPosition(cid)
if pos.y == 3397 then
topos = {x=3156, y=3395, z=7, stackpos=253}
elseif pos.y == 3395 then
topos = {x=3156, y=3397, z=7, stackpos=253}
else
return 0
end

doSendMagicEffect(pos,2)
doTeleportThing(cid,topos)
doSendMagicEffect(topos,12)
else
doPlayerSendTextMessage(cid,22,'You need to be a member of the guild owner of the bless castle to pass this door.')
end
return 1
end
end
