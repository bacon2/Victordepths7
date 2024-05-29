execute as @s[type=zombie, predicate=victordepths:in_fluffyfunplace] run data merge entity @s {Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b}]}
execute as @s[type=husk, predicate=victordepths:in_fluffyfunplace] run data merge entity @s {Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:dirt",Count:1b}]}
spreadplayers ~ ~ 1 60 under 120 true @s
execute if predicate victordepths:1_in_8 run spreadplayers ~ ~ 1 40 under 100 true @s
execute if predicate victordepths:1_in_8 run spreadplayers ~ ~ 1 40 under 80 true @s
execute if predicate victordepths:1_in_8 run spreadplayers ~ ~ 1 40 under 60 true @s
execute if predicate victordepths:1_in_8 run spreadplayers ~ ~ 1 40 under 40 true @s
execute if predicate victordepths:1_in_8 run spreadplayers ~ ~ 1 40 under 20 true @s
tag @s add moved