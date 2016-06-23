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

shopModule:addSellableItem({'mace'}, 					ID_mace, 23)
shopModule:addSellableItem({'short sword'}, 					ID_shortsword, 8)
shopModule:addSellableItem({'dagger'}, 					ID_dagger, 1)
shopModule:addSellableItem({'carlin sword'}, 					ID_carlinsword, 118)
shopModule:addSellableItem({'club'}, 					ID_club, 1)
shopModule:addSellableItem({'spear'}, 					ID_spear, 1)
shopModule:addSellableItem({'rapier'}, 					ID_rapier, 3)
shopModule:addSellableItem({'sabre'}, 					ID_sabre, 5)
shopModule:addSellableItem({'battle axe'}, 					ID_battleaxe, 75)
shopModule:addSellableItem({'battle hammer'}, 					ID_battlehammer, 50)
shopModule:addSellableItem({'morning star'}, 					ID_morningstar, 100)
shopModule:addSellableItem({'two handed sword'}, 					ID_twohandedsword, 190)
shopModule:addSellableItem({'halberd'}, 					ID_halberd, 310)
shopModule:addSellableItem({'double axe'}, 					ID_doubleaxe, 260)
shopModule:addSellableItem({'war hammer'}, 					ID_warhammer, 470)
shopModule:addSellableItem({'sword'}, 					ID_sword, 15)
shopModule:addBuyableItem({'spear'}, 					ID_spear, 10)
shopModule:addBuyableItem({'rapier'}, 					ID_rapier, 15)
shopModule:addBuyableItem({'sabre'}, 					ID_sabre, 25)
shopModule:addBuyableItem({'battle axe'}, 					ID_battleaxe, 235)
shopModule:addBuyableItem({'battle hammer'}, 					ID_battlehammer, 350)
shopModule:addBuyableItem({'morning star'}, 					ID_morningstar, 430)
shopModule:addBuyableItem({'two handed sword'}, 					ID_twohandedsword, 950)
shopModule:addBuyableItem({'club'}, 					ID_club, 5)
shopModule:addBuyableItem({'dagger'}, 					ID_dagger, 5)
shopModule:addBuyableItem({'mace'}, 					ID_mace, 90)
shopModule:addBuyableItem({'carlin sword'}, 					ID_carlinsword, 473)
shopModule:addBuyableItem({'throwing knife'}, 					ID_throwingknife, 25)
shopModule:addBuyableItem({'sword'}, 					ID_sword, 85)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am blacksmith and shopowner. If you need weapons or armor you are at the right place."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am blacksmith and shopowner. If you need weapons or armor you are at the right place."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Rowenna."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell and buy weapons. Some of the finest in the land, indeed."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are we talking about the fured or scaly ones or just about males? Ha, ha, ha!."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In our fair city is no place for dungeons. I heared rumours that the crypts in the east are haunted."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our city has a sewersystem, of course! But we leave it to the males to take care of it."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are welcome."})
keywordHandler:addKeyword({'ghostlands'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Only the mad would travel there ... the few sane people who went there returned mad. I am not comfortable with enemys from beyond the grave, you know?"})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell only weapons. For armor, ask Cornelia."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell only weapons. For armor, ask Cornelia."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell only weapons. For armor, ask Cornelia."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are light and heavy weapons."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have light and heavy weapons. What are you looking for?"})
keywordHandler:addKeyword({'light'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have clubs, daggers, spears, swords, maces, rapiers, morning stars, and sabres. What's your choice?"})
keywordHandler:addKeyword({'heavy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have the best two handed swords in Tibia. I also sell battle hammers, battle axes, and the famous carlin swords. What's your choice?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Cornelia in the other shop."})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Cornelia in the other shop."})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Cornelia in the other shop."})
keywordHandler:addKeyword({'trousers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Cornelia in the other shop."})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell only weapons. For armor, ask Cornelia in the other shop."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Right now it's |TIME|."})

npcHandler:addModule(FocusModule:new())