effect give @s nausea 9 0
execute in victordepths:the_sanctuary run forceload add ~-16 ~-16 ~16 ~16
execute in victordepths:the_sanctuary positioned ~ ~ ~ if loaded ~ ~ ~ if entity @e[tag=vcd_base, distance=..33, predicate=victordepths:in_sanctuary] run scoreboard players set @s vcd_portal_ready 1
execute unless predicate victordepths:outside_128 in victordepths:the_sanctuary positioned ~ ~ ~ if loaded ~ ~ ~ unless entity @e[tag=vcd_base, distance=..33, predicate=victordepths:in_sanctuary] store result score @s vcd_portal_ready run place template victordepths:sanctuary_portal
execute if predicate victordepths:outside_128 in victordepths:the_sanctuary positioned ~ 63 ~ if loaded ~ 63 ~ unless entity @e[tag=vcd_base, distance=..33, predicate=victordepths:in_sanctuary] store result score @s vcd_portal_ready run place template victordepths:sanctuary_portal
execute if score @s vcd_portal_ready matches 1 run function victordepths:to_sanctuary_2