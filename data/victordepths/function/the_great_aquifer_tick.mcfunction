effect clear @a[distance=0..] mining_fatigue
execute as @a[distance=0.., predicate=victordepths:air-16s] run tag @s add from_great_aquifer
execute as @a[distance=0.., predicate=victordepths:air-16s] run function victordepths:to_fluffyfunplace
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 glass destroy
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run fill ~ ~ ~ ~ ~1 ~ air
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run tag @s remove from_fluffyfunplace