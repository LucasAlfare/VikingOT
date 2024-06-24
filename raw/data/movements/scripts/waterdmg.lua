function onStepIn(cid, item, pos)
if (isPlayer(cid)) == 1 then
queststatus = getPlayerStorageValue(cid,5462)
	if queststatus ~= 1 then
		doSendMagicEffect(pos,25)
		doSendAnimatedText(pos,50,17)
		doCreatureAddHealth(cid,-50)
		doPlayerSendTextMessage(cid,22,'You are drowning.')
	elseif queststatus == 1 then
		doSendMagicEffect(pos,25)
	end
else
end
end