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
		
			selfSay('Hello ' .. creatureGetName(cid) .. '! I can travel to Lost City, Central, Port Hope, Ank, Demona,. Pra onde vc quer ir ')
			focus = cid
			talk_start = os.clock()


 	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpa, ' .. creatureGetName(cid) .. 'falo com voce em 1 minuto.') 	

  	elseif focus == cid then
		talk_start = os.clock()



	if msgcontains(msg, 'lost city') then
		city = 'Lost City'
		x = 250
		y = 278
		z = 6
		price = 220
		talk_state = 1

	elseif msgcontains(msg, 'central') then
		city = 'Central'
		x = 697
		y = 637
		z = 7
		price = 100
		talk_state = 1

        elseif msgcontains(msg, 'demona') then
		city = 'Demona'
		x = 56
		y = 405
		z = 6
		price = 100
		talk_state = 1
        
        
	elseif msgcontains(msg, 'ank') then
		city = 'Ankrahmun'
		x = 620
		y = 1002
		z = 6
		price = 70
		talk_state = 1

	elseif msgcontains(msg, 'port hope') then
		city = 'Port Hope'
		x = 542
		y = 227
		z = 6
		price = 140
		talk_state = 1

        
         
            

                
         end



if talk_state == 1 then
	selfSay('Voce quer viajar para '.. city ..' por '.. price ..' gp?')
	talk_state = 2	

	elseif talk_state == 2 then
	if msgcontains(msg, 'yes') then
	
if isPremium(cid) then
		if doPlayerRemoveMoney(cid,price) == 1 then
		    selfSay('Lets Go!')
			destpos = {x = x, y = y, z = z}
	                doTeleportThing(cid, destpos)
	                doSendMagicEffect(destpos, 10)
			focus = 0
			talk_start = 0
			talk_state = 0

		else
			selfSay('Aff, voce nao tem dinheiro. Favelado?.')
		end
else
selfSay('Sorry, Soh premium pode viajar en mew barco.')
talk_state = 0		
end

	elseif msgcontains(msg, 'no') then
	selfSay('Ok.Quem sabe na proxima Vez.')
	talk_state = 0
	end

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Adeus, ' .. creatureGetName(cid) .. '!')
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
 			selfSay('Proximo Pls...')
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