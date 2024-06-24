function onUse(cid, item, frompos, item2, topos)
    -- Drawbridge script for zackery on request - by Alreth (v1.01) (beginning) --
    
    lever = 1945 -- Enter the itemid of your lever
    actid = 351 -- Enter the action id of the lever that controls the bridge
    bridgeid = 3139 -- Enter the itemid of the bridge
    nobridgeid = 4608 -- Enter the itemid of the water
    object = 3510 -- Enter the object id of the bridge (when up)
    topobject = 3512 -- Enter the object id of the top of the bridge (when up)
    teleportto = {x = 742, y=585, z=7} -- Position players on bridge are teleported to
    
    if (item.itemid == lever and item.actionid == actid) then
    -- Bridge is down now, take it up
        bridgeid = nobridgeid
        bridgepos = {x=740, y=579, z=7, stackpos=0}
        while (bridgepos.x <= 100) do
            while (bridgepos.y <= 84) do
                bridgepos.stackpos = 0
                bridgething = getThingfromPos(bridgepos)
                doTransformItem(bridgething.uid, bridgeid)
                
                bridgepos.stackpos = 255
                checkthing = getThingfromPos(bridgepos)
                falloff = 0
                while (checkthing.itemid == 1 or blah == 10) do
                    teleportto.x = getPlayerPosition(checkthing.uid).x
                    doTeleportThing(checkthing.uid, teleportto)
                    checkthing = getThingfromPos(bridgepos)
                    falloff = falloff + 1
                end
                bridgepos.y = bridgepos.y+1
            end
            bridgepos.x = bridgepos.x+1
            bridgepos.y = 579
        end
        
        if (falloff == 1) then
            ppl = "person"
        else
            ppl = "people"
        end
        doPlayerSendTextMessage(cid, 20, falloff.." "..ppl.." fell off the drawbridge.")
        
        wallbridge = {x=740, y=584, z=7, stackpos=1}
        while (wallbridge.z >= 5) do
            while (wallbridge.x <= 100) do
                wallthing = getThingfromPos(wallbridge)
                if (wallthing.itemid ~= object) then
                    doCreateItem(object, 1, wallbridge)
                end
                wallbridge.x = wallbridge.x+1
            end
            wallbridge.z = wallbridge.z-1
            wallbridge.x = 97
        end
        while (wallbridge.x <= 100) do
            wallthing = getThingfromPos(wallbridge)
            if (wallthing.itemid ~= topobject) then
                doCreateItem(topobject, 1, wallbridge)
            end
            wallbridge.x = wallbridge.x+1
        end
        doTransformItem(item.uid, item.itemid+1)
        
    elseif (item.itemid == lever+1 and item.actionid == actid) then
    -- Bridge is up now, bring it down
        bridgeid = bridgeid
        bridgepos = {x=740, y=579, z=7, stackpos=0}
        while (bridgepos.x <= 100) do
            while (bridgepos.y <= 584) do
                bridgepos.stackpos = 0
                bridgething = getThingfromPos(bridgepos)
                doTransformItem(bridgething.uid, bridgeid)
                bridgepos.y = bridgepos.y+1
            end
            bridgepos.x = bridgepos.x+1
            bridgepos.y = 579
        end
        
        wallbridge = {x=740, y=584, z=7, stackpos=1}
        while (wallbridge.z >= 4) do
            while (wallbridge.x <= 100) do
                wallthing = getThingfromPos(wallbridge)
                if (wallthing.itemid == object or wallthing.itemid == topobject) then
                    doRemoveItem(wallthing.uid, wallthing.type)
                end
                wallbridge.x = wallbridge.x+1
            end
            wallbridge.z = wallbridge.z-1
            wallbridge.x = 740
        end
        doTransformItem(item.uid, item.itemid-1)
        
        -- bugfix (drawbridge looks like still being up)--
        playerpos = getPlayerPosition(cid)
        playerpos.x = playerpos.x+1
        doTeleportThing(cid, playerpos)
        playerpos.x = playerpos.x-1
        doTeleportThing(cid, playerpos)
        -- bugfix end --
    end
    return 1
    
    -- Drawbridge script (end) --
end