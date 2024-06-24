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

endfunction msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
		
			selfSay('Ola ' .. creatureGetName(cid) .. '! Eu posso te levar a Central, Dark Island, Edron, Ilha Vip Pra onde vc quer ir ')
			focus = cid
			talk_start = os.clock()


 	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpa, ' .. creatureGetName(cid) .. '! Eu falo com voce em 1 minuto.') 	

  	elseif focus == cid then
		talk_start = os.clock()

        if msgcontains(msg, 'central') then
		city = 'Central'
		x = 616
		y = 615
		z = 6
		price = 220
		talk_state = 1

        
        elseif msgcontains(msg, 'dark') then
		city = 'Dark Island'
		x = 911
		y = 877
		z = 6
		price = 100
		talk_state = 1

	
        elseif msgcontains(msg, 'vip') then
		city = 'Ilha Vip'
		x = 915
		y = 551
		z = 6
		price = 75
		talk_state = 1
         
         elseif msgcontains(msg, 'edron') then
		city = 'Edron'
		x = 418
		y = 561
		z = 6
		price = 270
		talk_state = 1
	end



if talk_state == 1 then
	selfSay('Vc quer viajar para '.. city ..' por '.. price ..' gp?')
	talk_state = 2	

	elseif talk_state == 2 then
	if msgcontains(msg, 'yes') then
	
if getPlayerAccess(cid) >= 1 then
		if doPlayerRemoveMoney(cid,price) == 1 then
		    selfSay('Bora!')
			destpos = {x = x, y = y, z = z}
	                doTeleportThing(cid, destpos)
	                doSendMagicEffect(destpos, 10)
			focus = 0
			talk_start = 0
			talk_state = 0

		else
			selfSay('AFF, voce nao tem dinheiro, POBRE!! .')
		end
else
selfSay('Desculpa, ' .. creatureGetName(cid) .. '! Soh players vip podem usar meu barco.')
talk_state = 0		
end

	elseif msgcontains(msg, 'no') then
	selfSay('Ok. Maybe another time.')
	talk_state = 0
	end

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Boa Viajem, ' .. creatureGetName(cid) .. '!')
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
 			selfSay('O demora proximo por favor...')
 		end
		focus = 0
 	end
	if focus ~= 0 then
		if getDistanceToCreature(focus) > 4 then
			selfSay('Good bye then.')
			focus = 0
		end
	end
end