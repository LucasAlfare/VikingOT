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
  	local msg = string.lower(msg)

  	if msgcontains(msg, 'hi') and focus == 0 and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello ' .. creatureGetName(cid) .. '! I sell runes, wands and rods.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and focus ~= cid and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'runes') then
			selfSay('I sell hmms (20gps), uhs (20gps), gfbs (20gps), gebs (20gps) explosions (20gps), sds (20gps), and blank runes (5gps).')
		elseif msgcontains(msg, 'wands') then
			selfSay('I sell wand of inferno (15k), plague (5k), cosmic energy (10k), vortex (500gp) and dragonbreath (1k).')
		elseif msgcontains(msg, 'rods') then
			selfSay('I sell quagmire (10k), snakebite (500gp), tempest (15k), volcanic (5k) and moonlight rod (1k).')

		elseif msgcontains(msg, 'inferno') then
			buy(cid,2187,getCount(msg),15000)
		elseif msgcontains(msg, 'plague') then
			buy(cid,2188,getCount(msg),5000)
		elseif msgcontains(msg, 'cosmic energy') then
			buy(cid,2189,getCount(msg),10000)
		elseif msgcontains(msg, 'vortex') then
			buy(cid,2190,getCount(msg),500)
		elseif msgcontains(msg, 'dragonbreath') then
			buy(cid,2191,getCount(msg),1000)

		elseif msgcontains(msg, 'quagmire') then
			buy(cid,2181,getCount(msg),10000)
		elseif msgcontains(msg, 'snakebite') then
			buy(cid,2182,getCount(msg),500)
		elseif msgcontains(msg, 'tempest') then
			buy(cid,2183,getCount(msg),15000)
		elseif msgcontains(msg, 'volcanic') then
			buy(cid,2185,getCount(msg),5000)
		elseif msgcontains(msg, 'moonlight') then
			buy(cid,2186,getCount(msg),1000)

		elseif msgcontains(msg, 'hmm') then
			buy(cid,2311,getCount(msg),15)
		elseif msgcontains(msg, 'uh') then
			buy(cid,2273,getCount(msg),20)

		elseif msgcontains(msg, 'gfb') then
			buy(cid,2304,getCount(msg),20)
                elseif msgcontains(msg, 'geb') then
			buy(cid,2272,getCount(msg),15)
		elseif msgcontains(msg, 'explosion') then
			buy(cid,2313,getCount(msg),20)
                   elseif msgcontains(msg, 'bp mf') then 
                        buyContainer(cid,2000,2006,7,getCount(msg),3000) 
		elseif msgcontains(msg, 'sd') then
			buy(cid,2268,getCount(msg),30)

		elseif msgcontains(msg, 'blank') then
			buy(cid,2260,getCount(msg),5)
    elseif msgcontains(msg, 'bp mf') then 
                        buyContainer(cid,2000,2006,7,3000) 

		elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 4 then
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
