tellraw @s {"text":"Congratulations Champion! Now you may pass into The Victordepths", "color":"green"}
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:structure_block{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "Victordepths", rotation: "NONE", posX: -5, mode: "LOAD", posY: -3, sizeX: 11, posZ: -5, integrity: 1.0f, showair: 0b, x: -13, name: "victordepths:victor_portal", y: 43, z: -9, id: "minecraft:structure_block", sizeY: 15, sizeZ: 12, showboundingbox: 1b}
execute at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air
execute at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:redstone_block
