effect give @s nausea 9 0
execute in minecraft:overworld run forceload add ~ ~ ~ ~
execute in minecraft:overworld positioned over world_surface run tp @s ~ ~ ~
execute in minecraft:overworld run summon marker ~ ~ ~ {Tags:["spawn_platform"]}
scoreboard players reset @s time_here
execute in minecraft:overworld run forceload remove ~ ~ ~ ~
