execute at @e[type=arrow, limit=1, distance=0.., sort=random, predicate=victordepths:inground1b] run summon minecraft:lightning_bolt
kill @e[type=arrow, limit=1, distance=0.., predicate=victordepths:inground1b]
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=vcd_portal, distance=..1] run function victordepths:from_weatherkeep
execute at @a[distance=0.., predicate=victordepths:on_glowstone] run summon minecraft:lightning_bolt