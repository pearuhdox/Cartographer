execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:19b}]}] run execute as @e[nbt={ActiveEffects:[{Id:9b,Amplifier:19b}]},scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 11

execute if entity @s[nbt={ActiveEffects:[{Id:9b,Amplifier:19b}]}] run execute as @e[nbt={ActiveEffects:[{Id:9b,Amplifier:19b}]}] run execute unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 5


effect clear @s nausea