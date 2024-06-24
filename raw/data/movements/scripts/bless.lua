function onStepIn(cid, item, pos)

if getPlayerLevel(cid) >= 100 then
doTeleportThing(cid,{x=691, y=527, z=7})
else
doTeleportThing(cid,{x=691, y=529, z=7})
doPlayerSendTextMessage(cid,22,"You need level 100 to pass.")
       return 1
   end
end

	