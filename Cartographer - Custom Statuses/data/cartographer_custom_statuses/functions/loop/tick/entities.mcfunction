execute if entity @s[type=#cartographer_core:hostile,predicate=cartographer_custom_statuses:is_dummy_effected] run function cartographer_custom_statuses:inflict/apply_status

#Run Stunned
execute as @s[type=#cartographer_core:hostile,scores={effect_stunned=1..}] at @s run function cartographer_custom_statuses:visuals/stunned

#Run Rage
execute as @s[type=#cartographer_core:hostile,scores={effect_rage=1..}] at @s run function cartographer_custom_statuses:visuals/rage

#Run Vulnerability
execute as @s[type=#cartographer_core:hostile,predicate=cartographer_custom_statuses:is_exposed] at @s run function cartographer_custom_statuses:effects/vulnerability
execute as @s[type=#cartographer_core:hostile,predicate=cartographer_custom_statuses:is_exposed] at @s run function cartographer_custom_statuses:visuals/vulnerability

#Run Blindness
execute as @s[type=#cartographer_core:hostile,predicate=cartographer_custom_statuses:is_blind] at @s run function cartographer_custom_statuses:effects/blindness

#Run Visuals for Bleed, Shocked, and Cloaked
execute if score @s effect_bleed matches 1.. run function cartographer_custom_statuses:visuals/bleeding
execute if score @s effect_infect matches 1.. run function cartographer_custom_statuses:visuals/infection
execute if score @s effect_shocked matches 1.. run function cartographer_custom_statuses:visuals/shocked
execute if score @s effect_cloaked matches 1.. run function cartographer_custom_statuses:loop/tick/cloak_branch