tp @s @e[tag=vcd_base, sort=nearest, limit=1, predicate=victordepths:in_weatherkeep]
scoreboard players reset @s time_here
execute in victordepths:the_weatherkeep run forceload remove ~-16 ~-16 ~16 ~16
scoreboard players set @s vcd_portal_ready 0