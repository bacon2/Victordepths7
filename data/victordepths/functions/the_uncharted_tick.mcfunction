execute as @e[distance=0.., type=!#victordepths:inanimate, predicate=victordepths:on_quicksand] run effect give @s slowness 3 2 true
execute if predicate victordepths:1_in_8 as @e[distance=0.., type=!minecraft:spider, type=!minecraft:ocelot, type=!#victordepths:inanimate, predicate=victordepths:on_quicksand] at @s run tp @s ~ ~-0.01 ~
execute as @e[distance=0.., type=!#victordepths:inanimate] at @s[predicate=victordepths:on_quicksand] run playsound entity.generic.swim master @a ~ ~ ~ 0.1 0.5
execute as @e[distance=0.., predicate=victordepths:below_-60] run effect give @s slow_falling 12
execute as @e[distance=0.., predicate=victordepths:below_-60] run effect give @s blindness 3
execute as @e[distance=0.., predicate=victordepths:below_-60] at @s run tp @s ~ 150 ~
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s positioned ~ -200 ~ as @s[distance=..200] run tp @s ~ 5 ~
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run function victordepths:check_uncharted_portal
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=vcd_portal, distance=..1] run function victordepths:from_uncharted
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=open_portal, distance=..1] run function victordepths:to_open
