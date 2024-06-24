local combat = createCombatObject()

local onTargetCreature = createCombatObject()


arr = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr2 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}


local area = createCombatArea(arr)
setCombatArea(combat, area)

local area2 = createCombatArea(arr2)
setCombatArea(onTargetCreature, area2)
----------------------------------------------------------------------------------------------------------


function spellCallback(param)
if param.count > 0 or math.random(0, 1) == 1 then
doSendMagicEffect(param.pos, 32)
doSendMagicEffect(param.pos, 22)
doSendMagicEffect(param.pos, 23)
doSendMagicEffect(param.pos, 24)
doAreaCombatHealth(param.cid, 256, param.pos, 25, -550, -550, 18)
end

if(param.count < 5) then
param.count = param.count + 1
addEvent(spellCallback, math.random(1000, 4000), param)
end
end

function onTargetTile(cid, pos)
local param = {}
param.cid = cid
param.pos = pos
param.count = 0
spellCallback(param)
end

setCombatCallback(combat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")





setCombatParam(onTargetCreature, COMBAT_PARAM_TYPE, 1)
setCombatParam(onTargetCreature, COMBAT_PARAM_EFFECT, 21)
setCombatFormula(onTargetCreature, COMBAT_FORMULA_LEVELMAGIC, -2.0, -300, -1.6, -300)
setCombatParam(onTargetCreature, COMBAT_PARAM_TARGETCASTERORTOPMOST, CONST_ME_EXPLOSIONAREA)




function onTargetCreature(cid, target)
doChallengeCreature(cid, target)
end


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end