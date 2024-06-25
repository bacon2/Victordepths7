clear @s[tag=vcd_teamed_player] blaze_rod[minecraft:custom_data={nbt:"mind_rod"}]
tellraw @s[tag=!vcd_teamed_player] {"text":"You must find a faction to use this"}
scoreboard players add @s[tag=piglin] piglin_rods 1
give @s[tag=piglin, scores={piglin_rods=1}] yellow_shulker_box[minecraft:container=[{item: {count: 64, id: "minecraft:gold_block"}, slot: 0}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 1}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 2}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 3}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 4}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 5}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 6}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 7}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 8}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 9}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 10}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 11}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 12}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 13}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 14}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 15}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 16}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 17}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 18}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 19}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 20}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 21}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 22}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 23}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 24}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 25}, {item: {count: 64, id: "minecraft:gold_block"}, slot: 26}], minecraft:custom_name='{"text":"Shulker of Wealth","color":"yellow","italic":false}']
give @s[tag=piglin, scores={piglin_rods=2}] wooden_sword[minecraft:fire_resistant={},unbreakable={},attribute_modifiers={modifiers:[{type:'minecraft:generic.attack_damage',slot:mainhand,name:'Unenchanted Damage',amount:8.0,operation:'add_value',id:'fusion_sword_damage'},{type:'minecraft:generic.attack_speed',slot:mainhand,name:'Base Speed',amount:-2.5999999046325684d,operation:'add_value',id:"fusion_sword_speed"}]}, minecraft:custom_name='{"text":"Ancient Fusion Sword","italic":false}']
give @s[tag=piglin, scores={piglin_rods=3}] leather_boots[minecraft:fire_resistant={},unbreakable={},attribute_modifiers={modifiers:[{type:'minecraft:generic.armor',slot:feet,name:'Armor',amount:4.0,operation:'add_value',id:'fusion_boots_armor'},{type:'minecraft:generic.armor_toughness',slot:feet,name:'Armor Toughness',amount:5.0,operation:'add_value',id:'fusion_boots_armor_toughness'},{type:'minecraft:generic.knockback_resistance',slot:feet,name:'Knockback Resistance',amount:0.2,operation:'add_value',id:'fusion_boots_knockback_resistance'}]}, minecraft:custom_name='{"text":"Ancient Fusion Boots","italic":false}']
give @s[tag=piglin, scores={piglin_rods=4}] leather_leggings[minecraft:fire_resistant={},unbreakable={},attribute_modifiers={modifiers:[{type:'minecraft:generic.armor',slot:legs,name:'Armor',amount:7.0,operation:'add_value',id:'fusion_leggings_armor'},{type:'minecraft:generic.armor_toughness',slot:legs,name:'Armor Toughness',amount:5.0,operation:'add_value',id:'fusion_leggings_armor_toughness'},{type:'minecraft:generic.knockback_resistance',slot:legs,name:'Knockback Resistance',amount:0.2,operation:'add_value',id:'fusion_leggings_knockback_resistance'}]}, minecraft:custom_name='{"text":"Ancient Fusion Leggings","italic":false}']
give @s[tag=piglin, scores={piglin_rods=5}] leather_chestplate[minecraft:fire_resistant={},unbreakable={},attribute_modifiers={modifiers:[{type:'minecraft:generic.armor',slot:chest,name:'Armor',amount:9.0,operation:'add_value',id:'fusion_chestplate_armor'},{type:'minecraft:generic.armor_toughness',slot:chest,name:'Armor Toughness',amount:5.0,operation:'add_value',id:'fusion_chestplate_armor_toughness'},{type:'minecraft:generic.knockback_resistance',slot:chest,name:'Knockback Resistance',amount:0.2,operation:'add_value',id:'fusion_chestplate_knockback_resistance'}]}, minecraft:custom_name='{"text":"Ancient Fusion Chestplate","italic":false}']
give @s[tag=piglin, scores={piglin_rods=6}] wooden_axe[minecraft:fire_resistant={},unbreakable={},attribute_modifiers={modifiers:[{type:'minecraft:generic.attack_damage',slot:mainhand,name:'Unenchanted Damage',amount:11.0,operation:'add_value',id:'fusion_axe_damage'},{type:'minecraft:generic.attack_speed',slot:mainhand,name:'Base Speed',amount:-3.200000047683716d,operation:'add_value',id:'fusion_axe_speed'}]}, minecraft:custom_name='{"text":"Ancient Fusion Axe","italic":false}']
give @s[tag=piglin, scores={piglin_rods=7}] netherite_block 10
give @s[tag=piglin, scores={piglin_rods=8}] beacon 64
tellraw @s[tag=piglin, scores={piglin_rods=8..}] {"text":"You have reached your maximum Rod power"}
scoreboard players add @s[tag=illager] illager_rods 1
execute as @s[tag=illager] at @s run function victordepths:give_spells
tellraw @s[tag=illager, scores={illager_rods=8..}] {"text":"You have reached your maximum Rod power"}
scoreboard players add @s[tag=wanderer] wanderer_rods 1
execute as @s[tag=wanderer] at @s run function victordepths:give_spells
tellraw @s[tag=wanderer, scores={wanderer_rods=8..}] {"text":"You have reached your maximum Rod power"}
give @s[tag=wanderer, scores={wanderer_rods=2}] written_book[minecraft:written_book_content={pages: ['{"text":"As wandering observers, our Great Society has observed nearly everything that exists in all the dimensions. That means we know the locations of all villages, castles, fortresses, and even player spawnpoints. \\n\\nThe problem arises from the fact that this knowledge has been"}', '{"text":"scatter among tens of millions of us. With the Rods of Mind, our knowledge will grow powerful enough to form a network of informants, and nothing will be out of reach. We estimate six or seven rods will be required for our power to be complete."}', '{"text":"In the meantime, The Mages have decided to gift you these books of knowledge to encourage you to continue finding Rods of Mind.\\n\\nOnce you have brought us a seventh rod, we will give you great wisdom. "}'], title: "Knowledge I", author: "The Mages"}]
give @s[tag=wanderer, scores={wanderer_rods=3}] written_book[minecraft:written_book_content={pages: ['{"text":"While our Great Society has focused on attaining wisdom, the Piglin pursued a different goal--wealth. Like us, the Piglins once held many Rods of Mind which they used to form a organized and safe society. They reshaped their homeland, The Sanctuary, into a "}', '{"text":"paradise. They diluted weakness potions into the atmosphere to prevent violence. After perfecting their environment, the Piglins had no enemies. There was no need to change the world, for it was as it should be. Lacking purpose, the Piglins turned on each other, each seeking to be the best and lord"}', '{"text":"it over the others. They established a four-part caste system. The Firsts accumulated lavish estates and stockpiled gold while the Fourths toiled and slept outside. Despite their inequality, the Piglins were still safer than most other beings. As their technology improved, the Piglins "}', '{"text":"invented a fusion machine that could turn blackstone into gold. The only problem was that blackstone was not native to the Sanctuary. Through experimentation, the Piglins discovered how to reach the nether, which was a cold, dry cave made almost entirely out of blackstone. The Piglins"}', '{"text":"started to construct their fusion machines in the nether, using the Rods of Mind to ensure that every machine was built the exact same way at the exact same time. The machine was a great success! The Piglins brought home unfathomable amounts of gold, most of which went to the Firsts."}', '{"text":"This success was followed by an even greater success as scientists discovered the fusion reactors could be altered to make an even stronger metal which would never wear out. However, the Firsts who owned the fusion reactors got greedy and started running the machines beyond"}', '{"text":"their capacity. The scientists warned the Firsts to stop, but being Seconds their words were ignored. Then one fateful day every reactor melted down in the blink of an eye, spewing magma and converting most of the blackstone into a new material called netherrack. All the native inhabitants of"}', '{"text":"the Nether were charred, vaporized, or withered away after the explosion. In the aftermath, groups of Piglins tried to gather what bits of gold were left from the explosion, scattered across the nether. They found very little gold, and when they tried to go back, they discovered "}', '{"text":"the Overworld had been infected with a strange virus. This was our doing, of course. We members of the Great Society saw what a threat the Piglins posed to other forms of life, so we crafted a virus that would prevent Piglins from ever leaving their dimension again. Most portals only"}', '{"text":"connect to the Overworld, so by Piglin-proofing the overworld we may have saved the entire universe. With the Piglin threat contained, we made sure that no other dimension will be destroyed like the nether. Still, the Piglins could become a threat to us if they "}', '{"text":"somehow become immune to the virus or collect enough Rods of Mind to unite. If this ever happens, we at the Great Society will be the first victims on their path to revenge. "}'], title: "Knowledge II", author: "The Mages"}]
give @s[tag=wanderer, scores={wanderer_rods=4}] written_book[minecraft:written_book_content={pages: ['{"text":"Sadly, the Illagers are the most powerful organization that we know of. Though they are human like us, evil warps them both inside and out. They draw their power from the Rod of Mind that they managed to hold on to even after the Day of Betrayal. This allows them to gather in big"}', '{"text":"groups to exact revenge upon anyone who dares kill a raid captain. With regard to their peaceful cousins, the Illagers follow a divide and conquer strategy, setting up outposts to prevent the Villagers from uniting. Illagers do not seek to kill all villagers, since villagers provide"}', '{"text":"valuable work. Instead, the Illagers require the Villagers to have outdoor farms and leave large piles of food around for them to pillage. They will gladly let villagers live so long as they stay out of sight, work hard, and leave food out. Whenever Villagers unite themselves with"}', '{"text":"players, the Illagers will quickly eliminate the threat.\\n\\nThe majority of Illagers live in the Forebodium, a bewitched dimension they stole and ruined. They discovered a way to teleport in and out of this dimension without a portal, but we do not understand"}', '{"text":"how. Right now, they are hunting for the lost dimension of the Victors, a group of traitors who stole the Rods of Mind from everybody. Normally, this lost dimension is guarded by the power of Wither. The Illagers tried creating this portal, but they are fools. Without defeating the Wither, "}', '{"text":"the portal would never have opened. However, ever since you opened it, Wanderers, Pillagers, and even Piglins have been flooding into the Victordepths, searching for the Rods of Mind. Brave member of our Great Society, please find them quickly, for we fear war is at hand."}'], title: "Knowledge III", author: "The Mages", resolved: 1b}]
give @s[tag=wanderer, scores={wanderer_rods=5}] written_book[minecraft:written_book_content={pages: ['{"text":"The Builders, or Dream Guides as they call themselves, are what we now call Endermen. They built all the dimensions long ago using only their minds and some power they called the \\"compah-yooder\\". They also built us wanderers, the Piglins, and even the Illagers."}', '{"text":"A great mage once asked a  Dream Guide why they built this world, and he simply said, \\"We were bored.\\" Unsatisfied, the mage continued and asked why they created suffering and the Illagers. The Dream Guide was annoyed. \\"I said we were bored. If you hate the Illagers, go fix them.\\"  (This "}', '{"text":"suggestion actually led us wanderers to create the race known as Villagers by purging the evil from Illagers). \\nThe mage also asked the Dream Guide about who created it. The guide replied, \\"Some outer-dimensional being. I think his name was Notch or something.\\" The mage"}', '{"text":"asked the Dream Guide who inspired some of these dimensions. The guide replied \\"CookedPorkBacon! Be sure to like and subscribe on PlanetMinecraft.com\\" The mage looked confused and switched to a different line of questioning. He asked why the Dream Guides"}', '{"text":"stopped creating things. The guide answered, \\"We got bored after 15 dimensions, so we just gave you the Rods of Mind. Now writing the Dream is up to you.\\"\\n\\nAnd write the dream we did. That is, until the Day of Betrayal, when the Rods of Mind were stolen from us."}', '{"text":"Piglins, Illagers, and Wanderers all descended into chaos that day. The traitors had come from every group and united just to steal our Rods of Mind. They came out of the ground and then vanished into the Victordepths where they hid the rods among the monsters."}'], title: "Knowledge IV", author: "The Mages"}]
give @s[tag=wanderer, scores={wanderer_rods=6}] written_book[minecraft:written_book_content={pages: ['{"text":"Some of our most interesting insights are from the Dream Guides, or Endermen, as you know. Here is a compilation of random questions and their best answers, which we have discovered with the Rods of Mind you brought us."}', '{"text":"What\'s going on with the Fluffyfunplace?\\n\\nWhen the Dream Guides created the original dimensions, there were a few eccentric builders who were mentally different from the rest. The others got tired of their antics, put them all into one dimension, and ignored them. The "}', '{"text":"eccentric builders created a world unlike any other; a world without reason, without physics, and without boringness. One of these guides really liked lighting stuff on fire, so he suggested they build the entire dimension out of wool. The other guides went along with it but later regretted it. "}', '{"text":"What\'s an Ocean Monument\\n\\nWe asked the Builders this question and they answered with a question of their own: \\"Do you ever want to make something seem more complex than it is, so you say something totally random just to make people think? That\'s"}', '{"text":"what we did with the whole Overworld. I mean, look at the mineshafts, for example. We left all the ore right on the walls. What kind of miner digs a shaft and doesn\'t mine the ore on the walls? Yeah obviously, we just dug those to mess with people\'s heads and make them think \\"oooh, "}', '{"text":"somebody\'s been here long before me.\\" Seriously don\'t read too far into it. We were on a mind-energy budget and had to make something mysterious yet recognizeable. You guys are probably thinking way harder about these things than we ever did."}', '{"text":"The Underworld and The Warden\\n\\nThe Underworld is a prison for undead mobs and monsters, yet these monsters consider it more of a paradise. In fact, to them the Overworld is a prison for the weak. Whichever dimension you call the prison, The Warden serves as"}', '{"text":"the \\"warden\\" for this prison and is the only way to travel between them. Despite being a lumbering mass of sculk and souls, the Warden has many hobbies including sculk diving, hunting, and hanging out with his many fans who built a giant statue of him. The Dream Guides\\nhated boredom, so"}', '{"text":"many of them built cities around sculk shriekers just to be with The Warden, their least-boring creation."}', '{"text":"Why are there shipwrecks? You know boats don\'t work right?\\n\\nThe Dream Guides modeled the shipwrecks off of legends from an outer dimension. They just thought they would be interesting to look through."}', '{"text":"How did the Endermen build underwater structures if they can\'t go in water?\\n\\nThey put the water in last. Duh."}', '{"text":"I\'m paying a lot of Rods of Mind for these books. How do I know they\'re actually true?\\n\\nYOU DARE QUESTION THE AUTHORITY OF THE GREAT MAGES AND THE  KNOWLEDGE GIFTED TO THEM BY THE DREAM GUIDES? BE SILENT.\\n(Ok fine. We\'ll give you magic next time)"}'], title: "Knowledge V", author: "The Mages"}]
scoreboard players add @s[tag=fun] fun_rods 1
execute as @s[tag=fun] at @s run function victordepths:give_spells
tellraw @s[tag=fun, scores={fun_rods=8..}] {"text":"You have reached your maximum Rod power"}
scoreboard players add @s[tag=zombie] zombie_rods 1
execute as @s[tag=zombie] at @s run function victordepths:give_spells
tellraw @s[tag=zombie, scores={zombie_rods=8..}] {"text":"You have reached your maximum Rod power"}
advancement revoke @s only victordepths:mind_rod