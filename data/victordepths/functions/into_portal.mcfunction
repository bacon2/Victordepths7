#This isn't the only into portal function, it is just for the overworld since it has so many
execute if entity @e[tag=underworld_portal, distance=..1] as @s[type=!minecraft:warden] in victordepths:the_underworld run function victordepths:to_underworld
execute if entity @e[tag=great_aquifer_portal, distance=..1] in victordepths:the_great_aquifer run function victordepths:to_great_aquifer
execute if entity @e[tag=fluffyfunplace_portal, distance=..1] in victordepths:the_fluffyfunplace run function victordepths:to_fluffyfunplace
execute if entity @e[tag=forebodium_portal, distance=..1] in victordepths:the_forebodium run function victordepths:to_forebodium
execute if entity @e[tag=sanctuary_portal, distance=..1] in victordepths:the_sanctuary run function victordepths:to_sanctuary
execute if entity @e[tag=victordepths_portal, distance=..1] in victordepths:the_victordepths run function victordepths:to_victordepths
execute if entity @e[tag=weatherkeep_portal, distance=..1] in victordepths:the_weatherkeep run function victordepths:to_weatherkeep
execute if entity @e[tag=phantom_zone_portal, distance=..1] in victordepths:the_phantom_zone run function victordepths:to_phantom_zone
execute if entity @e[tag=aweclouds_portal, distance=..1] in victordepths:the_aweclouds run function victordepths:to_aweclouds
execute if entity @e[tag=uncharted_portal, distance=..1] in victordepths:the_uncharted run function victordepths:to_uncharted
execute if entity @e[tag=open_portal, distance=..1] in victordepths:the_open run function victordepths:to_open
data modify entity @s PortalCooldown set value 300
