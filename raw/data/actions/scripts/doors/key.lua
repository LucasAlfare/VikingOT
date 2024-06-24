local DOOR1 = {1210, 1213, 1219, 1221, 1223, 1225, 1227, 1229, 1232, 1235, 1237, 1239, 1241, 1243, 1245, 1247, 1250, 1253, 1255, 1257, 1249, 1261, 5733, 5736, 6193, 6196}
local DOOR2 = {1209, 1212, 1231, 1234, 1249, 1252, 5732, 5735, 6192, 6195}
local match = 0
function onUse(cid, item, frompos, item2, topos)
    if item.actionid > 0 and item.actionid == item2.actionid then
        match = 1
    else
        match = 0
    end
    if isInArray(DOOR1, item2.itemid) == TRUE then
        if match == 1 then
			doTransformItem(item2.uid,item2.itemid+1)
		else
			doPlayerSendCancel(cid,"The key does not match.")
		end
    elseif isInArray(DOOR2, item2.itemid) == TRUE then
	    if match == 1 then
			doTransformItem(item2.uid,item2.itemid+2)
		else
			doPlayerSendCancel(cid,"The key does not match.")
		end
	else
		return 0
	end

	return 1
	
end
