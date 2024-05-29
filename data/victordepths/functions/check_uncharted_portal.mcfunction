execute at @e[tag=vcd_base, sort=nearest, limit=1, distance=..33] run tp @s ~ ~ ~
execute as @e[type=minecraft:player] unless entity @e[tag=vcd_base, sort=nearest, distance=..33] run function victordepths:generate_uncharted_portal
