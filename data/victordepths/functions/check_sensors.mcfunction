execute store success entity @s data.rightBlock byte 1 run data modify entity @e[type=armor_stand, sort=nearest, limit=1] ArmorItems[3] set from entity @s data.Block
execute as @s[predicate=victordepths:datarightblock1b] run function victordepths:portal_fail
