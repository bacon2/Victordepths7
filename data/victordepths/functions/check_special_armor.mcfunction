#fusion armor
execute as @a[tag=!fusion_boots, predicate=victordepths:fusion_boots] run item modify entity @s armor.feet victordepths:replace_boots
execute as @a[predicate=victordepths:fusion_boots] run tag @s add fusion_boots
execute as @a[tag=fusion_boots,predicate=!victordepths:fusion_boots] run tag @s remove fusion_boots
execute as @a[tag=!fusion_leggings, predicate=victordepths:fusion_leggings] run item modify entity @s armor.legs victordepths:replace_leggings
execute as @a[predicate=victordepths:fusion_leggings] run tag @s add fusion_leggings
execute as @a[tag=fusion_leggings,predicate=!victordepths:fusion_leggings] run tag @s remove fusion_leggings
execute as @a[tag=!fusion_chestplate, predicate=victordepths:fusion_chestplate] run item modify entity @s armor.chest victordepths:replace_chestplate
execute as @a[predicate=victordepths:fusion_chestplate] run tag @s add fusion_chestplate
execute as @a[tag=fusion_chestplate,predicate=!victordepths:fusion_chestplate] run tag @s remove fusion_chestplate
#team masks
execute as @a[tag=!illager, predicate=victordepths:wearing_illager_mask] at @s run function victordepths:join_illager
execute as @a[tag=!piglin, predicate=victordepths:wearing_piglin_mask] at @s run function victordepths:join_piglin
execute as @a[tag=!wanderer, predicate=victordepths:wearing_wanderer_mask] at @s run function victordepths:join_wanderer
advancement revoke @s only victordepths:adjust_fusion
advancement revoke @s only victordepths:adjust_illager_head
advancement revoke @s only victordepths:adjust_piglin_head
advancement revoke @s only victordepths:adjust_wanderer_head