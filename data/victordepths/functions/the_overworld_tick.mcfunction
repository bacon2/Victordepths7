execute as @e[distance=0..,type=!#victordepths:special_command_entity,predicate=victordepths:portalcooldown0] at @s if entity @e[tag=vcd_portal, distance=..1] run function victordepths:into_portal
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=vcd_portal, distance=..1] run function victordepths:into_portal
execute as @e[type=item, predicate=victordepths:itemidminecrafttotem_of_undying, predicate=victordepths:on_awecloud_portal] unless data entity @s {Fire:-1s} at @s run function victordepths:awecloud_portal_here
execute as @e[type=item, predicate=victordepths:itemidminecraftnether_star] unless data entity @s {Fire:-1s} at @s run summon marker ~ ~ ~ {Tags:["victordepths_portal_checker"]}
execute as @e[tag=victordepths_portal_checker] at @s run function victordepths:possible_victordepths_portal
kill @e[tag=victordepths_portal_checker]
execute as @a[scores={time_here=4, vcd_oldplayer=1}, tag=from_underworld,distance=0..] at @s run function victordepths:check_underworld_portal
execute as @a[scores={time_here=4, vcd_oldplayer=1}, tag=from_underworld,distance=0..] at @s run fill ~ ~ ~ ~ ~1 ~ air destroy
execute as @a[scores={time_here=4, vcd_oldplayer=1}, tag=from_underworld,distance=0..] run tag @s remove from_underworld
execute at @e[type=warden, predicate=victordepths:warden_emerging,distance=0..] run summon marker ~ ~ ~ {Tags:[vcd_portal, underworld_portal, vcd_base]}
execute as @a[distance=0..] at @s if block ~ ~ ~ minecraft:nether_portal run scoreboard players set @s time_here 2
execute as @a[distance=0..] at @s if block ~ ~ ~ minecraft:end_portal run scoreboard players set @s time_here 2
execute as @a[distance=0..] at @s if block ~ ~-1 ~ minecraft:end_portal run scoreboard players set @s time_here 2
