execute at @e[tag=vcd_potential] unless block ~ ~ ~ #victordepths:fluids run function victordepths:portal_fail
tag @e[tag=vcd_potential] add vcd_portal
execute as @e[tag=vcd_potential] at @s run function victordepths:portal_here
tag @e remove vcd_potential
