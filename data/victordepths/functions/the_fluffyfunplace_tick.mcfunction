effect give @a[distance=0.., predicate=victordepths:sprinting] jump_boost 1 10
effect give @a[distance=0.., predicate=victordepths:sprinting] slow_falling 4 10
execute if predicate victordepths:1_in_30 as @e[distance=0.., tag=!moved, type=#victordepths:fluffyfunspawns] at @s run function victordepths:move_below
execute as @a[tag=from_great_aquifer,distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air destroy
execute as @a[tag=from_great_aquifer,distance=0..,scores={time_here=4, vcd_oldplayer=1}] run tag @s remove from_great_aquifer
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=great_aquifer_portal, distance=..1] run function victordepths:to_great_aquifer
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=fluffyfunplace_portal, distance=..1] run function victordepths:from_fluffyfunplace