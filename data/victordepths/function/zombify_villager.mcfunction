summon zombie_villager ~ ~ ~
data modify entity @e[type=zombie_villager, limit=1, sort=nearest] VillagerData set from entity @s VillagerData
data modify entity @e[type=zombie_villager, limit=1, sort=nearest] Offers set from entity @s Offers
data modify entity @e[type=zombie_villager, limit=1, sort=nearest] Brain set from entity @s Brain
effect clear @a[tag=zombie, distance=..10] hunger
effect give @a[tag=zombie, distance=..10] saturation 10
kill @s
