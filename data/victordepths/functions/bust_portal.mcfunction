playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.5
execute at @e[tag=vcd_checker] run kill @e[tag=vcd_portal, sort=nearest, distance=..1.1]
execute at @e[tag=vcd_checker] run kill @e[tag=vcd_obstruction, sort=nearest, distance=..1.1]
kill @e[tag=vcd_checker]
kill @e[tag=vcd_sensor]
kill @e[tag=vcd_portal_detector]
