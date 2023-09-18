#Run Stunned
execute as @s[scores={ca.effect_stun=1..}] at @s run function cartographer_custom_statuses:tick_effects/stunned/tenacity_calculate
execute as @s[scores={ca.effect_stun_duration=1..}] at @s run function cartographer_custom_statuses:tick_effects/stunned/effect

#Run Possession
execute as @s[scores={ca.possess_time=1..}] at @s run function cartographer_custom_statuses:tick_effects/possession/warmup

#Run Exposed
execute if score @s ca.effect_exposed_duration matches 1.. run function cartographer_custom_statuses:effects/exposed/do
execute if score @s ca.effect_exposed_duration matches 1 run function cartographer_custom_statuses:effects/exposed/clear

execute if score @s ca.exposed_cdl matches 1.. run scoreboard players remove @s ca.exposed_cdl 1
execute as @s[predicate=cartographer_custom_statuses:is_exposed] at @s run function cartographer_custom_statuses:tick_effects/vulnerability/effect

#Run Blindness
execute as @s[predicate=cartographer_custom_statuses:is_blind] at @s run function cartographer_custom_statuses:effects/blindness

execute if entity @a[predicate=cartographer_custom_statuses:is_stealthed] run function cartographer_custom_statuses:effects/stealthed/entity

execute if score @s ca.morph_immune matches 1.. run scoreboard players remove @s ca.morph_immune 1
execute if score @s ca.possess_immune matches 1.. run scoreboard players remove @s ca.possess_immune 1

#Run Strength and Weakness Percentage
execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.strength_dur matches 1.. if predicate cartographer_custom_statuses:has_strength run function cartographer_custom_statuses:effects/strength/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1.. run function cartographer_custom_statuses:effects/strength/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1 run function cartographer_custom_statuses:effects/strength/clear

execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.weak_dur matches 1.. if predicate cartographer_custom_statuses:has_weakness run function cartographer_custom_statuses:effects/weakness/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1.. run function cartographer_custom_statuses:effects/weakness/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1 run function cartographer_custom_statuses:effects/weakness/clear


#Run Visuals for Bleed, Shocked, and Cloaked
execute if score @s ca.effect_cloak matches 1.. run function cartographer_custom_statuses:loop/tick/cloak_branch