function onSay(cid, words, param)

playerpos = getPlayerPosition(cid)

doPlayerAddHealth(cid, 1000)
doSendMagicEffect(playerpos,12)


end

