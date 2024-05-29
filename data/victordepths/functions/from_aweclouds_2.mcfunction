tp @s @e[tag=vcd_base, sort=nearest, tag=aweclouds_portal, limit=1, predicate=victordepths:in_overworld]
scoreboard players reset @s time_here
scoreboard players reset @s vcd_steal
execute in minecraft:overworld run forceload remove ~-16 ~-16 ~16 ~16
scoreboard players set @s vcd_portal_ready 0