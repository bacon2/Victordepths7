effect give @s nausea 9 0
execute in victordepths:the_open run forceload add ~ ~ ~ ~
execute in victordepths:the_open run tp @s ~ 128 ~
scoreboard players reset @s time_here
execute in victordepths:the_open run forceload remove ~ ~ ~ ~