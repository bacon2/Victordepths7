execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run function victordepths:check_underworld_portal
execute as @a[distance=0..,scores={time_here=4, vcd_oldplayer=1}] at @s run fill ~ ~ ~ ~ ~2 ~ air destroy
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=vcd_portal, distance=..1] run tag @s add from_underworld
execute as @a[distance=0..,scores={time_here=80..},tag=!vcd_in_portal] at @s if entity @e[tag=vcd_portal, distance=..1] run function victordepths:to_overworld
execute at @e[distance=0..,type=warden, predicate=victordepths:brainmemoriesminecraftis_emergingttl133l] run summon marker ~ ~ ~ {Tags:[vcd_portal, underworld_portal, vcd_base]}
