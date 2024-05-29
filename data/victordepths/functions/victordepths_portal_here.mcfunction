summon leash_knot ~ ~ ~ {Tags:["vcd_center"]}
summon marker ~ ~ ~ {Tags:[vcd_ray], data:{detecting:"victordepths"}}
execute at @e[tag=vcd_center] unless entity @e[tag=vcd_portal, distance=..1] run function victordepths:detect_portal
kill @e[tag=vcd_center]
kill @e[tag=vcd_ray, sort=nearest, limit=1]
kill @s