execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:49b}]}] run scoreboard players add @s[scores={effect_bleed=1..},type=#cartographer_core:hostile] effect_bleed 11
execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:49b}]}] run execute unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 5

execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:59b}]}] run scoreboard players add @s[type=#cartographer_core:hostile] effect_shocked 5

execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:69b}]}] run scoreboard players add @s[type=#cartographer_core:hostile] effect_rage 20

#effect clear @s nausea

say hi