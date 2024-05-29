effect give @s nausea 9 0
execute in victordepths:the_aweclouds run forceload add ~-16 ~-16 ~16 ~16
execute in victordepths:the_aweclouds positioned ~ ~64 ~ if loaded ~ ~ ~ if entity @e[tag=vcd_base, distance=..33, predicate=victordepths:in_aweclouds] run scoreboard players set @s vcd_portal_ready 1
#execute in victordepths:the_aweclouds positioned ~ ~64 ~ if loaded ~ ~ ~ if entity @e[tag=vcd_base, distance=..33, predicate=victordepths:in_aweclouds] run say close option
execute in victordepths:the_aweclouds positioned ~ ~64 ~ if loaded ~ ~ ~ unless entity @e[tag=vcd_base, distance=..33, predicate=victordepths:in_aweclouds] store result score @s vcd_portal_ready run place template victordepths:aweclouds_portal
execute if score @s vcd_portal_ready matches 1 run function victordepths:to_aweclouds_2