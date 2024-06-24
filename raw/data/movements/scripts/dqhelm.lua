function onDeEquip(cid, item, slot)

			doPlayerSendTextMessage(cid,22,'You may no longer dive underwater.')
			setPlayerStorageValue(cid,5462,-1)
end