effect give @s nausea 9 0
execute in victordepths:the_great_aquifer run forceload add ~ ~ ~ ~
execute in victordepths:the_great_aquifer run tp @s ~ ~ ~
execute at @s positioned ~ 220 ~ as @s[distance=..100] run tp @s ~ 120 ~
execute at @s positioned ~ -200 ~ as @s[distance=..200] run tp @s ~ 5 ~
scoreboard players reset @s time_here
execute in victordepths:the_great_aquifer run forceload remove ~ ~ ~ ~