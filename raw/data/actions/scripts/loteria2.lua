function onUse(cid, item, frompos, item2, topos)



itempos = {x=682, y=597, z=7, stackpos=2}
itempos2 = {x=684, y=597, z=7, stackpos=2}

getitem = getThingfromPos(itempos)

sorte = math.random(1,4) 

if sorte == 1 then 

doRemoveItem(getitem.uid,1)
doSendMagicEffect(itempos,13)
doPlayerSendTextMessage(cid,22,"Que azar vc perdeu, quem sabe na proxima!")

elseif sorte == 2 then 

doRemoveItem(getitem.uid,1)
doSendMagicEffect(itempos,13)
doPlayerSendTextMessage(cid,22,"Que azar vc perdeu, quem sabe na proxima!")

elseif sorte == 3 then 

doRemoveItem(getitem.uid,1)
doSendMagicEffect(itempos,13)
doPlayerSendTextMessage(cid,22,"Que azar vc perdeu, quem sabe na proxima!")


elseif sorte == 4 then 

doCreateItem(getitem.itemid,1,itempos2)
doSendMagicEffect(itempos,13)
doPlayerSendTextMessage(cid,22,"QUE SORTE!! PARABENS SEU ITEM FOI DUPLICADO!")


else

end
end






