tag @s add illager
team leave @s
team join illager @s
tellraw @a {"selector":"@s", "color":"#8932a8", "extra":[" is now an illager"]}
advancement grant @s only victordepths:illager
give @s written_book{pages: ['{"text":"How to be An Illager for Dummies\\n\\n1. Rods of Mind:\\n\\nIf you find one, bring it to the Unyielding General and drop it on the floor. He will reward you with powers.\\n"}', '{"text":"2. Killing:\\n\\nDon\'t kill Evokers\\n\\n3. Advancements:\\n\\nThere is a special advancement tree just for Illagers."}'], title: "Illager Guide", author: "The Evokers", resolved: 1b}
tag @s add vcd_teamed_player
scoreboard players reset @s vcd_kill_evoker