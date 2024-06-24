execute store result score x vcd_pos run data get entity @s Pos[0] 1000
execute store result score y vcd_pos run data get entity @s Pos[1] 1000
execute store result score z vcd_pos run data get entity @s Pos[2] 1000
tp @s ^ ^ ^1
execute store result score dx vcd_pos run data get entity @s Pos[0] 1000
execute store result score dy vcd_pos run data get entity @s Pos[1] 1000
execute store result score dz vcd_pos run data get entity @s Pos[2] 1000
scoreboard players operation dx vcd_pos -= x vcd_pos
scoreboard players operation dy vcd_pos -= y vcd_pos
scoreboard players operation dz vcd_pos -= z vcd_pos
tp @s ^ ^ ^-1
execute store result entity @s power[0] double 0.001 run scoreboard players get dx vcd_pos
execute store result entity @s power[1] double 0.001 run scoreboard players get dy vcd_pos
execute store result entity @s power[2] double 0.001 run scoreboard players get dz vcd_pos
