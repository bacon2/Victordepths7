execute store result entity @s Pos[0] double 1 run data get entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] LastDeathLocation.pos[0]
execute store result entity @s Pos[1] double 1 run data get entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] LastDeathLocation.pos[1]
execute store result entity @s Pos[2] double 1 run data get entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] LastDeathLocation.pos[2]
tp @e[tag=vcd_traveler] @s
tag @a remove vcd_traveler
kill @s
