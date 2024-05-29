execute unless predicate victordepths:on_awecloud_portal if block ~ ~ ~ #minecraft:fire run summon leash_knot ~ ~ ~ {Tags:["vcd_center"]}
execute if block ~ ~-1 ~ crying_obsidian run data merge entity @s {data:{detecting:"fluffyfunplace"}}
execute if block ~ ~-1 ~2 sculk_shrieker run data merge entity @s {data:{detecting:"phantom_zone"}}
execute if block ~ ~-1 ~ weathered_copper run data merge entity @s {data:{detecting:"weatherkeep"}}
execute if block ~ ~-1 ~ gilded_blackstone run data merge entity @s {data:{detecting:"sanctuary"}}
execute if block ~ ~-1 ~ lodestone run data merge entity @s {data:{detecting:"forebodium"}}
execute if block ~ ~-1 ~ mossy_stone_bricks run data merge entity @s {data:{detecting:"uncharted"}}
execute at @e[tag=vcd_center] unless entity @e[tag=vcd_portal, distance=..1] if predicate victordepths:on_portal run function victordepths:light_portal
kill @e[tag=vcd_center]
execute if block ~ ~ ~ #minecraft:fire run kill @s
execute unless entity @p[distance=..10] run kill @s