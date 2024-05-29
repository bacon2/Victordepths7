tag @s add fun
team leave @s
tellraw @a {"selector":"@s", "color":"#8932a8", "extra":[" has become Fluffy and Fun"]}
advancement grant @s only victordepths:fun
give @s written_book{pages: ['{"text":"How to be Fun for Dummies\\n\\n1. Rods of Mind:\\n\\nIf you find one, bring it to a Nitwit of Fun and drop it on the ground.\\n\\n2. Advancements:\\n\\nYou have a special advancement tree."}'], title: "Fun Guide", author: "Fun Nitwit", resolved: 1b}
tag @s add vcd_teamed_player