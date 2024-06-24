local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                         npcHandler:onThink() end
-- OTServ event handling functions end

function creatureSayCallback(cid, type, msg)
    -- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
    if(npcHandler.focus ~= cid) then
        return false
    end

        if msgcontains(msg, 'iten') or msgcontains(msg, 'items') then
            selfSay('I sell magic level ring, blessed ring, berzerk ring, viking bolt, viking set, warlord sword, justice seeker, ruthless axe, headchopper, cranial basher, heavy mace, golden bow and earmuffs what do you want?')
        
            talk_state = 1
        

        elseif msgcontains(msg, 'magic level ring') or msgcontains(msg, 'ml ring') and talk_state == 1 then
            if getPlayerItemCount(cid,6527) >= 100 then
                 selfSay('Here you are.')
                if doPlayerRemoveItem(cid,6527,100) == 1 then
                
                    doPlayerAddItem(cid,2166,1)
               
                end
            else
                selfSay('Sorry, you do not have enough viking coins.')
            end


   elseif msgcontains(msg, 'blessed ring') then
            selfSay('Do you want to buy a Blessed Ring for 230 viking coins?')
        
            talk_state = 2
        

        elseif msgcontains(msg, 'yes') and talk_state == 2 then
            if getPlayerItemCount(cid,6527) >= 230 then
                if doPlayerRemoveItem(cid,6527,230) == 1 then
                 doPlayerAddItem(cid,2208,1)
               selfSay('Here you are.')
                end
            else
                selfSay('Sorry, you do not have enough viking coins.')
            end
          
          

elseif msgcontains(msg, 'berzerk ring') then
            selfSay('Do you want to buy a Berzerk ring for 100 viking coins?')
        
            talk_state = 3
        

        elseif msgcontains(msg, 'yes') and talk_state == 3 then
            if getPlayerItemCount(cid,6527) >= 100 then
                if doPlayerRemoveItem(cid,6527,100) == 1 then
                selfSay('Here you are.')
                    doPlayerAddItem(cid,6301,1)
             
                end
            else
               selfSay('Sorry, you do not have enough viking coins.')
            end


elseif msgcontains(msg, 'viking set') then
            selfSay('Do you want to buy a Viking Set for 80 viking coins?')
        
            talk_state = 5
    elseif msgcontains(msg, 'yes') and talk_state == 5 then
            if getPlayerItemCount(cid,6527) >= 80 then
                if doPlayerRemoveItem(cid,6527,80) == 1 then
                selfSay('Here you are.')
                doPlayerAddItem(cid,7462,1)
        doPlayerAddItem(cid,7463,1)
        doPlayerAddItem(cid,7464,1)
        doPlayerAddItem(cid,7457,1)
        doPlayerAddItem(cid,6391,1)
       end
      else
                selfSay('Sorry, you do not have enough viking coins.')
            end
      
elseif msgcontains(msg, 'ruthless axe') or msgcontains(msg, 'Ruthless Axe') then
talk_state = 6
            if getPlayerItemCount(cid,6527) >= 80 then
                if doPlayerRemoveItem(cid,6527,80) == 1 then
                selfSay('Here you are.')
               doPlayerAddItem(cid,6553,1) 
             
                end
            else
                selfSay('Sorry, you do not have enough viking coins.')
            end

elseif msgcontains(msg, 'warlord sword') or msgcontains(msg, 'Warlord Sword') then
talk_state = 15
            if getPlayerItemCount(cid,6527) >= 80 then
                if doPlayerRemoveItem(cid,6527,80) == 1 then
                selfSay('Here you are.')
               doPlayerAddItem(cid,2408,1) 
             
                end
            else
                selfSay('Sorry, you do not have enough viking coins.')
            end

elseif msgcontains(msg, 'heavy mace') then
talk_state = 7
            if getPlayerItemCount(cid,6527) >= 80 then
                if doPlayerRemoveItem(cid,6527,80) == 1 then
                selfSay('Here you are.')
               doPlayerAddItem(cid,2452,1) 
             
                end
            else
                selfSay('Sorry, you do not have enough viking coins.')
            end




