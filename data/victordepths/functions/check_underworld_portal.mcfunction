execute at @e[tag=underworld_portal, sort=nearest, limit=1, distance=..33] run tp @s ~ ~ ~
execute as @e[type=minecraft:player] unless entity @e[tag=vcd_base, sort=nearest, distance=..33] run summon marker ~ ~ ~ {Tags:[vcd_portal, underworld_portal, vcd_base]}
