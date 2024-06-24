execute as @a at @s anchored eyes positioned ^ ^ ^6 run tp @e[tag=ravager_bait, distance=..15] ~ ~-3 ~
team join zombie @e[tag=ravager_bait]
execute anchored eyes positioned ^ ^ ^6 unless entity @e[tag=ravager_bait, distance=..5] run summon minecraft:villager ~ ~-3 ~ {Tags:[ravager_bait],NoAI:1b,Silent:1b, VillagerData:{profession:"minecraft:nitwit"},ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b}]}
effect give @e[tag=ravager_bait] minecraft:invisibility 99999 0 true
effect give @e[tag=ravager_bait] minecraft:resistance 99999 4 true