elseif msgcontains(msg, 'viking bolt') or msgcontains(msg, 'bolt') then
			selfSay('Do you want to buy a Viking Bolt for 100 viking coins?')
			talk_state = 9

		end
	
			if msgcontains(msg, 'yes') and talk_state == 9 then
				if getPlayerItemCount(cid,6527) >= 100 then
                                if doPlayerRemoveItem(cid,6527,100) == 1 then
                                     selfSay('Here you are.')
                                doPlayerAddItem(cid,7363,1)
					
end
				else
					selfSay('Sorry, you do not have enough viking coins.')
				end
       
elseif msgcontains(msg, 'viking staff') or msgcontains(msg, 'staff') then
			selfSay('Do you want to buy a Viking Staff for 100 viking coins?')
			talk_state = 10

		end
	
			if msgcontains(msg, 'yes') and talk_state == 10 then
				if getPlayerItemCount(cid,6527) >= 100 then
                                if doPlayerRemoveItem(cid,6527,100) == 1 then
                                     selfSay('Here you are.')
                                doPlayerAddItem(cid,7429,1)
					
end
				else
					selfSay('Sorry, you do not have enough viking coins.')
				end

elseif msgcontains(msg, 'earmuffs') or msgcontains(msg, 'Earmuffs') then
			selfSay('Do you want to buy an earmuffs for 80 viking coins?')
			talk_state = 11

		end
	
			if msgcontains(msg, 'yes') and talk_state == 11 then
				if getPlayerItemCount(cid,6527) >= 80 then
                                if doPlayerRemoveItem(cid,6527,80) == 1 then
                                     selfSay('Here you are.')
                                doPlayerAddItem(cid,7459,1)
					
end
				else
					selfSay('Sorry, you do not have enough viking coins.')
				end

elseif msgcontains(msg, 'golden bow') or msgcontains(msg, 'Golden Bow') then
			selfSay('Do you want to buy a golden bow for 100 viking coins?')
			talk_state = 4

		end
	
			if msgcontains(msg, 'yes') and talk_state == 4 then
				if getPlayerItemCount(cid,6527) >= 100 then
                                if doPlayerRemoveItem(cid,6527,100) == 1 then
                                     selfSay('Here you are.')
                                doPlayerAddItem(cid,7438,1)
					
end
				else
					selfSay('Sorry, you do not have enough viking coins.')
				end

elseif msgcontains(msg, 'justice seeker') or msgcontains(msg, 'Justice Seeker') then
			selfSay('Do you want to buy a justice seeker for 200 viking coins?')
			talk_state = 12

		end
	
			if msgcontains(msg, 'yes') and talk_state == 12 then
				if getPlayerItemCount(cid,6527) >= 200 then
                                if doPlayerRemoveItem(cid,6527,200) == 1 then
                                     selfSay('Here you are.')
                                doPlayerAddItem(cid,7390,1)
					
end
				else
					selfSay('Sorry, you do not have enough viking coins.')
				end

elseif msgcontains(msg, 'headchopper') or msgcontains(msg, 'Headchopper') then
			selfSay('Do you want to buy a headchopper for 200 viking coins?')
			talk_state = 13

		end
	
			if msgcontains(msg, 'yes') and talk_state == 13 then
				if getPlayerItemCount(cid,6527) >= 200 then
                                if doPlayerRemoveItem(cid,6527,200) == 1 then
                                     selfSay('Here you are.')
                                doPlayerAddItem(cid,7380,1)
					
end
				else
					selfSay('Sorry, you do not have enough viking coins.')
				end
 elseif msgcontains(msg, 'cranial basher') or msgcontains(msg, 'Cranial Basher') then
			selfSay('Do you want to buy a cranial basher for 200 viking coins?')
			talk_state = 14

		end
	
			if msgcontains(msg, 'yes') and talk_state == 14 then
				if getPlayerItemCount(cid,6527) >= 200 then
                                if doPlayerRemoveItem(cid,6527,200) == 1 then
                                     selfSay('Here you are.')
                                doPlayerAddItem(cid,7415,1)
					
end
				else
					selfSay('Sorry, you do not have enough viking coins.')
				end
        elseif msgcontains(msg, 'no') and (talk_state >= 1 and talk_state <= 16) then
            selfSay('Ok than.')
            talk_state = 0
        end
  


        

    -- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())