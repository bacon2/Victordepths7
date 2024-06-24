#default score 124
execute as @s[scores={track-y=127..}, predicate=victordepths:dimensionvictordepthsthe_uncharted] at @s run function victordepths:into_open
execute as @s[scores={track-y=255..}, predicate=victordepths:dimensionvictordepthsthe_aweclouds] at @s run function victordepths:into_uncharted
execute as @s[scores={track-y=255..}, predicate=victordepths:dimensionvictordepthsthe_phantom_zone] at @s run function victordepths:into_aweclouds
execute as @s[scores={track-y=127..}, predicate=victordepths:dimensionvictordepthsthe_weatherkeep] at @s run function victordepths:into_phantom_zone
execute as @s[scores={track-y=318..}, predicate=victordepths:dimensionminecraftoverworld] at @s run function victordepths:into_weatherkeep
execute as @s[predicate=victordepths:dimensionvictordepthsthe_underworld] at @s run function victordepths:into_overworld
execute as @s[predicate=victordepths:dimensionvictordepthsthe_great_aquifer] at @s run function victordepths:into_underworld
execute as @s[predicate=victordepths:dimensionminecraftthe_nether] at @s run function victordepths:into_great_aquifer
execute as @s[predicate=victordepths:dimensionvictordepthsthe_fluffyfunplace] at @s run function victordepths:into_nether
execute as @s[predicate=victordepths:dimensionvictordepthsthe_forebodium] at @s run function victordepths:into_fluffyfunplace
execute as @s[predicate=victordepths:dimensionvictordepthsthe_sanctuary] at @s run function victordepths:into_forebodium