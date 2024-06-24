function onStepIn(cid, item, pos)
uniqueid = 8000


novapos = {x=608, y=903, z=7}

if item.uid == 8000 then
doTeleportThing(cid,novapos)
doSendMagicEffect(novapos,10)
end



end