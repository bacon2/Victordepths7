execute if entity @a[tag=zombie, distance=..3] unless entity @a[tag=zombie, predicate=victordepths:selecteditemidminecraftbow] if block ^ ^ ^0.3 #victordepths:fluids run tp @s ^ ^ ^0.3
execute if entity @a[tag=zombie, distance=..3] unless block ^ ^-0.2 ^ #victordepths:fluids run tp @s ^ ^0.2 ^
execute if entity @a[tag=zombie, distance=..5] run data modify entity @s Rotation set from entity @a[tag=zombie, sort=nearest, limit=1] Rotation
effect give @e[tag=!zombie, tag=!dragon, type=!#victordepths:zombie_team, type=!#victordepths:inanimate, distance=0.1..4] minecraft:instant_damage 1 10 true
effect give @e[tag=!zombie, tag=!dragon, type=!#victordepths:zombie_team, type=!#victordepths:inanimate, distance=0.1..4] minecraft:instant_health 1 10 true
execute if entity @e[tag=!zombie, tag=!dragon, type=!#victordepths:zombie_team, type=!#victordepths:inanimate, distance=0.1..4] run playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 20
