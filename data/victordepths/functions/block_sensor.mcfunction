summon armor_stand ~ ~ ~ {Tags:[vcd_sensor],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b}
execute as @e[tag=vcd_sensor, limit=1, sort=nearest] run loot replace entity @s armor.head mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
