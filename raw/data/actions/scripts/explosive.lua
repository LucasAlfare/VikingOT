function onUse(cid, item, frompos, item2, topos)
 if item.itemid == 3456 then
        -- Explosive Wall
        doTransformItem(item.uid,351)
        doSendMagicEffect(topos,4)
    doPlayerAddHealth(cid,-150)
      else
         return 0
      end
   end