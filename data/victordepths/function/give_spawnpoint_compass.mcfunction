tag @a[sort=random, limit=1] add vcd_victim
summon item ~ ~2 ~ {Tags:["vcd_spawnpoint_compass"],Item:{id:"minecraft:compass",count:1,components:{"minecraft:lodestone_tracker":{tracked:0},"minecraft:custom_name":'{"text":"Spawnpoint Compass","color":"blue","italic":"false"}'}}}
data modify entity @e[tag=vcd_spawnpoint_compass, limit=1] Item.components."minecraft:lodestone_tracker".dimension set from entity @a[tag=vcd_victim, limit=1] SpawnDimension
data modify entity @e[tag=vcd_spawnpoint_compass, limit=1] Item.components."minecraft:lodestone_tracker".target.pos[0] set from entity @a[tag=vcd_victim, limit=1] SpawnX
data modify entity @e[tag=vcd_spawnpoint_compass, limit=1] Item.components."minecraft:lodestone_tracker".target.pos[1] set from entity @a[tag=vcd_victim, limit=1] SpawnZ
tag @a remove vcd_victim
