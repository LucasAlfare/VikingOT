local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

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
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell crossbows (20gps), bows (10gps), bolts (15gps), pbolts (50gps), infernal (200gps), burst arrows(40gps), and spears (10gps).')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()     

		if msgcontains(msg, 'crossbow') then
			buy(cid,2455,1,20)
		elseif msgcontains(msg, 'bow') then 
			buy(cid,2456,1,10)
                elseif msgcontains(msg, 'infernal') then 
			buy(cid,6529,1,200)
		elseif msgcontains(msg, 'bolts') then
			buy(cid,2543,1,3)
		elseif msgcontains(msg, 'spears') then
			buy(cid,2389,1,1)
                elseif msgcontains(msg, 'pbolts') then
			buy(cid,2547,1,50)
                elseif msgcontains(msg, 'burst arrows') then
			buy(cid,2546,100,40)
		
                elseif msgcontains(msg, 'bye') and focus == cid and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
	end
end


function onCreatureChangeOutfit(creature)

end


function onThink()
  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Next Please...')
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
