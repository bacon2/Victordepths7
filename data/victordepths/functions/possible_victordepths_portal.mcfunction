#corners
execute if block ~-1 ~ ~ obsidian if block ~ ~ ~-1 obsidian positioned ~1 ~ ~1 if predicate victordepths:on_victordepths_portal run function victordepths:victordepths_portal_here
execute if block ~-1 ~ ~ obsidian if block ~ ~ ~1 obsidian positioned ~1 ~ ~-1 if predicate victordepths:on_victordepths_portal run function victordepths:victordepths_portal_here
execute if block ~1 ~ ~ obsidian if block ~ ~ ~-1 obsidian positioned ~-1 ~ ~1 if predicate victordepths:on_victordepths_portal run function victordepths:victordepths_portal_here
execute if block ~1 ~ ~ obsidian if block ~ ~ ~1 obsidian positioned ~-1 ~ ~-1 if predicate victordepths:on_victordepths_portal run function victordepths:victordepths_portal_here
#sides
execute if block ~-1 ~ ~ obsidian positioned ~1 ~ ~ if predicate victordepths:on_victordepths_portal run function victordepths:victordepths_portal_here
execute if block ~1 ~ ~ obsidian positioned ~-1 ~ ~ if predicate victordepths:on_victordepths_portal run function victordepths:victordepths_portal_here
execute if block ~ ~ ~-1 obsidian positioned ~ ~ ~1 if predicate victordepths:on_victordepths_portal run function victordepths:victordepths_portal_here
execute if block ~ ~ ~1 obsidian positioned ~ ~ ~-1 if predicate victordepths:on_victordepths_portal run function victordepths:victordepths_portal_here
execute if predicate victordepths:on_victordepths_portal run function victordepths:victordepths_portal_here