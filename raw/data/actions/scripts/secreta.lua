function onUse(cid, item, frompos, item2, topos)

estatua = {x=topos.x, y=topos.y, z=topos.z}
direita = {x=663, y=473, z=8}
esquerda = {x=664, y=473, z=8}
name = getPlayerName(cid)


if item2.itemid == 5671 and estatua.x == 664 and estatua.y == 473 and estatua.z == 8 then
doTransformItem(item2.uid,428)
doCreateItem(5671,1,direita)
doPlayerSendTextMessage(cid,22,"You have been opened the chamber of secrets of the Horde.")
end

if item2.itemid == 5671 and estatua.x == 663 and estatua.y == 473 and estatua.z == 8 then
doTransformItem(item2.uid,966)
doCreateItem(5671,1,esquerda)
doPlayerSendTextMessage(cid,22,"You have closed the chamber of secrets.")
end

return 1
end