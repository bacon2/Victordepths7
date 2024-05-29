# 0
execute rotated 0 0 run function victordepths:spawn_markers_from_base
tag @e[tag=vcd_potential] add vcd_checker
tag @e[tag=vcd_potential] remove vcd_potential
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:block_sensor
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:die_if_portal
#if there are no living portal detectors, stop script. Else, head toward bust
execute unless entity @e[tag=vcd_portal_detector] run data merge entity @s {data:{found:1b}}
kill @e[tag=vcd_sensor]
kill @e[tag=vcd_portal_detector]
# 90
execute rotated 90 0 run function victordepths:spawn_markers_from_base
tag @e[tag=vcd_potential] add vcd_checker
tag @e[tag=vcd_potential] remove vcd_potential
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:block_sensor
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:die_if_portal
#if there are no living portal detectors, stop script. Else, head toward bust
execute unless entity @e[tag=vcd_portal_detector] run data merge entity @s {data:{found:1b}}
kill @e[tag=vcd_sensor]
kill @e[tag=vcd_portal_detector]
# 180
execute rotated 180 0 run function victordepths:spawn_markers_from_base
tag @e[tag=vcd_potential] add vcd_checker
tag @e[tag=vcd_potential] remove vcd_potential
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:block_sensor
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:die_if_portal
#if there are no living portal detectors, stop script. Else, head toward bust
execute unless entity @e[tag=vcd_portal_detector] run data merge entity @s {data:{found:1b}}
kill @e[tag=vcd_sensor]
kill @e[tag=vcd_portal_detector]
# 270
execute rotated 270 0 run function victordepths:spawn_markers_from_base
tag @e[tag=vcd_potential] add vcd_checker
tag @e[tag=vcd_potential] remove vcd_potential
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:block_sensor
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:die_if_portal
#if there are no living portal detectors, stop script. Else, head toward bust
execute unless entity @e[tag=vcd_portal_detector] run data merge entity @s {data:{found:1b}}
kill @e[tag=vcd_sensor]
kill @e[tag=vcd_portal_detector]
# no portal, time to bust
execute unless data entity @s {data:{found:1b}} if loaded ~ ~ ~ unless predicate victordepths:on_portal run function victordepths:bust_portal
kill @e[tag=vcd_checker]
kill @s
