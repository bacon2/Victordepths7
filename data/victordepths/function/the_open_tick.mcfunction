execute as @a[distance=0..] at @s[predicate=victordepths:below_0] run function victordepths:to_spawn
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s in victordepths:the_open run fill ~-1 70 ~-1 ~1 70 ~1 bedrock destroy
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s in victordepths:the_open run fill ~-1 72 ~-1 ~1 71 ~1 air destroy
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s in victordepths:the_open run tp @s ~ 72 ~
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run tag @s remove from_uncharted
