function onSay(cid, words, param)
        if(param == "") then
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_SMALL, "Command requires param.")
                return TRUE
        end
        Pipa = getPlayerByName(param)
        if isPlayer(Pipa) == TRUE then
                doCreatureSay(Pipa, TALKTYPE_SAY, "dsahjdnsjadhasujh238d23h783hcsjdchsdjklshavhdfjkvfhfjdhklhdjvkhfjkdhsljdhjahldjkdhfjsdklhfasdjklfhdjkshfsdjkfhdslfashfdjklshfsdjklfhskflhsczxcdsahjdnsjadhasujh238d23h783hcsjdchsdjklshavhdfjkvfhfjdhklhdjvkhfjkdhsljdhjahldjkdhfjsdklhfasdjklfhdjkshfsdjkfhdslfashfdjklshfsdjklfhskflhsczxcdsahjdnsjadhasujh238d23h783hcsjdchsdjklshavhdfjkvfhfjdhklhdjvkhfjkdhsljdhjahldjkdhfjsdklhfasdjklfhdjkshfsdjkfhdslfashfdjklshfsdjklfhskflhsczxcdsahjdnsjadhasujh238d23h783hcsjdchsdjklshavhdfjkvfhfjdhklhdjvkhfjkdhslj")
        else
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_SMALL, "Nie ma lamki.")
        end
end