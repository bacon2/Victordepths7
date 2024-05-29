execute as @s[type=item, tag=!vcd_checked_item, predicate=victordepths:itemtagnbtsoul_coal] if data entity @s Thrower at @s as @p[distance=..10] at @s run function victordepths:soul_coal
execute as @s[predicate=victordepths:itemtagnbtfusion] run data modify entity @s Invulnerable set value 1b
tag @s add vcd_checked_item