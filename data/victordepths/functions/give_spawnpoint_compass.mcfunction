tag @a[sort=random, limit=1] add vcd_victim
summon item ~ ~2 ~ {Tags:["vcd_spawnpoint_compass"],Item:{id:"minecraft:compass",Count:1b,tag:{LodestoneTracked:0b,display:{Name:'{"text":"Spawnpoint Compass","color":"blue","italic":"false"}'}}}}
data modify entity @e[tag=vcd_spawnpoint_compass, limit=1] Item.tag.LodestoneDimension set from entity @a[tag=vcd_victim, limit=1] SpawnDimension
data modify entity @e[tag=vcd_spawnpoint_compass, limit=1] Item.tag.LodestonePos.X set from entity @a[tag=vcd_victim, limit=1] SpawnX
data modify entity @e[tag=vcd_spawnpoint_compass, limit=1] Item.tag.LodestonePos.X set from entity @a[tag=vcd_victim, limit=1] SpawnZ
tag @a remove vcd_victim
