
]<action itemid="2553" script="picking.lua" />

--Pickando pedras e tirando pedras by Rike-- 

function onUse(cid, item, frompos, item2, topos) 
pedrapos = {x=topos.x, y=topos.y, z=topos.z} 

if item.itemid == 1300 or 1301 or 1302 or 1303 then 

sorte = math.random(1,26) 

if sorte == 4 then 
doSendMagicEffect(pedrapos,3) 
doPlayerAddItem(cid,2150,1) 
doPlayerSendTextMessage(cid,22,"Wow, an amethyst!") 

elseif sorte == 8 then 

doSendMagicEffect(pedrapos,3) 
doPlayerAddItem(cid,2149,1) 
doPlayerSendTextMessage(cid,22,"Wow, an emerald!") 

elseif sorte == 12 then 

doSendMagicEffect(pedrapos,3) 
doPlayerAddItem(cid,2147,1) 
doPlayerSendTextMessage(cid,22,"Wow, a ruby!") 

elseif sorte == 16 then 

doSendMagicEffect(pedrapos,3) 
doPlayerAddItem(cid,2146,1) 
doPlayerSendTextMessage(cid,22,"Wow, a sapphire!") 

elseif sorte == 20 then 

doSendMagicEffect(pedrapos,3) 
doPlayerAddItem(cid,2145,1) 
doPlayerSendTextMessage(cid,22,"Wow, an diamond!") 

elseif sorte == 24 then 

doSummonCreature('Stone Golem',pedrapos) 

elseif sorte == 28 then 

doSummonCreature('Gargoyle',pedrapos) 

elseif sorte == 2 or 6 or 10 or 14 or 18 or 22 or 26 then 

doSendMagicEffect(pedrapos,3) 

end 
end 
return 1 
end