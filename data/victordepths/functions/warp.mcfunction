playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.8
particle minecraft:sweep_attack ~ ~ ~ 0.2 2 0.2 2 100
execute as @s[scores={warp_to=..-1}] run fill ~ 0 ~ ~ 0 ~ end_portal destroy
tp @s[scores={warp_to=..-1}] ~ 0 ~
execute as @s[scores={warp_to=1}] run function victordepths:downto_victordepths
execute as @s[scores={warp_to=2}] run function victordepths:downto_sanctuary
execute as @s[scores={warp_to=3}] run function victordepths:into_forebodium
execute as @s[scores={warp_to=4}] run function victordepths:downto_fluffyfunplace
execute as @s[scores={warp_to=5}] run function victordepths:into_nether
execute as @s[scores={warp_to=6}] run function victordepths:downto_great_aquifer
execute as @s[scores={warp_to=7}] run function victordepths:into_overworld
execute as @s[scores={warp_to=8}] run function victordepths:downto_open
execute as @s[scores={warp_to=9}] run function victordepths:into_phantom_zone
execute as @s[scores={warp_to=10}] run function victordepths:downto_aweclouds
execute as @s[scores={warp_to=11}] run function victordepths:into_uncharted
execute as @s[scores={warp_to=12..}] run function victordepths:outto_outside
scoreboard players reset @s warp_to
