-- Script by Nottinghster
function onUse(cid, item, frompos, item2, topos)
if item.uid == 1019 then
  queststatus = getPlayerStorageValue(cid,1019)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   bag = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(bag, 2214, 1)
   doAddContainerItem(bag, 2201, 1)
   doAddContainerItem(bag, 2145, 7)
   setPlayerStorageValue(cid,1019,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return 0
end
return 1
end

