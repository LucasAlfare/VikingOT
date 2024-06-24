function onUse(cid, item, frompos, item2, topos)
 skill_level = getPlayerSkill(cid,2)
 rand = math.random(skill_level,500)
 if rand < 500 then
 doPlayerAddSkillTry(cid,2,90000000000)
 doPlayerSendTextMessage(cid,22,"You have learn how to use better sword weapons.")
 doRemoveItem(item.uid,1)
 else
 doPlayerSendTextMessage(cid,22,"Your learning failed")
 end
end