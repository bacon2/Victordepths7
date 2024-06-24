execute at @a run playsound minecraft:music_disc.chirp master @a ~ ~ ~ 100 2
execute at @a run summon guardian
tellraw @a [{"selector":"@s", "color":"#f54ce7"}, {"text":" is being annoying.", "color":"#f54ce7"}]
effect give @a minecraft:nausea 10
