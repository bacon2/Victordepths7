execute unless predicate victordepths:on_awecloud_portal if block ~ ~ ~ #minecraft:fire run summon leash_knot ~ ~ ~ {Tags:["vcd_center"]}
execute at @e[tag=vcd_center] unless entity @e[tag=vcd_portal, distance=..1] if predicate victordepths:on_portal run function victordepths:spawn_potential_portal_cloud
kill @e[tag=vcd_center]
execute if block ~ ~ ~ #minecraft:fire run kill @s
execute unless entity @p[distance=..10] run kill @s