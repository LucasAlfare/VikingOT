function onUse(cid, item, frompos, item2, topos)
signpos = {x=frompos.x, y=frompos.y, z=frompos.z}
if signpos.x==350 and signpos.y==398 and signpos.z==7 then
doPlayerSendTextMessage(cid,22,"You read the sign. It says: Anihilator!")
elseif signpos.x==383 and signpos.y==394 and signpos.z==7 then
doPlayerSendTextMessage(cid,26,"You read the sign. It says: Depot!")
elseif signpos.x==384 and signpos.y==384 and signpos.z==7 then
doPlayerSendTextMessage(cid,25,"You read the sign. It says: Depot!")
elseif signpos.x==378 and signpos.y==382 and signpos.z==7 then
doPlayerSendTextMessage(cid,24,"You read the sign. It says: Depot!")
elseif signpos.x==321 and signpos.y==334 and signpos.z==8 then
doPlayerSendTextMessage(cid,22,"You read the sign. It says: Very Dangerous!!!If you wrong...You are dead")
elseif signpos.x==324 and signpos.y==334 and signpos.z==8 then
doPlayerSendTextMessage(cid,22,"You read the sign. It says: Very Dangerous!!!If you wrong...You are dead")
elseif signpos.x==324 and signpos.y==333 and signpos.z==8 then
doPlayerSendTextMessage(cid,26,"You read the sign. It says: This is the correct way!")
elseif signpos.x==321 and signpos.y==333 and signpos.z==8 then
doPlayerSendTextMessage(cid,24,"You read the sign. It says: This is the correct way!")
end
return 1
end