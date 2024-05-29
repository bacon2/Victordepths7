tellraw @a {"text":"The Unyielding General has been slain!"}
data modify storage minecraft:victordepths illager_boss_dead set value 1
xp add @a[distance=..200] 4000 points
kill @e[tag=illager_boss, predicate=victordepths:absorptionamount00f]
advancement grant @s only victordepths:kill_illager_boss
