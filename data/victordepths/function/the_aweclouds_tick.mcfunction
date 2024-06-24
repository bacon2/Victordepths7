execute as @e[type=#victordepths:awecloud_team, distance=0.., tag=!vcd_awesome] run function victordepths:make_awesome
execute as @p[distance=0..,scores={vcd_steal=1..}] at @s run playsound minecraft:entity.ghast.hurt master @s ~ ~ ~ 10 0.8
tag @p[distance=0..,scores={vcd_steal=1..}] add vcd_caught
execute as @p[distance=0..,scores={vcd_steal=1..}] at @s run advancement grant @s only victordepths:break_awecloud_gold
execute as @p[distance=0..,scores={vcd_steal=1..}] at @s if predicate victordepths:1_in_30 run function victordepths:to_phantom_zone
execute as @e[type=item, predicate=victordepths:itemidminecrafttotem_of_undying, predicate=victordepths:on_awecloud_portal] unless data entity @s {Fire:-1s} at @s run function victordepths:attempt_portal_here
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=vcd_portal, distance=..1] run function victordepths:from_aweclouds
execute as @e[distance=0..] at @s[predicate=victordepths:below_60] run effect give @s minecraft:levitation 7 10
execute as @e[distance=0..] at @s[predicate=victordepths:below_60] run effect give @s minecraft:slow_falling 14 0