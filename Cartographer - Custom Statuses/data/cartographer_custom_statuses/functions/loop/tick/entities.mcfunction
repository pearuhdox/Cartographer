execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:10b}]}] run function cartographer_custom_statuses:inflict/apply_status
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:11b}]}] run function cartographer_custom_statuses:inflict/apply_status
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:12b}]}] run function cartographer_custom_statuses:inflict/apply_status
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:13b}]}] run function cartographer_custom_statuses:inflict/apply_status
execute if entity @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:14b}]}] run function cartographer_custom_statuses:inflict/apply_status

#Run Stunned
execute as @s[type=#cartographer_core:hostile,scores={effect_stunned=1..}] at @s run function cartographer_custom_statuses:visuals/stunned

#Run Rage
execute as @s[type=#cartographer_core:hostile,scores={effect_rage=1..}] at @s run function cartographer_custom_statuses:visuals/rage

#Run Vulnerability
execute as @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:31b}]}] at @s run function cartographer_custom_statuses:effects/vulnerability

#Run Blindness
execute as @s[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:15b}]}] at @s run function cartographer_custom_statuses:effects/blindness

#Run Visuals for Bleed, Shocked, and Cloaked
execute if score @s effect_bleed matches 1.. run function cartographer_custom_statuses:visuals/bleeding
execute if score @s effect_infect matches 1.. run function cartographer_custom_statuses:visuals/infection
execute if score @s effect_shocked matches 1.. run function cartographer_custom_statuses:visuals/shocked
execute if score @s effect_cloaked matches 1.. run function cartographer_custom_statuses:loop/tick/cloak_branch