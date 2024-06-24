execute in victordepths:the_phantom_zone run forceload add ~ ~ ~ ~
execute in victordepths:the_phantom_zone run tp @s ~ ~128 ~
execute at @s positioned ~ 384 ~ as @s[distance=..128] run tp @s ~ 250 ~
scoreboard players reset @s time_here
execute in victordepths:the_phantom_zone run forceload remove ~ ~ ~ ~