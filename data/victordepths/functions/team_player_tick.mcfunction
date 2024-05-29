execute as @s[tag=illager, nbt=!{Inventory:[{Slot:103b, tag:{nbt:illager_head}}]}] run item replace entity @s armor.head with minecraft:player_head{SkullOwner:MHF_Illager, Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}], nbt:illager_head, display:{Name:'{"text":"Illager Loyalty Mask","italic":"false","color":"red"}'}}
execute as @s[tag=piglin, nbt=!{Inventory:[{Slot:103b, tag:{nbt:piglin_head}}]}] run item replace entity @s armor.head with minecraft:piglin_head{Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}], nbt:piglin_head, display:{Name:'{"text":"Piglin Loyalty Mask","italic":"false","color":"yellow"}'}}
execute as @s[tag=wanderer, nbt=!{Inventory:[{Slot:103b, tag:{nbt:wanderer_head}}]}] run item replace entity @s armor.head with minecraft:player_head{SkullOwner:Wandering_Trader, Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}], nbt:wanderer_head, display:{Name:'{"text":"Wanderer Loyalty Mask","italic":"false","color":"blue"}'}}
execute as @s[tag=zombie, nbt=!{ActiveEffects:[{id:29}]}, nbt=!{Inventory:[{Slot:103b, tag:{nbt:zombie_head}}]}] run item replace entity @s armor.head with minecraft:zombie_head{Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}], nbt:zombie_head, display:{Name:'{"text":"Zombie Loyalty Mask","italic":"false","color":"green"}'}}
execute as @s[tag=zombie, predicate=victordepths:activeeffectsid29, nbt=!{Inventory:[{Slot:103b, tag:{nbt:drowned_head}}]}] run item replace entity @s armor.head with minecraft:player_head{Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}], nbt:drowned_head, display:{Name:'{"text":"Zombie Loyalty Mask","italic":"false","color":"green"}'},SkullOwner:{id:[I;790009440,1639859901,-1397417282,-100772047],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNmN2NjZjYxZGJjM2Y5ZmU5YTYzMzNjZGUwYzBlMTQzOTllYjJlZWE3MWQzNGNmMjIzYjNhY2UyMjA1MSJ9fX0="}]}}}
execute as @s[tag=fun, nbt=!{Inventory:[{Slot:103b, tag:{nbt:fun_flower}}]}] run item replace entity @s armor.head with minecraft:allium{Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}], nbt:fun_flower, display:{Name:'{"text":"Fun Flower","italic":"false","color":"#f54ce7"}'}}
execute as @s[tag=illager, scores={vcd_kill_evoker=1..}] run tellraw @a [{"selector":"@s", "color":"#f54ce7"}, {"text":" has betrayed the Illagers and lost all power", "color":"#f54ce7"}]
execute as @s[tag=illager, scores={vcd_kill_evoker=1..}] run function victordepths:leave_team
execute as @s[tag=piglin, scores={vcd_kill_piglin=1..}] run tellraw @a [{"selector":"@s", "color":"#f54ce7"}, {"text":" has betrayed the Piglins and lost all power", "color":"#f54ce7"}]
execute as @s[tag=piglin, scores={vcd_kill_piglin=1..}] run function victordepths:leave_team
execute as @s[tag=zombie, scores={vcd_kill_zombie=1..}] run tellraw @a [{"selector":"@s", "color":"#f54ce7"}, {"text":" has betrayed the Zombies and lost all power", "color":"#f54ce7"}]
execute as @s[tag=zombie, scores={vcd_kill_husk=1..}] run tellraw @a [{"selector":"@s", "color":"#f54ce7"}, {"text":" has betrayed the Zombies and lost all power", "color":"#f54ce7"}]
execute as @s[tag=zombie, scores={vcd_kill_drowned=1..}] run tellraw @a [{"selector":"@s", "color":"#f54ce7"}, {"text":" has betrayed the Zombies and lost all power", "color":"#f54ce7"}]
execute as @s[tag=zombie, scores={vcd_kill_husk=1..}] run function victordepths:leave_team
execute as @s[tag=zombie, scores={vcd_kill_zombie=1..}] run function victordepths:leave_team
execute as @s[tag=zombie, scores={vcd_kill_drowned=1..}] run function victordepths:leave_team
execute as @s[tag=wanderer, scores={vcd_kill_wandering_trader=1..}] run tellraw @a [{"selector":"@s", "color":"#f54ce7"}, {"text":" has betrayed the Wanderers and lost all power", "color":"#f54ce7"}]
execute as @s[tag=wanderer, scores={vcd_kill_wandering_trader=1..}] run function victordepths:leave_team
execute as @s[tag=zombie, gamemode=survival, predicate=victordepths:in_skylight, predicate=!victordepths:burning] at @s run summon minecraft:small_fireball ~ ~2.2 ~ {power:[0.0d,-0.1d,0.0d],Motion:[0.0d,-0.4d,0.0d]}
execute as @s[tag=zombie] at @s if entity @e[type=villager, distance=..16] run effect give @s hunger 10 50
execute as @s[tag=zombie, scores={vcd_deal_damage=1..}] at @s if entity @e[type=#victordepths:zombie_huntable, distance=..200, predicate=!victordepths:zero_hurt_time] run execute as @e[type=villager, limit=1, predicate=!victordepths:zero_hurt_time] at @s run function victordepths:zombify_villager
execute if predicate victordepths:1_in_8 run scoreboard players reset @s[tag=zombie] vcd_deal_damage
execute as @s[tag=fun] at @s if block ~ ~-1 ~ purple_wool run effect give @s minecraft:speed 1 9
execute at @s[tag=fun, predicate=victordepths:sneaking] if block ~ ~-1 ~ #victordepths:fluids run playsound minecraft:entity.chicken.egg master @a
execute at @s[tag=fun, predicate=victordepths:sneaking] run fill ~ ~-1 ~ ~ ~-1 ~ purple_wool replace #victordepths:fluids
#advancements
execute as @s[tag=illager, scores={vcd_kill_wanderer=1..}] run advancement grant @s only victordepths:kill_1_wanderer
execute as @s[tag=illager, scores={vcd_kill_wanderer=10..}] run advancement grant @s only victordepths:kill_10_wanderer
execute as @s[tag=illager, scores={vcd_kill_wanderer=100..}] run advancement grant @s only victordepths:kill_100_wanderer
execute as @s[tag=illager, scores={vcd_kill_villager=1..}] run advancement grant @s only victordepths:kill_1_villager
execute as @s[tag=illager, scores={vcd_kill_villager=10..}] run advancement grant @s only victordepths:kill_10_villager
execute as @s[tag=illager, scores={vcd_kill_villager=100..}] run advancement grant @s only victordepths:kill_100_villager