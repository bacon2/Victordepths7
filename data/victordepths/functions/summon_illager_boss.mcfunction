summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["illager_boss"], HandItems:[{id: "minecraft:blaze_rod", Count: 1b, tag: {nbt: "mind_rod", Enchantments: [{}], display: {Name: '{"text":"Rod of Mind","color":"red", "italic":"false"}'}}},{}],ArmorItems:[{},{},{},{id:"minecraft:amethyst_cluster",Count:1b,tag:{Enchantments:[{}]}}], HandDropChances:[1.0f,1.0f], Health:2000.0f, AbsorptionAmount:100.0f, Silent:1b}
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1
tellraw @a[distance=..15] {"text":"<Unyielding General> I see you are one of us. Join me, and I will let you live."}
give @p[distance=..20] minecraft:player_head{SkullOwner:MHF_Illager, Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}], nbt:illager_head, display:{Name:'{"text":"Illager Loyalty Mask","italic":"false","color":"red"}'}}
