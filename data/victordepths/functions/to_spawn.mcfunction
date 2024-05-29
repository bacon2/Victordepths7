effect give @p slow_falling 1 9 true
execute as @p run function victordepths:to_spawn_dimension
tag @p add vcd_traveler
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_victordepths"} in victordepths:the_victordepths run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_sanctuary"} in victordepths:the_sanctuary run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_forebodium"} in victordepths:the_forebodium run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_fluffyfunplace"} in victordepths:the_fluffyfunplace run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"minecraft:the_nether"} in minecraft:the_nether run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_great_aquifer"} in victordepths:the_great_aquifer run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_underworld"} in victordepths:the_underworld run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"minecraft:overworld"} in minecraft:overworld run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_weatherkeep"} in victordepths:the_weatherkeep run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_phantom_zone"} in victordepths:the_phantom_zone run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_aweclouds"} in victordepths:the_aweclouds run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_uncharted"} in victordepths:the_uncharted run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_open"} in victordepths:the_open run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"victordepths:the_outside"} in victordepths:the_outside run summon marker 0 70 0 {Tags:[vcd_tper]}
execute if data entity @a[tag=vcd_traveler, limit=1, sort=arbitrary] {SpawnDimension:"minecraft:the_end"} in minecraft:the_end run summon marker 0 70 0 {Tags:[vcd_tper]}
