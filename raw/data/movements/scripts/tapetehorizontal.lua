function addSled(params)
	local startpos = params.startpos
	local spawnDelay = params.spawnDelay
	
	local speed = 250 --The speed in miliseconds before the sled moves 1 tile
	
	local pos = params.pos
	local cid = params.cid
	
	-- Dont edit any of the following unless you know what your doing
	local groundpos = {x=pos.x, y=pos.y, z=pos.z, stackpos=0}
	local ground = getThingfromPos(groundpos)
		
	pos1 = {x=pos.x, y=pos.y, z=pos.z, stackpos=1}
	pos2 = {x=pos.x+1, y=pos.y, z=pos.z, stackpos=1}
	pos3 = {x=pos.x+2, y=pos.y, z=pos.z, stackpos=1}
	pos4 = {x=pos.x, y=pos.y+1, z=pos.z, stackpos=1}
        pos5 = {x=pos.x+1, y=pos.y+1, z=pos.z, stackpos=1}
        pos6 = {x=pos.x+2, y=pos.y+1, z=pos.z, stackpos=1}
	item1 = getThingfromPos(pos1)
	item2 = getThingfromPos(pos2)
	item3 = getThingfromPos(pos3)
	item4 = getThingfromPos(pos4)
        item5 = getThingfromPos(pos5)
        item6 = getThingfromPos(pos6)
	
	newpos = {x=pos.x+1, y=pos.y, z=pos.z}
	
	if ground.actionid == 9001 then
		spawnparams = {startpos = startpos, pos = pos}
		addEvent(spawnSled,spawnDelay*1000,spawnparams)
		setPlayerStorageValue(cid,9000,-1)
	else
		doRemoveItem(item1.uid,1)
		doRemoveItem(item2.uid,1)
		doRemoveItem(item3.uid,1)
		doRemoveItem(item4.uid,1)
                doRemoveItem(item5.uid,1)
                doRemoveItem(item6.uid,1)
		
		newpos1 = {x=newpos.x, y=newpos.y, z=newpos.z}
		newpos2 = {x=newpos.x+1, y=newpos.y, z=newpos.z}
		newpos3 = {x=newpos.x+2, y=newpos.y, z=newpos.z}
		newpos4 = {x=newpos.x, y=newpos.y+1, z=newpos.z}
                newpos5 = {x=newpos.x+1, y=newpos.y+1, z=newpos.z}
                newpos6 = {x=newpos.x+2, y=newpos.y+1, z=newpos.z}
		doCreateItem(1803,1,newpos1)
		doCreateItem(1804,1,newpos2)
		doCreateItem(1805,1,newpos3)
		doCreateItem(1806,1,newpos4)
                doCreateItem(1807,1,newpos5)
                doCreateItem(1808,1,newpos6)
		
		doTeleportThing(cid, newpos)
		
		newparams = {pos = newpos, cid = cid, startpos = startpos, spawnDelay = 10}
		addEvent(addSled,speed,newparams)
	end
end

function spawnSled(params)
	local startpos = params.startpos
	local pos = params.pos
	pos1 = {x=startpos.x, y=startpos.y, z=startpos.z}
	pos2 = {x=startpos.x+1, y=startpos.y, z=startpos.z}
	pos3 = {x=startpos.x+2, y=startpos.y, z=startpos.z}
	pos4 = {x=startpos.x, y=startpos.y+1, z=startpos.z}
        pos5 = {x=startpos.x+1, y=startpos.y+1, z=startpos.z}
        pos6 = {x=startpos.x+2, y=startpos.y+1, z=startpos.z}
	        doCreateItem(1803,1,pos1)
		doCreateItem(1804,1,pos2)
		doCreateItem(1805,1,pos3)
		doCreateItem(1806,1,pos4)
                doCreateItem(1807,1,pos5)
                doCreateItem(1808,1,pos6)
	
	pos1 = {x=pos.x, y=pos.y, z=pos.z, stackpos=1}
	pos2 = {x=pos.x+1, y=pos.y, z=pos.z, stackpos=1}
	pos3 = {x=pos.x+2, y=pos.y, z=pos.z, stackpos=1}
	pos4 = {x=pos.x, y=pos.y+1, z=pos.z, stackpos=1}
        pos5 = {x=pos.x+1, y=pos.y+1, z=pos.z, stackpos=1}
        pos6 = {x=pos.x+2, y=pos.y+1, z=pos.z, stackpos=1}
	item1 = getThingfromPos(pos1)
	item2 = getThingfromPos(pos2)
	item3 = getThingfromPos(pos3)
	item4 = getThingfromPos(pos4)
        item5 = getThingfromPos(pos5)
        item6 = getThingfromPos(pos6) 
	doRemoveItem(item1.uid,1)
	doRemoveItem(item2.uid,1)
	doRemoveItem(item3.uid,1)
	doRemoveItem(item4.uid,1)
        doRemoveItem(item5.uid,1)
        doRemoveItem(item6.uid,1) 
	
	ppos1 = {x=startpos.x, y=startpos.y, z=startpos.z, stackpos=253}
	ppos2 = {x=startpos.x+1, y=startpos.y, z=startpos.z, stackpos=253}
	ppos3 = {x=startpos.x+2, y=startpos.y, z=startpos.z, stackpos=253}
	ppos4 = {x=startpos.x, y=startpos.y+1, z=startpos.z, stackpos=253}
        ppos5 = {x=startpos.x+1, y=startpos.y+1, z=startpos.z, stackpos=253}
        ppos6 = {x=startpos.x+2, y=startpos.y+1, z=startpos.z, stackpos=253}
	player1 = getThingfromPos(ppos1)
	player2 = getThingfromPos(ppos2)
	player3 = getThingfromPos(ppos3)
	player4 = getThingfromPos(ppos4)
        player5 = getThingfromPos(ppos5)
        player6 = getThingfromPos(ppos6)
	
	nppos1 = {x=startpos.x, y=startpos.y, z=startpos.z}
	nppos2 = {x=startpos.x+1, y=startpos.y, z=startpos.z}
	nppos3 = {x=startpos.x+2, y=startpos.y, z=startpos.z}
	nppos4 = {x=startpos.x, y=startpos.y+1, z=startpos.z}
        nppos5 = {x=startpos.x+1, y=startpos.y+1, z=startpos.z} 
        nppos6 = {x=startpos.x+2, y=startpos.y+1, z=startpos.z}
	if player1.itemid > 0 then
		doTeleportThing(player1.uid, nppos1)
	end
	if player2.itemid > 0 then
		doTeleportThing(player2.uid, nppos2)
	end
	if player3.itemid > 0 then
		doTeleportThing(player3.uid, nppos3)
	end
	if player4.itemid > 0 then
		doTeleportThing(player4.uid, nppos4)
	end
        if player5.itemid > 0 then
		doTeleportThing(player5.uid, nppos5)
	end
        if player6.itemid > 0 then
		doTeleportThing(player6.uid, nppos6)
	end
end

function onStepIn(cid, item, pos)
	if isPlayer(cid) == 1 then
		isMoving = getPlayerStorageValue(cid,9000)
		if item.itemid == 1803 and isMoving == -1 then
                  
			params = {cid = cid, pos = pos, startpos = pos, spawnDelay = 10}
			addEvent(addSled, 100, params)
			setPlayerStorageValue(cid,9000,1)
		end
	end
end