# 0
execute rotated 0 0 run function victordepths:spawn_markers_from_ray
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:block_sensor
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:check_sensors
kill @e[tag=vcd_sensor]
kill @e[tag=vcd_portal_detector]
function victordepths:check_success
# 90 
execute rotated 90 0 run function victordepths:spawn_markers_from_ray
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:block_sensor
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:check_sensors
kill @e[tag=vcd_sensor]
kill @e[tag=vcd_portal_detector]
function victordepths:check_success
# 180 (for asymetrical)
execute rotated 180 0 run function victordepths:spawn_markers_from_ray
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:block_sensor
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:check_sensors
kill @e[tag=vcd_sensor]
kill @e[tag=vcd_portal_detector]
function victordepths:check_success
# 270 (for asymetrical)
execute rotated 270 0 run function victordepths:spawn_markers_from_ray
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:block_sensor
execute as @e[tag=vcd_portal_detector] at @s run function victordepths:check_sensors
kill @e[tag=vcd_sensor]
kill @e[tag=vcd_portal_detector]
function victordepths:check_success