function onSay(cid, words, pos)

murobpos = {x=506, y=220, z=9, stackpos=1}
murob = getThingfromPos(murobpos)


if murob.itemid == 0 then

doCreateItem(3372,1,murobpos)
else
doPlayerSendCancel(cid,"Ja esta fexada.")

end
end

