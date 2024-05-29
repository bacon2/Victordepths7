execute store success entity @s data.rightBlock byte 1 run data modify entity @e[type=armor_stand, sort=nearest, limit=1] ArmorItems[3] set from entity @s data.Block
#die if it's the right block
execute as @s[predicate=victordepths:datarightblock0b] run kill @s
