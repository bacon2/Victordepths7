execute at @e[tag=illager_boss, limit=1, predicate=!victordepths:zero_hurt_time] run summon vex
execute if entity @e[tag=illager_boss, predicate=victordepths:zero_absorption] run function victordepths:illager_boss_victory
execute as @e[tag=illager_boss] at @s unless entity @p[distance=..50] run function victordepths:summon_disguised_boss
execute as @e[tag=illager_boss] at @s unless entity @p[distance=..50] run kill @s
