effect give @s nausea 9 0
execute in minecraft:overworld run forceload add ~-16 ~-16 ~16 ~16
execute in minecraft:overworld positioned ~ ~ ~ if loaded ~ ~ ~ if entity @e[tag=vcd_base, tag=weatherkeep_portal, distance=..33, predicate=victordepths:in_overworld] run scoreboard players set @s vcd_portal_ready 1
execute in minecraft:overworld positioned over world_surface if loaded ~ ~ ~ if entity @e[tag=vcd_base, tag=weatherkeep_portal, distance=..33, predicate=victordepths:in_overworld] run scoreboard players set @s vcd_portal_ready 1
execute in minecraft:overworld positioned over world_surface if loaded ~ ~ ~ unless entity @e[tag=vcd_base, tag=weatherkeep_portal, distance=..33, predicate=victordepths:in_overworld] store result score @s vcd_portal_ready run place template victordepths:weatherkeep_portal
execute if score @s vcd_portal_ready matches 1 run function victordepths:from_weatherkeep_2