function onStepIn(cid, item, pos)
uniqueid = 8001


novapos = {x=567, y=951, z=7}

if item.uid == 8001 then
doTeleportThing(cid,novapos)
doSendMagicEffect(novapos,10)
end



end