local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat1, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat1, COMBAT_FORMULA_SKILL , 0, 0, 0, 0)

local condition1 = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition1, CONDITION_PARAM_TICKS, 1000)
setConditionParam(condition1, CONDITION_PARAM_SPEED, -400)
setConditionFormula(condition1, -0.9, 0, -0.9, 0)
setCombatCondition(combat1, condition1)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat2, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat2, COMBAT_FORMULA_SKILL , 0, 0, 0, 0)

function onUseWeapon(cid, var)
	pos = getPlayerPosition(cid)
	clubskill = getPlayerSkill(cid,1)
	rand = math.random(1,100)
	if clubskill < 35 then
		if rand >= 80 then
			doSendAnimatedText(pos,"Stun!",math.random(1,255))
			doCombat(cid, combat1, var) 
		else
			doCombat(cid, combat2, var) 
		end
	elseif clubskill >= 35 and clubskill < 55 then
		if rand >= 60 then
			doSendAnimatedText(pos,"Stun!",math.random(1,255))
			doCombat(cid, combat1, var) 
		else
			doCombat(cid, combat2, var) 
		end
	elseif clubskill >= 55 and clubskill < 75 then
		if rand >= 40 then
			doSendAnimatedText(pos,"Stun!",math.random(1,255))
			doCombat(cid, combat1, var) 
		else
			doCombat(cid, combat2, var) 
		end
	elseif clubskill >= 75 then
		if rand >= 20 then
			doSendAnimatedText(pos,"Stun!",math.random(1,255))
			doCombat(cid, combat1, var) 
		else
			doCombat(cid, combat2, var) 
		end
	end
end