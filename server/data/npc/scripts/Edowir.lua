dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

keywordHandler:addKeyword({'how are you'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am fine, thank you."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell nothing, but I share my wisdom now and then."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I gather wisdom and knowledge. I am also an astrologer."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Edowir, but don't worry about remembering my name. I will forget your name as well."})
keywordHandler:addKeyword({'edowir'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's me, but don't worry about remembering my name. I will forget your name as well."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Time is a pillar and our lives wind around it like vine."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would like to help you. What is your problem?"})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Man or monster, the difference is often just a matter of hides and scales."})
keywordHandler:addKeyword({'dungeon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Dungeons are a place of danger, not of joy. Keep that in mind on your travels."})
keywordHandler:addKeyword({'sewer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sewers are sometimes the safer ways to get where you want to."})
keywordHandler:addKeyword({'god'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Learn about the gods to learn from the gods."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Kings are children adorned with crowns."})
keywordHandler:addKeyword({'bozo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who laughs last, thinks slowest."})
keywordHandler:addKeyword({'joke'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who laughs last, thinks slowest."})
keywordHandler:addKeyword({'jester'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Who laughs last, thinks slowest."})
keywordHandler:addKeyword({'rumour'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rumours are an unsafe path to follow."})
keywordHandler:addKeyword({'gossip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rumours are an unsafe path to follow."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those who live by the sword get shot by those who don't."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I believe that true love is stronger than all magic, don't you agree?"})
keywordHandler:addKeyword({'old'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Growing old is mandatory, growing up is optional."})
keywordHandler:addKeyword({'age'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Growing old is mandatory, growing up is optional."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If Tibia is a fallen god, does that makes us the maggots crawling on it?"})
keywordHandler:addKeyword({'castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A strong wall may protect from an assault, but what will protect you from the enemy within?"})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mages claim to be be wise, but how wise can it be to sacrifice your life to books and scrolls and not for the people?"})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Mages claim to be be wise, but how wise can it be to sacrifice your life to books and scrolls and not for the people?"})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A paladin is more than just a knight armed with a bow and some spells, though most seem to be unaware of that fact."})
keywordHandler:addKeyword({'paladin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A paladin is more than just a knight armed with a bow and some spells, though most seem to be unaware of that fact."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Druids seek enlightenment in nature, but they often just find what they brought with them."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Druids seek enlightenment in nature, but they often just find what they brought with them."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Knights could be artists, but tend to become sellswords."})
keywordHandler:addKeyword({'knight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Knights could be artists, but tend to become sellswords."})
keywordHandler:addKeyword({'necromant nectar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There is no such thing, believe me. The dead don't care for taste."})
keywordHandler:addKeyword({'goshnar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Necromant King. He is dead forever, and that is the nicest thing I can say about him. May he rot in his tomb."})
keywordHandler:addKeyword({'necromant'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "How could they try to understand death, if they don't care to understand life?"})
keywordHandler:addKeyword({'nightmare knight'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Nightmare Knights were an ancient order dedicated to fight evil. They were  guided by prophetic dreams. The order ceased to exist after their war against the Brotherhood of Bones."})
keywordHandler:addKeyword({'brotherhood bone'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This brotherhood was an secret society of necromancers and followers of purest evil. They were vanquished long ago by their arch-enemies, the Nightmare Knights."})
keywordHandler:addKeyword({'pits of inferno'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "An infernal place in which the nightmare knights created a base to fight the minions of evil. It was lost when the Ruthless Seven conquered it."})
keywordHandler:addKeyword({'pits inferno'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "An infernal place in which the nightmare knights created a base to fight the minions of evil. It was lost when the Ruthless Seven conquered it."})
keywordHandler:addKeyword({'ruthless seven'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They are more than a myth, they are a horrible reality. It is possible that they still reside in the pits of inferno."})
keywordHandler:addKeyword({'sternum'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Behind the mountain lies a land of great danger."})
keywordHandler:addKeyword({'mintwallin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The underground city of the minotaurs can be reached through a dangerous passage from the old temple."})
keywordHandler:addKeyword({'old temple'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the old days the underground temple was built for the glory of Banor after a victory over the orcish hordes. It is now an abandoned and dreary place overrun by rotworms."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A city in the far north. It separated from the Thaian kingdom about 100 years ago. Now it is ruled by a dynasty of queens."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is the capital of an ancient human kingdom. Once its rule was more or less undisputed. In the years the strength of the thaian kingdom eroded by different events."})
keywordHandler:addKeyword({"ab'dendriel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Although lovely, the city of the elves lacks the grace and the vibrance of the elven cities of old. The elves are still working on improvement of their settlement."})
keywordHandler:addKeyword({'Shadowthorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elves of shadowthorn are hosile to intruders. Their Kuridai leaders practise some sinister cults and the other castes are more their minions then their equals."})
keywordHandler:addKeyword({'castes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The elven society is divdided into certain cates, the cenath, the kuridai, the deaisim, the abdaisim and the legendary theshial."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The cenath favour magic above all other. They are the keeper of elven lore and wisdom. They are resposible for the astounding feats of druidic magic the elves are capable of."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Kuridai are the craftsmen and warriors of elvenkind. They are allways moving, allways sheming. They are the most agressive elves and distrust outsiders. An utsider might be each non-Kuridai to them."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "One could call the Deraisim the scouts and rangers of elvenkind. Although all elves are formidable in that area, the Deraisim excell them all."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Abdaisim are what humans would call 'independent elves'. They take shelter wherever they might find it, are wanderers and explorers. They only keep loose contact with the elven society."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Its said that those elves were the masters of the dreams. Which many consider as a special brand of magic. However they seem to have vanished from the face of tibia ages ago and their fate is unknown."})
keywordHandler:addKeyword({'kazordoon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The ancient fortrescity of the dwarf was carved into the mountain known as 'the big old one'. Its quite hidden and heavily guarded to withstand any assault."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The small but strong dwarves are tireless workers and fierce warriors. They are familiar with several crafts and mastered most of them. In our days their smithing skills are rivaled only by those of the cyclopses."})
keywordHandler:addKeyword({'dwarv'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In our days their smithing skills are rivaled only by those of the cyclopses."})
keywordHandler:addKeyword({'cyclops'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Cyclopses are seen as the smithes of blog, whom they call 'the ragehammer' or 'ragehammerer'. Indeed their skills create mostly crude and nasty looking weapons and armor which are incredicle effective nontheles."})
keywordHandler:addKeyword({'blog'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Blog is the god of rage and fierce battle. Hes also the patron of power, although a power to opress and bully others around. He is the son of Zathroth and one of the tibian suns."})
keywordHandler:addKeyword({'zathroth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Zathroth is the dark twin of Uman. They are one and they are two seperate entities. We mortals can't realy grasp this concept. He is the patron of dark magic and even darker secrets, the lust for dominance through cunning, and manipulation."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Venore is a center of commerce and trade. Its ambitous trade-barons are nominaly subjects of the thaian kingdom."})
keywordHandler:addKeyword({'paradox tower'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The paradox Tower was home of a mighty but mad wizard. Its said that only the cunning and mad can brave the tests of that tower to gain its treasures."})
keywordHandler:addKeyword({'ridler'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As far as I can tell this creature is not fond of cheaters and wont allow them to pass his tests."})
keywordHandler:addKeyword({'magic metal'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are sevral kinds of magic metals in our world, the best known are called Mesh Kaha Rogh, Za'Kalortith, Uth'Byth, Uth'Morc, Uth'Amon, Uth'Maer, Uth'Doon, and Zatragil."})
keywordHandler:addKeyword({'Mesh Kaha Rogh'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The so called singing steel causes a constant humming while its forged. It's said its a sign that it absorbs magic powers in the process and its probably easy to enchant it. However the secret where to mine or how to creat this ore is lost in time."})
keywordHandler:addKeyword({"Za'Kalortith"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This is the metal of 'evil'. The hell forged iron no ordinary flames can melt. Its rumored to be harvestet in hell from iron rocks in which damned souls were imprisoned."})
keywordHandler:addKeyword({"Uth'Byth"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This steel absorbs magic, its of inferior quality compared to ordinary steel but its absorbing qualities make it important though."})
keywordHandler:addKeyword({"Uth'Morc"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What makes this black steel special is its lightness and special property of lacking the common steel 'noise'. Its also called silent steel or thiefs steel for that reason."})
keywordHandler:addKeyword({"Uth'Amon"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The luminescent brightsteel is used for artwork mainly. In ancient times items of great magic power were created using the brightsteel. Those secrets were lost with the races which hold them as their secrets."})
keywordHandler:addKeyword({"Uth'Maer"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarfs call it heartiron and claim its part of the heart of the big old one. Therefore is sacred and its use is limited and regulated."})
keywordHandler:addKeyword({"Uth'Doon"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dwarfen high steel is relatively common but expensive and still hard to come by. The elite dwarfen weaponary and armors are made of Uth'Doon."})
keywordHandler:addKeyword({"Zatragil"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The so called dreamsilver is a legendary metal. Almost everything we know about it are rumours only."})
keywordHandler:addKeyword({'plains havoc'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Somewhere in the Plains of Havoc, where the Necromant King was defeated lies the secret entrance to the pits of inferno."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The ancient dwarfen kings forged it using magic metal , which they took from cyclopses who found it in the heart of a fallen star."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The swamp city is a center of commerce and known for it riches and its merchant barons. It is part of the Thaian kingdom."})
keywordHandler:addKeyword({'rookgaard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It was on rookgaard where the soul vortex appeared. The Thaian kingdom holds an outpost there to protect the vortex and to guide the newly arrived souls."})
keywordHandler:addKeyword({'soul vortex'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods created the vortex to guide powerful souls to our world so they might join the battle for creation."})
keywordHandler:addKeyword({'soul of vortex'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The gods created the vortex to guide powerful souls to our world so they might join the battle for creation."})
keywordHandler:addKeyword({'magic items'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Magic items are numerous. If you would like some details, please ask me about a specific item."})
keywordHandler:addKeyword({'bronze amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Some creatures are able to attack your magic power rather than your lifeforce. This amulet bestows some protection on you against those attacks."})
keywordHandler:addKeyword({'silver amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This amulet purifies your blood. It will reduce the damage caused by poison."})
keywordHandler:addKeyword({'platinum amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These powerful amulets are usually blessed by some god. They offer additional armour and protection."})
keywordHandler:addKeyword({'strange talisman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These amulets protect you from harm taken by energy attacks and magic fields."})
keywordHandler:addKeyword({'amulet life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These amulets were created and enchanted by powerful magicians and priests. They protect both body and soul from the losses caused by the trauma of death."})
keywordHandler:addKeyword({'amulet of life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These amulets were created and enchanted by powerful magicians and priests. They protect both body and soul from the losses caused by the trauma of death."})
keywordHandler:addKeyword({'stone skin amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Though they possess only a few charges, stone skin amulets are sought after because they offer complete protection from physical damage."})
keywordHandler:addKeyword({'dragon necklace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The core piece of these amulets is a little dragon scale. It protects against fire damage to some extent."})
keywordHandler:addKeyword({'garlic necklace'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This charm, feared and despised by the undead, protects your lifeforce from lifedraining powers."})
keywordHandler:addKeyword({'elven amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These ancient elven artifacts are highly enchanted and grant some protection against any each form of damage."})
keywordHandler:addKeyword({'shielding amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These amulets are a more powerful version of the elven amulets. They were created by a race long gone from this plane and offer significant protection against every kind of damage."})
keywordHandler:addKeyword({'might ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This ring will give you limited protection against any kind of damage."})
keywordHandler:addKeyword({'sword ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This ring will increase your skill when wielding swords."})
keywordHandler:addKeyword({'axe ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This ring will increase your skill when wielding any kind of axe."})
keywordHandler:addKeyword({'club ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This ring will increase your skill when wielding a club weapon."})
keywordHandler:addKeyword({'power ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This kind of ring will increase your skill when fighting with bare hands."})
keywordHandler:addKeyword({'time ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These rings warp the fabric of time, greatly enhancing your running speed."})
keywordHandler:addKeyword({'life ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These rings improve your regenerative powers, accelerating the recovery of both your mana and your lifeforce."})
keywordHandler:addKeyword({'ring of healing'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This ring increases the rate with which you heal your physical wounds."})
keywordHandler:addKeyword({'stealth ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These rings were created by an ancient, long forgotten race. It is said they valued secrecy above all. They used these magic rings to make themselves invisible."})
keywordHandler:addKeyword({'dwarven ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Actually rings of this kind are not created by dwarves. However, if you wear one you can drink as though you were a dwarf. They give you partial immunity against drunkenness."})
keywordHandler:addKeyword({'energy ring'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "These rings were created by the sorcerers' guilds of old. They temporarily provide their wielders with a shield of magic."})
keywordHandler:addKeyword({'ghostlands'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The ancient structures that were found deep beneath the ghostlands were built by an unkown race for an unknown purpose. Its quite certain that, whatever they were once used for, they now cause madness and ghost sightings in the sourounding area."})
keywordHandler:addKeyword({'banshee queen'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The legendary banshee queen is incerdibly old and likely next to invincible. Shes rumored to have her lair in the deepest caverns of the ghotlands. She seems to be more likely to talk then her sisters but is for sure even more evil then them."})
keywordHandler:addKeyword({'queen banshee'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The legendary banshee queen is incerdibly old and likely next to invincible. Shes rumored to have her lair in the deepest caverns of the ghotlands. She seems to be more likely to talk then her sisters but is for sure even more evil then them."})
keywordHandler:addKeyword({'banshee'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The banshees were creatures that grief and despair turned into vengefull spirits after their deaths. Their wail is deadly and they draw new strength from the pain and fear of others."})
keywordHandler:addKeyword({'hugo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I think you are referring to the beast Hugo that is said to still haunt the Plains of Havoc. The legends which tell of this creature are ancient and almost forgotten."})
keywordHandler:addKeyword({'legend'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "As far as we know, once a terrible beast roamed the lands we now call the Plains of Havoc. It was so fierce that no one dared to even dream about killing it. Finally it was tricked by the knight Endulos."})
keywordHandler:addKeyword({'endulos'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Endulos was not a great warrior, but a man of wit and genius. After many of his brethren of the Nightmare Knights had fallen prey to the beast, he came up with a cunning plan to end that threat."})
keywordHandler:addKeyword({'plan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He lured Hugo into a trap. Bound by roots and stones charged with powerful magic he could not move anymore. Now, the beast lies trapped in a hidden cave for eternity."})
keywordHandler:addKeyword({'cave'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The legends tell us that the Nightmare Knights trapped it beneath one of their fortresses, or rather that they built a fortress on top of his eternal prison."})
keywordHandler:addKeyword({'ghostland'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Ghostlands are haunted by their past. In bygone days some ancient race lived there. Deep beneath the earth some of their structures are still intact and defile the surrounding lands."})
keywordHandler:addKeyword({'defile'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Whatever the original meaning of that underground complex was, it is now like an open wound in the nearby lands, spreading madness and attracting all kinds of ghosts and apparitions."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Edron is the latest colony of the Thaian kingdom. However, structures of an earlier colonisation have been found. We cannot tell if those inhabitants were human or of any other known race."})
keywordHandler:addKeyword({'darama'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The desert lands of Darama are harsh and unforgiving. Therefore Daraman led his people there to found a new community based upon his teachings."})
keywordHandler:addKeyword({'daraman'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Daraman was a sage with ambition, that is for sure. His philosophy centered around the idea that by controlling yourself you could improve yourself. The closer you are coming to perfection, the closer you are to ascension to divinity."})
keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The town of Darashia is built around one of the few sweet water supplies of Darama. It is famous for its sand wasp honey and its sandworm stew."})
keywordHandler:addKeyword({'drefia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The dreaded town of Drefia was once a haven for heretics, necromancers and demon worshipper. Its was destroyed in the war of the Djinn."})
keywordHandler:addKeyword({'war of the djinn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Although some priests claim that war was fought on behalf of the gods, it seems more likely that this was kind of a civil war between the Djinn of good and the Djinn of evil."})
keywordHandler:addKeyword({'djinn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Legend has it that the Djinn were created by Zathroth by using the stolen chalice of life. They roamed the world for Aeons causing strife and despair until Gabel, one of their lords met a very special human."})
keywordHandler:addKeyword({'gabel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Gabel was the most powerful among the Djinn lords. He was cruel and merciless, until one day his minions brought a certain human to him whom they had captured and tortured."})
keywordHandler:addKeyword({'certain human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This human showed no fear and did not yield under torture. They could bend him, but they never managed to break him. Impressed by this mortal,  Gabel talked to him and learned about his philosophy."})
keywordHandler:addKeyword({'philosophy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The human whom the Djinn had caught was none other but Daraman. The mighty Gabel was intrigued by his philosophy an changed his ways according to Daramans teachings."})
keywordHandler:addKeyword({'teachings'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The teachings of asceticism, inner peace and ascension appealed to the Djinn, although in the beginning this was probably only because of his vanity and his greed for divinity. However, Malor and his followers opposed him."})
keywordHandler:addKeyword({'malor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Malor was second in power only to Gabel and his followers among the Djinn were many. It was not easy for the evil Djinn to change their ways, and many preferred to follow Malor instead of Gabel. In the end a civil war erupted."})
keywordHandler:addKeyword({'civil war'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "In the war of the Djinn citys were levelled, lands were cursed and islands sunk. Finally, Malor was caught and imprisoned in an enchanted bottle. His followers fled this plane, while the good djinn laid to rest to recover their strength."})
keywordHandler:addKeyword({'chalice life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This chalice was a tool of the gods which they created to make their task to create life easier. Zathroth who lacked the knowledge of creation stole that chalice and used it to spawn his evil minions."})
keywordHandler:addKeyword({'minion evil'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Djinn were the result of his first attempts. They were powerful and quite evil, but not as evil as Zathroth wished and quite independent in their thinking. Finally he discarded them and decided his second try would become his masterpiece."})
keywordHandler:addKeyword({'masterpiece'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ""})
keywordHandler:addKeyword({''}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Zathroth channeled all the hatred and foulness he could muster. He added the burning rage of his son Blog and mixed it with fire. The energy that was released destroyed the chalice, but Zathroth had succeeded in creating the first demon."})
keywordHandler:addKeyword({'demonlord'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Demonlords are the generals of their kind. They are more cunning than ordinary demons, and they can channel their hatred more effectively than their lesser brethren, making them even more formidable opponents."})
keywordHandler:addKeyword({'demon overlord'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The overlords of the demonkind are more powerful than even demonlords are. They are nearly indestructible. Armoured with layers of impenetrable hide and endowed with awesome magical power, demon overlords are true incarnation of death."})
keywordHandler:addKeyword({'archdemon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The archdemons are few, and they are extremely rare. And a good thing, too, for they are the rulers of the demonrace. They are vain and powerhungry creatures who tend to form only small cabals and fight each other instead of allying up against creation."})
keywordHandler:addKeyword({'demon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Demons are the servants of evil. More or less devoted servers of Zathroth they cause strife and havoc wherever they appear. Their masters are known as Demonlords, Demon Overlords and Archdemons."})
keywordHandler:addKeyword({'cabals'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "There are at least five demonic cabals of archdemons. The ruthless seven are the most prominent and powerful."})

npcHandler:addModule(FocusModule:new())