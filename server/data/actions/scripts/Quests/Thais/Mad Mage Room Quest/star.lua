function onUse(cid, item, frompos, item2, topos)
if item.uid == 10060 then
  queststatus = getPlayerStorageValue(cid,10060)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a star amulet.")
   doPlayerAddItem(cid,2131,1)
   setPlayerStorageValue(cid,10060,1)
  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return 0
end
return 1
end

