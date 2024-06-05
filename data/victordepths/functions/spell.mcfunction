## battle spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtbattle_spell] run effect give @s absorption 30 1
## raid spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtraid_spell] run effect give @s bad_omen 30 4
## monster spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtmonster_spell] run summon ravager ~ ~ ~ {Tags:[illager_ride],Passengers:[{id:"minecraft:minecart",tag:{CustomName:'{"text":"Karter"}'}}]}
## fang spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtfang_spell] run function victordepths:evoker_fangs
## vex spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtvex_spell] run summon vex
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtvex_spell] run summon vex
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtvex_spell] run playsound minecraft:entity.evoker.prepare_summon master @a
## frenzy spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtfrenzy_spell] run function victordepths:frenzy
## heal spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtheal_spell] run effect give @s saturation 60 0
## leash spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtleash_spell] run data modify entity @e[distance=0.1.., type=!#victordepths:inanimate, type=!minecraft:player, nbt=!{Leash:[]}, limit=1, sort=nearest] Leash.UUID set from entity @s UUID
## finding spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtfinding_spell] run loot give @s loot victordepths:magic_map
## compass spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtcompass_spell] run function victordepths:give_spawnpoint_compass
## recovery spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtrecovery_spell] run function victordepths:to_death
## horse spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbthorse_spell] run summon minecraft:zombie_horse ~ ~ ~ {Tame:1b, SaddleItem:{id:"minecraft:saddle",Count:1b}}
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbthorse_spell] run ride @s mount @e[type=zombie_horse, limit=1, sort=nearest, distance=..10]
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbthorse_spell] run playsound minecraft:entity.horse.death master @a ~ ~ ~ 1 0.8
## smelling spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtsmelling_spell] facing entity @e[type=bat, limit=1, sort=nearest] eyes run tp @s ^ ^ ^0.2
## pheromone spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtpheromone_spell] run tag @e[type=!#victordepths:inanimate, type=!#victordepths:zombie_team, distance=0.01..5] add vcd_victim
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtpheromone_spell] at @e[type=#victordepths:zombie_team, distance=..64] run summon snowball ~ ~2.5 ~ {Tags:[vcd_agro], Motion:[0.0d,-0.2d,0.0d]}
execute at @e[tag=vcd_victim] run particle minecraft:dust{color:[1.0,0.2,0.0], scale:3} ~ ~0.5 ~ 1 1 1 1 20 normal
execute as @e[tag=vcd_agro] at @s run data modify entity @s Owner set from entity @e[tag=vcd_victim, limit=1, sort=nearest] UUID
tag @e[tag=vcd_victim] remove vcd_victim
## pack spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtpack_spell] run function victordepths:summon_zombies
## drowned spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtdrowned_spell] run effect give @s minecraft:conduit_power 480 0 false
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtdrowned_spell] run playsound minecraft:entity.zombie.converted_to_drowned master @a
## trio spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbttrio_spell] run function victordepths:summon_elite_zombies
## phantom spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtphantom_spell] run summon minecraft:phantom ~ ~ ~ {Passengers:[{id:"minecraft:minecart",Tags:["karter"],tag:{CustomName:'{"text":"Karter"}'}}], Size:10, NoAI:1b, Tags:["dragon"]}
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtphantom_spell] run ride @s mount @e[tag=karter, limit=1, sort=nearest, distance=..10]
## vex confetti spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtvex_confetti_spell] at @e[type=vex,distance=..100] run function victordepths:confetti
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtvex_confetti_spell] run kill @e[type=vex,distance=..100]
## jump spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtjump_spell] run effect give @s jump_boost 4 10
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtjump_spell] run effect give @s slow_falling 12 10
## fart spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtfart_spell] run function victordepths:fart
## rodeo spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtrodeo_spell] run summon minecraft:guardian ~ ~ ~ {Passengers:[{id:"minecraft:minecart",tag:{CustomName:'{"text":"Karter"}'}}]}
## phantom confetti spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtphantom_confetti_spell] at @e[type=phantom,distance=..100] run function victordepths:confetti
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtphantom_confetti_spell] run kill @e[type=phantom,distance=..100]
## speedy spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtspeedy_spell] run effect give @s speed 10 50
## annoying spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtannoying_spell] run function victordepths:annoying
## fireball spell
execute if entity @e[type=ender_pearl, distance=..3,predicate=victordepths:itemtagnbtfireball_spell] run summon fireball ~ ~1 ~ {Tags:[vcd_spellfire],ExplosionPower:10}
## wrap it up
execute as @e[type=ender_pearl, distance=..3] if data entity @s Item.tag.nbt run kill @s
