execute as @s[tag=illager, predicate=!victordepths:wearing_illager_mask] run item replace entity @s armor.head with minecraft:player_head[profile={name:'MHF_Illager'}, enchantments={levels:{'minecraft:binding_curse':1,'minecraft:vanishing_curse':1}}, custom_name='{"text":"Illager Loyalty Mask","italic":false,"color":"red"}', minecraft:custom_data={nbt:illager_head}]
execute as @s[tag=piglin, predicate=!victordepths:wearing_piglin_mask] run item replace entity @s armor.head with minecraft:piglin_head[enchantments={levels:{'minecraft:binding_curse':1,'minecraft:vanishing_curse':1}}, custom_name='{"text":"Piglin Loyalty Mask","italic":false,"color":"yellow"}', minecraft:custom_data={nbt:piglin_head}]
execute as @s[tag=wanderer, predicate=!victordepths:wearing_wanderer_mask] run item replace entity @s armor.head with minecraft:player_head[profile={name:'Wandering_Trader'}, enchantments={levels:{'minecraft:binding_curse':1,'minecraft:vanishing_curse':1}}, custom_name='{"text":"Wanderer Loyalty Mask","italic":false,"color":"blue"}', minecraft:custom_data={nbt:wanderer_head}]
execute as @s[tag=zombie, predicate=!victordepths:activeeffectsid29, predicate=victordepths:wearing_zombie_mask] run item replace entity @s armor.head with minecraft:zombie_head[enchantments={levels:{'minecraft:binding_curse':1,'minecraft:vanishing_curse':1}}, custom_name='{"text":"Zombie Loyalty Mask","italic":false,"color":"green"}', minecraft:custom_data={nbt:zombie_head}]
execute as @s[tag=zombie, predicate=victordepths:activeeffectsid29, , predicate=victordepths:wearing_drowned_mask] run item replace entity @s armor.head with minecraft:player_head[profile={name:'MHF_Drowned'},enchantments={levels:{'minecraft:binding_curse':1,'minecraft:vanishing_curse':1}}, custom_name='{"text":"Zombie Loyalty Mask","italic":false,"color":"green"}', minecraft:custom_data={nbt:drowned_head}]
execute as @s[tag=fun, predicate=victordepths:wearing_fun_flower] run item replace entity @s armor.head with minecraft:allium[enchantments={levels:{'minecraft:binding_curse':1,'minecraft:vanishing_curse':1}}, custom_name='{"text":"Fun Flower","italic":false,"color":"#f54ce7"}', minecraft:custom_data={nbt:fun_flower}]
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