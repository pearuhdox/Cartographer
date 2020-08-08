#Run Stunned
execute if entity @e[scores={effect_stunned=1..}] run execute as @e[scores={effect_stunned=1..}] at @s run function cartographer_custom_statuses:visuals/stunned

#Run Rage
execute if entity @e[scores={effect_rage=1..}] run execute as @e[scores={effect_rage=1..}] at @s run function cartographer_custom_statuses:visuals/rage

#Run Vulnerability
execute if entity @e[type=!player,nbt={ActiveEffects:[{Id:31b}]}] run execute as @e[type=!player,nbt={ActiveEffects:[{Id:31b}]}] at @s run function cartographer_custom_statuses:effects/vulnerability

#Run Blindness
execute if entity @e[type=!player,nbt={ActiveEffects:[{Id:15b}]}] run execute as @e[type=!player,nbt={ActiveEffects:[{Id:15b}]}] at @s run function cartographer_custom_statuses:effects/blindness

#Run Visuals for Bleed and Shocked
execute if entity @e[scores={effect_bleed=1..}] run execute as @e[scores={effect_bleed=1..}] at @s run function cartographer_custom_statuses:visuals/bleeding

execute if entity @e[scores={effect_shocked=1..}] run execute as @e[scores={effect_shocked=1..}] at @s run function cartographer_custom_statuses:visuals/shocked

schedule function cartographer_custom_statuses:loop/tick/base 1t


#Run Nausea to Custom Effect Application
execute if entity @e[type=!player,nbt={ActiveEffects:[{Id:9b}]}] run execute as @e[type=!player,nbt={ActiveEffects:[{Id:9b}]}] at @s run function cartographer_custom_statuses:effects/apply_effects