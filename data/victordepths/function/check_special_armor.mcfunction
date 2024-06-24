#team masks
execute as @a[tag=!illager, predicate=victordepths:wearing_illager_mask] at @s run function victordepths:join_illager
execute as @a[tag=!piglin, predicate=victordepths:wearing_piglin_mask] at @s run function victordepths:join_piglin
execute as @a[tag=!wanderer, predicate=victordepths:wearing_wanderer_mask] at @s run function victordepths:join_wanderer
advancement revoke @s only victordepths:adjust_illager_head
advancement revoke @s only victordepths:adjust_piglin_head
advancement revoke @s only victordepths:adjust_wanderer_head