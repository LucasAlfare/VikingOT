function onUse(cid, item, frompos, item2, topos)
 
 
-- annihilator
   	if item.uid == 5006 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Armor.")
   			doPlayerAddItem(cid,2494,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5007 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Sword of Valor.")
   			doPlayerAddItem(cid,2400,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5008 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Stonecutter's Axe.")
   			doPlayerAddItem(cid,2431,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5009 then
   		queststatus = getPlayerStorageValue(cid,5010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have a Thunder Hammer.")
   			doPlayerAddItem(cid,2421,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
--- behe
   	elseif item.uid == 5010 then
   		queststatus = getPlayerStorageValue(cid,5012)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Golden Armor.")
   			doPlayerAddItem(cid,2466,1)
   			setPlayerStorageValue(cid,5012,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5011 then
   		queststatus = getPlayerStorageValue(cid,5013)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Shield.")
   			doPlayerAddItem(cid,2520,1)
   			setPlayerStorageValue(cid,5013,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5012 then
   		queststatus = getPlayerStorageValue(cid,5014)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Skull Staff.")
   			doPlayerAddItem(cid,2436,1)
   			setPlayerStorageValue(cid,5014,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5014 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a MMS.")
   			doPlayerAddItem(cid,2514,1)
   			setPlayerStorageValue(cid,5015,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
--- Demon Quest
   	elseif item.uid == 5015 then
   		queststatus = getPlayerStorageValue(cid,5016)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Helmet.")
   			doPlayerAddItem(cid,2493,1)
   			setPlayerStorageValue(cid,5016,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
--hero quest?
   	elseif item.uid == 5016 then
   		queststatus = getPlayerStorageValue(cid,5017)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Crown legs.")
   			doPlayerAddItem(cid,2488,1)
   			setPlayerStorageValue(cid,5017,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end

   	elseif item.uid == 5017 then
   		queststatus = getPlayerStorageValue(cid,5018)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Serpent Sword.")
   			doPlayerAddItem(cid,2409,1)
   			setPlayerStorageValue(cid,5018,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5018 then
   		queststatus = getPlayerStorageValue(cid,5019)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Teddy Bear.")
   			doPlayerAddItem(cid,2112,1)
   			setPlayerStorageValue(cid,5019,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
---hydra please
   	elseif item.uid == 5019 then
   		queststatus = getPlayerStorageValue(cid,5020)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Giant Sword.")
   			doPlayerAddItem(cid,2393,1)
   			setPlayerStorageValue(cid,5020,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5020 then
   		queststatus = getPlayerStorageValue(cid,5021)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a DSM.")
   			doPlayerAddItem(cid,2492,1)
   			setPlayerStorageValue(cid,5021,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5021 then
   		queststatus = getPlayerStorageValue(cid,5022)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Helmet of The Ancients.")
   			doPlayerAddItem(cid,2343,1)
   			setPlayerStorageValue(cid,5022,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	end
   	return 1
   end
