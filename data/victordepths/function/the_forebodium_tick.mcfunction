execute at @a[distance=0..] run kill @e[type=item, distance=5..]
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=vcd_portal, distance=..1] run function victordepths:from_forebodium
execute if predicate victordepths:1_in_30 as @e[distance=0..,type=evoker] at @s unless entity @e[type=spider,distance=..5] if predicate victordepths:room_for_spider run function victordepths:evoke_spider
execute as @e[distance=0..,type=evoker, predicate=!victordepths:zero_hurt_time] run ride @s dismount