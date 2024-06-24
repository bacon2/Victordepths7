execute as @s[tag=!vcd_speeding] run playsound minecraft:entity.evoker.cast_spell master @a
effect give @e[distance=..32, tag=!vcd_speedy] minecraft:jump_boost 1 250 true
effect give @e[distance=..32, tag=!vcd_speedy] minecraft:slowness 1 128 true
execute as @e[type=#minecraft:impact_projectiles, distance=..32] run data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
execute as @e[type=#minecraft:impact_projectiles, distance=..32] run data modify entity @s NoGravity set value 1b
effect give @s speed 1 10 true
particle minecraft:electric_spark ~ ~ ~ 1 1 1 1 100
tag @s add vcd_speeding
