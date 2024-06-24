local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 9)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2.5, -50, -2.5, 50)

local arr = {
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{0, 1, 0},
{0, 3, 0},
}

local area = createCombatArea(arr)

setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
