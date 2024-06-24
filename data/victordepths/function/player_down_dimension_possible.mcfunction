#default score 3
execute as @s[predicate=victordepths:dimensionvictordepthsthe_forebodium] at @s run function victordepths:downto_sanctuary
execute as @s[predicate=victordepths:dimensionvictordepthsthe_fluffyfunplace] at @s run function victordepths:downto_forebodium
execute as @s[predicate=victordepths:dimensionminecraftthe_nether] at @s run function victordepths:downto_fluffyfunplace
execute as @s[predicate=victordepths:dimensionvictordepthsthe_great_aquifer] at @s run function victordepths:downto_nether
execute as @s[predicate=victordepths:dimensionvictordepthsthe_underworld] at @s run function victordepths:downto_great_aquifer
execute as @s[scores={track-y=..-61}, predicate=victordepths:dimensionminecraftoverworld] at @s run function victordepths:downto_underworld
execute as @s[predicate=victordepths:dimensionvictordepthsthe_weatherkeep] at @s run function victordepths:downto_overworld
execute as @s[predicate=victordepths:dimensionvictordepthsthe_aweclouds] at @s run function victordepths:downto_phantom_zone
execute as @s[predicate=victordepths:dimensionvictordepthsthe_uncharted] at @s run function victordepths:downto_aweclouds
