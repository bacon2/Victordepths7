summon marker ~-2 ~ ~-2 {Tags:[vcd_potential]}
summon marker ~-2 ~ ~-1 {Tags:[vcd_potential]}
summon marker ~-2 ~ ~ {Tags:[vcd_potential]}
summon marker ~-2 ~ ~1 {Tags:[vcd_potential]}
summon marker ~-2 ~ ~2 {Tags:[vcd_potential]}
summon marker ~-1 ~ ~-2 {Tags:[vcd_potential]}
summon marker ~-1 ~ ~2 {Tags:[vcd_potential]}
summon marker ~ ~ ~-2 {Tags:[vcd_potential]}
summon marker ~ ~ ~2 {Tags:[vcd_potential]}
summon marker ~1 ~ ~-2 {Tags:[vcd_potential]}
summon marker ~1 ~ ~2 {Tags:[vcd_potential]}
summon marker ~2 ~ ~-2 {Tags:[vcd_potential]}
summon marker ~2 ~ ~-1 {Tags:[vcd_potential]}
summon marker ~2 ~ ~ {Tags:[vcd_potential]}
summon marker ~2 ~ ~1 {Tags:[vcd_potential]}
summon marker ~2 ~ ~2 {Tags:[vcd_potential]}
summon marker ~-1 ~ ~-1 {Tags:[vcd_potential]}
summon marker ~-1 ~ ~ {Tags:[vcd_potential]}
summon marker ~-1 ~ ~1 {Tags:[vcd_potential]}
summon marker ~ ~ ~-1 {Tags:[vcd_potential]}
summon marker ~ ~ ~ {Tags:[vcd_potential, vcd_base]}
summon marker ~ ~ ~1 {Tags:[vcd_potential]}
summon marker ~1 ~ ~-1 {Tags:[vcd_potential]}
summon marker ~1 ~ ~ {Tags:[vcd_potential]}
summon marker ~1 ~ ~1 {Tags:[vcd_potential]}
summon marker ~-1 ~1 ~-1 {Tags:[vcd_potential]}
summon marker ~-1 ~1 ~ {Tags:[vcd_potential]}
summon marker ~-1 ~1 ~1 {Tags:[vcd_potential]}
summon marker ~ ~1 ~-1 {Tags:[vcd_potential]}
summon marker ~ ~1 ~ {Tags:[vcd_potential, vcd_base]}
summon marker ~ ~1 ~1 {Tags:[vcd_potential]}
summon marker ~1 ~1 ~-1 {Tags:[vcd_potential]}
summon marker ~1 ~1 ~ {Tags:[vcd_potential]}
summon marker ~1 ~1 ~1 {Tags:[vcd_potential]}
summon marker ~-1 ~2 ~-1 {Tags:[vcd_potential]}
summon marker ~-1 ~2 ~ {Tags:[vcd_potential]}
summon marker ~-1 ~2 ~1 {Tags:[vcd_potential]}
summon marker ~ ~2 ~-1 {Tags:[vcd_potential]}
summon marker ~ ~2 ~ {Tags:[vcd_potential, vcd_base]}
summon marker ~ ~2 ~1 {Tags:[vcd_potential]}
summon marker ~1 ~2 ~-1 {Tags:[vcd_potential]}
summon marker ~1 ~2 ~ {Tags:[vcd_potential]}
summon marker ~1 ~2 ~1 {Tags:[vcd_potential]}
summon marker ~ ~3 ~ {Tags:[vcd_potential]}
execute if predicate victordepths:on_fluffyfunplace_portal run tag @e[tag=vcd_potential] add fluffyfunplace_portal
execute if predicate victordepths:on_awecloud_portal run tag @e[tag=vcd_potential] add aweclouds_portal
execute if predicate victordepths:on_victordepths_portal run tag @e[tag=vcd_potential] add victordepths_portal
execute if predicate victordepths:on_phantom_zone_portal run tag @e[tag=vcd_potential] add phantom_zone_portal
execute if predicate victordepths:on_forebodium_portal run tag @e[tag=vcd_potential] add forebodium_portal
execute if predicate victordepths:on_sanctuary_portal run tag @e[tag=vcd_potential] add sanctuary_portal
execute if predicate victordepths:on_weatherkeep_portal run tag @e[tag=vcd_potential] add weatherkeep_portal
execute if predicate victordepths:on_uncharted_portal run tag @e[tag=vcd_potential] add uncharted_portal
kill @e[tag=vcd_potential, predicate=!victordepths:air_turning_to_portal]
tag @e[tag=vcd_potential] add vcd_portal
execute as @e[tag=vcd_potential] run function victordepths:portal_here
tag @e[tag=vcd_potential] remove vcd_potential