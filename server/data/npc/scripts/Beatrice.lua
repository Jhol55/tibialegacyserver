dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'watch'}, 					ID_watch, 6)
shopModule:addSellableItem({'rope'}, 					ID_rope, 15)
shopModule:addSellableItem({'scythe'}, 					ID_scythe, 12)
shopModule:addSellableItem({'pick'}, 					ID_pick, 15)
shopModule:addSellableItem({'shovel'}, 					ID_shovel, 8)
shopModule:addSellableItem({'mirror'}, 					ID_mirror, 10)
shopModule:addSellableItem({'rod'}, 					ID_fishingrod, 40, 'fishing rod')
shopModule:addSellableItem({'inkwell'}, 					ID_inkwell, 8)
shopModule:addSellableItem({'sickle'}, 					ID_sickle, 3)
shopModule:addSellableItem({'crowbar'}, 					ID_crowbar, 50)
shopModule:addSellableItem({'trap'}, 					ID_trap, 75, 'closed trap')
shopModule:addBuyableItem({'torch'}, 					ID_torch, 2)
shopModule:addBuyableItem({'bag'}, 					ID_bluebag, 5)
shopModule:addBuyableItem({'backpack'}, 					ID_bluebackpack, 20)
shopModule:addBuyableItem({'bucket'}, 					ID_bucket, 4, 0)
shopModule:addBuyableItem({'watch'}, 					ID_watch, 20)
shopModule:addBuyableItem({'rope'}, 					ID_rope, 50)
shopModule:addBuyableItem({'scythe'}, 					ID_scythe, 50)
shopModule:addBuyableItem({'pick'}, 					ID_pick, 50)
shopModule:addBuyableItem({'shovel'}, 					ID_shovel, 50)
shopModule:addBuyableItem({'rod'}, 					ID_fishingrod, 150, 'fishing rod')
shopModule:addBuyableItem({'crowbar'}, 					ID_crowbar, 260)
shopModule:addBuyableItem({'lamp'}, 					ID_lamp, 8)
shopModule:addBuyableItem({'candlestick'}, 					ID_candlestick, 2)
shopModule:addBuyableItem({'basket'}, 					ID_basket, 6)
shopModule:addBuyableItem({'trap'}, 					ID_trap, 280)
shopModule:addBuyableItem({'football'}, 					ID_football, 111)
shopModule:addBuyableItem({'worm'}, 					ID_worm, 1, 'worms')

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am called Beatrice."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My job is to sell all kind of useful equipment."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have seen him once. What a handsome man he is."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have seen him once. What a handsome man he is."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I supply them with some basic stuff."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I vaguely remember that name."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A myth like the screwdriver of Kurik or the endless vial of manafluid."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We are no longer in need to be supplied from there."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't like travelling much. I prefer to live in the safety of our city."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Though they rebelled against our king it's said that the city is very lovely."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's the best place to live at."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are always rumors about the dangers in the far north of Edron."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are always rumors about the dangers in the far north of Edron."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboard."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboard."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboard."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboard."})
keywordHandler:addKeyword({'equipment'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My inventory is large, just have a look at the blackboard."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's |TIME| right now."})

npcHandler:addModule(FocusModule:new())