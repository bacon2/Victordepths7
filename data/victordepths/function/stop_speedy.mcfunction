effect clear @e minecraft:jump_boost
effect clear @e minecraft:slowness
execute as @e[type=#minecraft:impact_projectiles, distance=..64] run data modify entity @s NoGravity set value 0b
tag @s remove vcd_speeding
