-- Rune of Information by Nitrous
function onUse(cid, item, frompos, item2, topos)

storevalue = 7521 --- ai sera guardado o tempo de alerta
alerttime = 10 --- tempu de espera antes de usar novamente a rune para naum dar alerta nu outro char
playeraccess = getPlayerAccess(item2.uid)
name = getPlayerName(item2.uid)
name2 = getPlayerName(cid)
level = getPlayerLevel(item2.uid)
ml = getPlayerMagLevel(item2.uid)
fist = getPlayerSkill(item2.uid,0)
club = getPlayerSkill(item2.uid,1)
sword = getPlayerSkill(item2.uid,2)
axe = getPlayerSkill(item2.uid,3)
distance = getPlayerSkill(item2.uid,4)
shield = getPlayerSkill(item2.uid,5)
fish = getPlayerSkill(item2.uid,6)

if item2.itemid == cid then
 if playeraccess <= 2 then
   if (alert(cid, storevalue, alerttime) == 1) then
     doPlayerSendTextMessage(cid,4,"Name: "..name.."")
     doPlayerSendTextMessage(cid,4,"Level: "..level.."")
     doPlayerSendTextMessage(cid,4,"Magic Level: "..ml.."")
     doPlayerSendTextMessage(cid,4,"Fist: "..fist.."")
     doPlayerSendTextMessage(cid,4,"Club: "..club.."")
     doPlayerSendTextMessage(cid,4,"Sword: "..sword.."")
     doPlayerSendTextMessage(cid,4,"Axe: "..axe.."")
     doPlayerSendTextMessage(cid,4,"Distance: "..distance.."")
     doPlayerSendTextMessage(cid,4,"Shielding: "..shield.."")
     doPlayerSendTextMessage(cid,4,"Fishing: "..fish.."")
   else
     doPlayerSendTextMessage(cid,22,"Wait 10 secound to use this rune to second time.")
   end
 else
   doPlayerSendCancel(cid,"You can not use this rune on that player.")
 end
else
 doPlayerSendCancel(cid,"You can not use this rune there.")
end


return 1
end



function alert(cid, storevalue, alerttime)
   
   newAlert = os.time()
   oldAlert = getPlayerStorageValue(cid, storevalue)
   if (lastalert == nil or lastalert < 0) then
       lastalert = 0
   end
   if (alerttime == nil or alerttime < 0) then
       alerttime = 1
   end
   diffTime = os.difftime(newAlert, oldAlert)
   if (diffTime >= alerttime) then
       setPlayerStorageValue(cid, storevalue, newAlert) 
       return 1
   else
       return 0
   end
end