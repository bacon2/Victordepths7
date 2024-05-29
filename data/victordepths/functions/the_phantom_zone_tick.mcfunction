execute if predicate victordepths:1_in_70 as @a[distance=0..] at @s run summon phantom ^17 ^18 ^19
execute as @a[distance=0..] at @s[predicate=victordepths:below_20] run function victordepths:to_spawn
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run fill ~ 68 ~ ~ 70 ~ dirt destroy
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run fill ~ 72 ~ ~ 71 ~ air destroy
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run tp @s ~ 72 ~
