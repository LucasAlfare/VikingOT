local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, 2)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 33)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 4)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.6, -350, -2.6, -350)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end