function onSay(cid, words, pos)
murob2pos = {x=3155, y=3396, z=7, stackpos=1}
murobpos = {x=3157, y=3396, z=7, stackpos=1}
murob = getThingfromPos(murobpos)
murob2 = getThingfromPos(murob2pos)

if murob.itemid == 1544 and murob2.itemid == 1544 then

doRemoveItem(murob.uid,1)
doRemoveItem(murob2.uid,1)
doPlayerSendTextMessage(cid,22,"Bless aberto")

else
doPlayerSendCancel(cid,"Ja esta aberta.")

end
end

