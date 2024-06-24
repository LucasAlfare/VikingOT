local focus = 0
local talk_start = 0
local target = 0
local days = 0
function onThingMove(creature, thing, oldpos, oldstackpos)
end
 
function onCreatureAppear(creature)
end
 
function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('Good bye then.')
focus = 0
talk_start = 0
end
end
 
function onCreatureTurn(creature)
end
 
function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end
 
function onCreatureSay(cid, type, msg)
msg = string.lower(msg)
if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
selfSay('Hello ' .. creatureGetName(cid) .. '!')
focus = cid
talk_start = os.clock()
elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Sorry, ' .. cname .. '! Im Busy.')
 
elseif focus == cid then

if msgcontains(msg, 'heal') then
health = getPlayerHealth(cid)
if health < 65 then

ammount = 65 - health
doPlayerAddHealth(cid, ammount)
selfSay('Let me heal you.')
else 
selfSay('Sorry, you are not badly hurt')
end
end
if msgcontains(msg, 'bye') then

focus = 0
selfSay('GoodBye ' .. creatureGetName(cid) .. '!')
end

end
 
 
 
 
end
 
function onCreatureChangeOutfit(creature)
end
 
function onThink()
doNpcSetCreatureFocus(focus)
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Pfft.')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 5 then
selfSay('Good bye then.')
focus = 0
end
end
end