local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_SKILL , 0, 0, 0, 0)

local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 1, 2000, -15)
addDamageCondition(condition, 1, 2000, -10)
addDamageCondition(condition, 1, 2000, -10)
addDamageCondition(condition, 1, 2000, -5)
addDamageCondition(condition, 1, 2000, -1)
setCombatCondition(combat, condition)

function onUseWeapon(cid, var)
    doCombat(cid, combat, var)
end  