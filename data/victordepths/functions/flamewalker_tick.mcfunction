execute at @a[predicate=victordepths:wearing_flamewalkers] run fill ~ ~-1 ~ ~ ~-1 ~ coarse_dirt replace grass_block
execute at @a[predicate=victordepths:wearing_flamewalkers] run particle smoke ~ ~-1 ~ 0.2 1 0.2 0.1 5
execute at @a[predicate=victordepths:wearing_flamewalkers] positioned ~ ~-0.7 ~ as @e[distance=..0.6] at @s anchored eyes positioned ~ ~-1 ~ unless entity @a[predicate=victordepths:wearing_flamewalkers, distance=..0.5] run execute unless entity @e[type=fireball, distance=..1] at @s run summon minecraft:small_fireball ~ ~ ~ {Power:[0.0d,-0.1d,0.0d],Motion:[0.0d,-0.3d,0.0d]}