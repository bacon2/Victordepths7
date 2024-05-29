tp @s @e[tag=vcd_base, sort=nearest, limit=1, predicate=victordepths:in_aweclouds]
scoreboard players reset @s time_here
scoreboard players reset @s vcd_steal
execute in victordepths:the_aweclouds run forceload remove ~-16 ~-16 ~16 ~16
advancement revoke @s only victordepths:give_heavengold
scoreboard players set @s vcd_portal_ready 0