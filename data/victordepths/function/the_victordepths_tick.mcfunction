execute as @e[distance=0.., tag=!moved, type=husk] run data modify entity @s ArmorItems set value [{id:"minecraft:netherite_boots", count:1b},{id:"minecraft:netherite_leggings", count:1b},{id:"minecraft:netherite_chestplate", count:1b},{id:"minecraft:jack_o_lantern", count:1b}]
execute as @e[distance=0.., tag=!moved, type=husk] run tag @s add moved
execute as @e[distance=0.., tag=!moved, type=skeleton] run data modify entity @s ArmorItems[3] set value {id:"minecraft:blast_furnace", count:1b}
execute as @e[distance=0.., tag=!moved, type=skeleton] run data modify entity @s HandItems[0] set value {id:"minecraft:iron_axe", count:1b}
execute as @e[distance=0.., tag=!moved, type=skeleton] run attribute @s minecraft:generic.armor base set 20.0
execute as @e[distance=0.., tag=!moved, type=skeleton] run attribute @s minecraft:generic.armor_toughness base set 20.0
execute as @e[distance=0.., tag=!moved, type=skeleton] run tag @s add moved
execute as @e[distance=0.., tag=!moved, type=zombie] run data merge entity @s {IsBaby:1b,ArmorItems:[{id:"minecraft:leather_boots", count:1b},{id:"minecraft:leather_leggings", count:1b},{id:"minecraft:leather_chestplate", count:1b},{id:"minecraft:rooted_dirt", count:1b}]}
execute as @e[distance=0.., tag=!moved, type=zombie] run tag @s add moved
execute as @a[distance=0..] at @s if entity @e[tag=victorsmith, distance=..10] run advancement grant @s only victordepths:find_victorsmith
execute as @a[distance=0..] at @s positioned ~ 330 ~ as @s[distance=..30] run function victordepths:to_spawn
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run fill ~ 118 ~ ~ 120 ~ dripstone_block destroy
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run fill ~ 122 ~ ~ 120 ~ air destroy
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run tp @s ~ 120 ~
execute if predicate victordepths:raining as @a[distance=0..] at @s positioned over world_surface if entity @s[distance=..1] run function victordepths:red_rain