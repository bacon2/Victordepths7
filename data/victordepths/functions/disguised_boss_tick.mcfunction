team join illager @e[tag=illager_boss_disguised]
execute at @e[tag=illager_boss_disguised, limit=1, predicate=!victordepths:zero_hurt_time] run function victordepths:summon_illager_boss
execute as @e[tag=illager_boss_disguised, limit=1, predicate=!victordepths:zero_hurt_time] at @s run kill @s