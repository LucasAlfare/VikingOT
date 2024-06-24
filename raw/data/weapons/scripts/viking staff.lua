local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE,COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT,CONST_ME_FIRE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.4, -300, -2.5, -330)

function onUseWeapon(cid, var)
return doCombat(cid, combat, var)
end