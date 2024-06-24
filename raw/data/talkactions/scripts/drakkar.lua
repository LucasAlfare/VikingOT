function onSay(cid, words, pos)

murobpos = {x=506, y=220, z=9, stackpos=1}
murob = getThingfromPos(murobpos)


if murob.itemid == 3372 then

doRemoveItem(murob.uid,1)
doPlayerSendTextMessage(cid,22,"You are a loyal warrior, Hail to Drakkar!")

else
doPlayerSendCancel(cid,"Ja esta aberta.")

end
end

