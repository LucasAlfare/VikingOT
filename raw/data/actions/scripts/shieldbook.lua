function onUse(cid, item, frompos, item2, topos)
 skill_level = getPlayerSkill(cid,5)
 rand = math.random(skill_level,160)
 if rand < 160 then
 doPlayerAddSkillTry(cid,5,9000000)
 doPlayerSendTextMessage(cid,22,"You have learn how to use Shields better.")
 doRemoveItem(item.uid,1)
 else
 doPlayerSendTextMessage(cid,22,"Your learning failed")
 end
end
