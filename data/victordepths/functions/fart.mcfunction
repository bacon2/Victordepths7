playsound minecraft:entity.bee.hurt master @a ~ ~ ~ 100 0.9
playsound minecraft:entity.bee.hurt master @a ~ ~ ~ 50 0.6
particle minecraft:sneeze ^ ^-0.1 ^-3 0.5 0.5 0.5 0 10 force
playsound minecraft:entity.spider.step master @a ~ ~ ~ 100 0.5
execute positioned ^ ^-0.1 ^-3 run effect give @a[distance=..2] nausea
