tag @s add zombie
team leave @s
team join zombie @s
tellraw @a {"selector":"@s", "color":"#8932a8", "extra":[" has been zombified"]}
advancement grant @s only victordepths:zombie
give @s written_book[written_book_content={pages: ['{"text":"How to be a Zombie for Dummies:\\n\\n1. Rods of Mind:\\n\\nThe more you collect, the more powerful you will become.\\n\\n2. Killing:\\n\\nDon\'t kill Zombies"}', '{"text":"3. Advancements:\\n\\nThere is a special advancement tree just for zombies."}'], title: "Zombie Guide", author: "William", resolved: 1b}]
tag @s add vcd_teamed_player
scoreboard players reset @s vcd_kill_zombie
scoreboard players reset @s vcd_kill_husk
scoreboard players reset @s vcd_kill_drowned