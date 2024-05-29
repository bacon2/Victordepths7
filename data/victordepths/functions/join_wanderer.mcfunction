tag @s add wanderer
team leave @s
team join wanderer @s
tellraw @a {"selector":"@s", "color":"#8932a8", "extra":[" is now a wanderer"]}
advancement grant @s only victordepths:wanderer
give @s written_book{pages: ['{"text":"Path of Wanderers\\n\\n1. Rods of Mind:\\n\\nIf you find one, bring it to the Mage of Infinite Thunder and drop it on the ground.\\n\\n2. Killing:\\n\\nDon\'t kill Wandering Traders. "}', '{"text":"3. Advancements:\\n\\nThere is a special advancement tree just for Wanderers."}'], title: "Wanderer Guide", author: "The Mages"}
tag @s add vcd_teamed_player
scoreboard players reset @s vcd_kill_wanderer