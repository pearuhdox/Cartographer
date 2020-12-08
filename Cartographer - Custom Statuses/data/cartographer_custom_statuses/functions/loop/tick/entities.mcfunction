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
execute if score @s effect_shocked matches 1.. run function cartographer_custom_statuses:visuals/shocked
execute if score @s effect_cloaked matches 1.. run function cartographer_custom_statuses:loop/tick/cloak_branch