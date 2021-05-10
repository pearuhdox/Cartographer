#Custom Debuff Conversion Chart
# Nausea 10 - Stunned
# Nausea 11 - Shocked
# Nausea 12 - Infection
# Nausea 13 - Bleeding
# Nausea 14 - Cloaked

execute store result score @s time_convert run data get entity @s ActiveEffects[{Id:9b}].Duration
scoreboard players remove @s time_convert 1

scoreboard players operation @s time_convert /= $20 ca.CONSTANT
scoreboard players add @s time_convert 1

execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:10b}]}] run scoreboard players operation @s time_convert *= $20 ca.CONSTANT
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:10b}]}] run scoreboard players operation @s effect_stunned = @s time_convert
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:11b}]}] run scoreboard players operation @s effect_shocked = @s time_convert
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:12b}]}] run scoreboard players operation @s effect_infect = @s time_convert
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:13b}]}] run scoreboard players add @s effect_bleed 0
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:13b}]},scores={effect_bleed=0}] run scoreboard players operation @s effect_bleed = @s time_convert
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:13b}]},scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 11
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:14b}]}] run scoreboard players operation @s effect_cloaked = @s time_convert

effect clear @s nausea