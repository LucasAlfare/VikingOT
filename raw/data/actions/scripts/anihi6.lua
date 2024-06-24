-- annihilator lever

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2000 and item.itemid == 1945 then
		player1pos = {x=119, y=496, z=11, stackpos=253}
		player1 = getThingfromPos(player1pos)

		player2pos = {x=118, y=496, z=11, stackpos=253}
		player2 = getThingfromPos(player2pos)

		player3pos = {x=117, y=496, z=11, stackpos=253}
		player3 = getThingfromPos(player3pos)

		player4pos = {x=116, y=496, z=11, stackpos=253}
		player4 = getThingfromPos(player4pos)
  
                player5pos = {x=115, y=496, z=11, stackpos=253}
		player5 = getThingfromPos(player5pos)

                player6pos = {x=114, y=496, z=11, stackpos=253}
		player6 = getThingfromPos(player6pos)

  demon1pos = {x=86, y=497, z=11}
  demon2pos = {x=84, y=497, z=11}
  demon3pos = {x=82, y=497, z=11}
  demon4pos = {x=86, y=501, z=11}
  demon5pos = {x=84, y=501, z=11}
  demon6pos = {x=82, y=501, z=11}
  demon7pos = {x=87, y=499, z=11}
  demon8pos = {x=88, y=499, z=11}


         


		if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and  player4.itemid > 0 and player5.itemid > 0 and player6.itemid > 0 then
			queststatus1 = getPlayerStorageValue(player1.uid,2000)
			queststatus2 = getPlayerStorageValue(player2.uid,2000)
			queststatus3 = getPlayerStorageValue(player3.uid,2000)
			queststatus4 = getPlayerStorageValue(player4.uid,2000)
                        queststatus5 = getPlayerStorageValue(player5.uid,2000)
                        queststatus6 = getPlayerStorageValue(player6.uid,2000)
                  

			if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 and queststatus5 == -1 and queststatus6 == -1 then
 nplayer1pos = {x=86, y=499, z=11}
 nplayer2pos = {x=85, y=499, z=11}
 nplayer3pos = {x=84, y=499, z=11}
 nplayer4pos = {x=83, y=499, z=11}
 nplayer5pos = {x=82, y=499, z=11}
 nplayer6pos = {x=81, y=499, z=11}
			

                                
 doSummonCreature("Orshabaal", demon1pos)
 doSummonCreature("Orshabaal", demon2pos)
 doSummonCreature("Orshabaal", demon3pos)
 doSummonCreature("Orshabaal", demon4pos)
 doSummonCreature("Orshabaal", demon5pos)
 doSummonCreature("Orshabaal", demon6pos)
 doSummonCreature("Infernatil", demon7pos)
 doSummonCreature("Infernatil", demon8pos)

                                
				
                                doSendMagicEffect(player1pos,2)
				doSendMagicEffect(player2pos,2)
				doSendMagicEffect(player3pos,2)
				doSendMagicEffect(player4pos,2)
                                doSendMagicEffect(player5pos,2)
                                doSendMagicEffect(player6pos,2)
                      

				doTeleportThing(player1.uid,nplayer1pos)
				doTeleportThing(player2.uid,nplayer2pos)
				doTeleportThing(player3.uid,nplayer3pos)
				doTeleportThing(player4.uid,nplayer4pos)
                                doTeleportThing(player5.uid,nplayer5pos)
				doTeleportThing(player6.uid,nplayer6pos)
			

				doSendMagicEffect(nplayer1pos,10)
				doSendMagicEffect(nplayer2pos,10)
				doSendMagicEffect(nplayer3pos,10)
				doSendMagicEffect(nplayer4pos,10)
                                doSendMagicEffect(nplayer5pos,10)
				doSendMagicEffect(nplayer6pos,10)
			
                                  
				doTransformItem(item.uid,item.itemid+1)
			else
				doPlayerSendCancel(cid,"Somebody in your team has already done this quest.")
			end
		else
			doPlayerSendCancel(cid,"You need six players for this quest.")
		end

	elseif item.uid == 2000 and item.itemid == 1946 then
		if getPlayerAccess(cid) >= 0 then
			doTransformItem(item.uid,item.itemid-1)
		else
			doPlayerSendCancel(cid,"Sorry, not possible.")
		end
	else
		return 0
	end

	return 1
end
