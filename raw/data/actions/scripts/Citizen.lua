-- Stones of Citizenship by Talaturen
function onUse(cid, item, frompos, item2, topos)
ricartenpos = {x=201, y=260, z=7} 	-- temple respawn 1st city
naviskopos = {x=362, y=237, z=7} 	-- temple respawn 2nd city
ruinenpos = {x=344, y=315, z=7}   	-- temple respawn 3rd city
pillaipos = {x=550, y=347, z=5} 	-- temple respawn 4th city
playerpos = getPlayerPosition(cid)

if item.uid == 2001 then				-- 1st city fountain uniqueid
	doSendMagicEffect(playerpos,12)
	doPlayerSetMasterPos(cid,ricartenpos)
	doPlayerSendTextMessage(cid,22,"You have been blessed and now you are a citizen of Ricarten.")
end

if item.uid == 2002 then				-- 2nd city fountain uniqueid
	doSendMagicEffect(playerpos,12)
	doPlayerSetMasterPos(cid,naviskopos)
	doPlayerSendTextMessage(cid,22,"You have been blessed and now you are a citizen of Navisko.")
end

if item.uid == 2003 then				-- 3rd city fountain uniqueid
	doSendMagicEffect(playerpos,12)
	doPlayerSetMasterPos(cid,ruinenpos)
	doPlayerSendTextMessage(cid,22,"You have been blessed and now you are a citizen of Ruinen Village.")
end

if item.uid == 2004 then				-- 4th city fountain uniqueid
	doSendMagicEffect(playerpos,12)
	doPlayerSetMasterPos(cid,pillaipos)
	doPlayerSendTextMessage(cid,22,"You have been blessed and now you are a citizen of Pillai.")
end

return 1
end