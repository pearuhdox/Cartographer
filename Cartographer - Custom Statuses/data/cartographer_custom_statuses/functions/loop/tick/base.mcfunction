#Run Stunned
execute as @e[type=#cartographer_core:hostile,scores={effect_stunned=1..}] at @s run function cartographer_custom_statuses:visuals/stunned

#Run Rage
execute as @e[type=#cartographer_core:hostile,scores={effect_rage=1..}] at @s run function cartographer_custom_statuses:visuals/rage

#Run Vulnerability
execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:31b}]}] at @s run function cartographer_custom_statuses:effects/vulnerability

#Run Blindness
execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:15b}]}] at @s run function cartographer_custom_statuses:effects/blindness

#Run Visuals for Bleed, Shocked, and Cloaked
execute as @e[type=#cartographer_core:hostile,scores={effect_bleed=1..}] at @s run function cartographer_custom_statuses:visuals/bleeding
execute as @e[type=#cartographer_core:hostile,scores={effect_shocked=1..}] at @s run function cartographer_custom_statuses:visuals/shocked
execute as @e[type=#cartographer_core:hostile,scores={effect_cloaked=1..}] at @s run function cartographer_custom_statuses:visuals/cloaked

#Remove 3 seconds of Cloak from damaged enemies with it.
execute as @e[scores={effect_cloaked=1..},nbt={HurtTime:9s}] at @s run function cartographer_custom_statuses:effects/reduce_cloak

schedule function cartographer_custom_statuses:loop/tick/base 1t