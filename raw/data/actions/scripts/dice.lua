function onUse(cid, item, frompos, item2, topos)
	rand = math.random(5792, 5797)
	doSendMagicEffect(cid, frompos, 26)
	number = rand-5791
	name = getPlayerName(cid)
	doPlayerSay(cid, name ..' rolled a '.. number ..'.',16)
	doTransformItem(item.uid, rand)
	return 1
end