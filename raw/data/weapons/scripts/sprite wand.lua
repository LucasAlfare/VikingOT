local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE,COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT,CONST_ME_ENERGY)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.3, -100, -0.3, -130)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end