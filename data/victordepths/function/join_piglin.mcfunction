tag @s add piglin
team leave @s
team join piglin @s
tellraw @a {"selector":"@s", "color":"#8932a8", "extra":[" is now an honorary Piglin"]}
advancement grant @s only victordepths:piglin
give @s written_book[written_book_content={pages: ['{"text":"How to be a Piglin for Dummies\\n\\n1. Rods of Mind:\\n\\nIf you find one, bring it to the Piglin who sells stock and drop it on the floor. He will reward you with great wealth.\\n\\n"}', '{"text":"2. Killing:\\n\\nDon\'t kill Piglins.\\n\\n3. Advancements:\\n\\nThere is a special advancement tree just for Piglins."}'], title: "Piglin Guide", author: "The Firsts", resolved: 1b}]
tag @s add vcd_teamed_player
scoreboard players reset @s vcd_kill_piglin