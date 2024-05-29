## important game mechanics
execute as @a[scores={vcd_light=1..}] at @s run function victordepths:fire_detection
scoreboard players reset @a vcd_light
execute as @a[tag=vcd_in_portal, scores={time_here=80..}] at @s if entity @e[type=marker, tag=vcd_portal, distance=1..] unless entity @e[tag=vcd_portal, distance=..1.5] run tag @s remove vcd_in_portal
execute as @a[scores={time_here=..1}] at @s run tag @s add vcd_in_portal
execute as @a[scores={illager_rods=3..}] at @s if entity @e[tag=illager_ride, distance=..4] run function victordepths:ravager_tick
execute as @e[tag=ravager_bait] at @s unless entity @p[distance=..15] run tp @s ~ -10000 ~
execute as @e[tag=ravager_bait] at @s unless entity @p[distance=..15] run kill @s
execute as @e[tag=dragon] at @s run function victordepths:dragon_tick
execute as @e[tag=vcd_tper] at @s run function victordepths:tper_to_spawn
execute as @e[tag=vcd_death_tper] at @s run function victordepths:death_tper_to_death
effect give @a[scores={time_here=..1, vcd_oldplayer=1}] resistance 10 5
execute as @e[tag=spawn_platform] at @s if entity @p[distance=..1] run kill @s
execute as @a at @s store result score @s track-y run data get entity @s Pos[1]
execute as @a unless entity @s[scores={vcd_oldplayer=1}] at @s run function victordepths:new_player
execute as @a[predicate=victordepths:in_nether] at @s if block ~ ~ ~ minecraft:nether_portal run scoreboard players set @s time_here 2
execute as @a[predicate=victordepths:in_end] at @s if block ~ ~ ~ minecraft:end_portal run scoreboard players set @s time_here 2
execute as @a[predicate=victordepths:in_end] at @s if block ~ ~-1 ~ minecraft:end_portal run scoreboard players set @s time_here 2
execute as @e[tag=vcd_base, sort=random, limit=1] at @s if loaded ~ ~ ~ run function victordepths:make_sure
## particles
execute as @e[tag=vcd_portal] at @s run function victordepths:portal_particle
## spells
execute as @a[scores={vcd_throw_pearl=1..}] at @s run function victordepths:spell
execute as @a[scores={vcd_throw_pearl=1..}] run scoreboard players reset @s vcd_throw_pearl
## special items
execute as @a[tag=!holding_fusion, predicate=victordepths:holding_fusion] run item modify entity @s weapon.mainhand victordepths:replace_mainhand
tag @a[predicate=victordepths:holding_fusion] add holding_fusion
execute as @a[tag=holding_fusion, predicate=!victordepths:holding_fusion] run tag @s remove holding_fusion
execute as @e[type=snowball, predicate=victordepths:melting_snowball] at @s facing entity @p eyes unless block ^ ^ ^-1 #victordepths:fluids run fill ^ ^ ^ ^ ^ ^1 water[level=15] replace #victordepths:fluids
execute as @a[predicate=!victordepths:in_aweclouds, predicate=!victordepths:in_phantom_zone, tag=vcd_caught] at @s run advancement grant @s only victordepths:break_awecloud_gold_and_escape
execute at @a[predicate=victordepths:wearing_rainwalkers, predicate=!victordepths:sneaking] if entity @p[predicate=!victordepths:in_forebodium,predicate=!victordepths:in_nether] run fill ~ ~-0.1 ~ ~ ~-0.1 ~ water[level=15] replace #victordepths:fluids
execute at @a[predicate=victordepths:splash_landing] if entity @p[predicate=!victordepths:in_forebodium,predicate=!victordepths:in_nether] unless block ^ ^ ^3 #victordepths:permeable run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water[level=15] replace #victordepths:fluids
execute as @a[predicate=victordepths:wearing_dolphinlegs] at @s run effect give @s minecraft:dolphins_grace 5 0 true
## item entities
execute as @e[type=item, tag=!vcd_checked_item] at @s run function victordepths:item_check
#bosses
execute if entity @e[tag=illager_boss] run function victordepths:illager_boss_tick
execute if entity @e[tag=illager_boss_disguised] run function victordepths:disguised_boss_tick
## dimensional ticks
execute if entity @a[predicate=victordepths:in_open] in victordepths:the_open run function victordepths:the_open_tick
execute if entity @a[predicate=victordepths:in_outside] in victordepths:the_outside run function victordepths:the_outside_tick
execute if entity @a[predicate=victordepths:in_aweclouds] in victordepths:the_aweclouds run function victordepths:the_aweclouds_tick
execute if entity @a[predicate=victordepths:in_phantom_zone] in victordepths:the_phantom_zone run function victordepths:the_phantom_zone_tick
execute if entity @a[predicate=victordepths:in_weatherkeep] in victordepths:the_weatherkeep run function victordepths:the_weatherkeep_tick
execute if entity @a[predicate=victordepths:in_overworld] in minecraft:overworld run function victordepths:the_overworld_tick
execute if entity @a[predicate=victordepths:in_underworld] in victordepths:the_underworld run function victordepths:the_underworld_tick
execute if entity @a[predicate=victordepths:in_great_aquifer] in victordepths:the_great_aquifer run function victordepths:the_great_aquifer_tick
execute if entity @a[predicate=victordepths:in_fluffyfunplace] in victordepths:the_fluffyfunplace run function victordepths:the_fluffyfunplace_tick
execute if entity @a[predicate=victordepths:in_forebodium] in victordepths:the_forebodium run function victordepths:the_forebodium_tick
execute if entity @a[predicate=victordepths:in_sanctuary] in victordepths:the_sanctuary run function victordepths:the_sanctuary_tick
execute if entity @a[predicate=victordepths:in_victordepths] in victordepths:the_victordepths run function victordepths:the_victordepths_tick
execute if entity @a[predicate=victordepths:in_uncharted] in victordepths:the_uncharted run function victordepths:the_uncharted_tick
## team stuff
execute as @a[scores={vcd_level_up=1..}] at @s run function victordepths:give_spells
scoreboard players reset @a vcd_level_up
clear @a[tag=vcd_teamed_player] minecraft:rotten_flesh{nbt:"zombifier"}
clear @a[tag=vcd_teamed_player] minecraft:cod{nbt:"nitwit_fish"}
execute as @a[tag=!fun, predicate=victordepths:wearing_fun_flower] at @s run function victordepths:join_fun
execute as @a[tag=vcd_teamed] at @s run function victordepths:team_player_tick
execute as @e[tag=!vcd_teamed, type=!#vcd_inanimate] run function victordepths:team