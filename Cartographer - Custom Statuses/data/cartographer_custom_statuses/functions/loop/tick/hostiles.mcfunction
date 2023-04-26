execute if entity @s[predicate=cartographer_custom_statuses:is_dummy_effected] run function cartographer_custom_statuses:inflict/apply_status

#Run Stunned
execute as @s[scores={ca.effect_stun=1..}] at @s run function cartographer_custom_statuses:tick_effects/stunned/tenacity_calculate
execute as @s[scores={ca.effect_stun_duration=1..}] at @s run function cartographer_custom_statuses:tick_effects/stunned/effect

#Run Possession
execute as @s[scores={ca.possess_time=1..}] at @s run function cartographer_custom_statuses:tick_effects/possession/warmup

#Run Exposed
execute unless score @s ca.exposed_dur matches 1.. if predicate cartographer_custom_statuses:is_exposed run function cartographer_custom_statuses:effects/exposed/get
execute if score @s ca.exposed_dur matches 1.. run function cartographer_custom_statuses:effects/exposed/do
execute if score @s ca.exposed_dur matches 1 run function cartographer_custom_statuses:effects/exposed/clear

execute if score @s ca.exposed_cdl matches 1.. run scoreboard players remove @s ca.exposed_cdl 1
execute as @s[predicate=cartographer_custom_statuses:is_exposed] at @s run function cartographer_custom_statuses:tick_effects/vulnerability/effect

#Run Blindness
execute as @s[predicate=cartographer_custom_statuses:is_blind] at @s run function cartographer_custom_statuses:effects/blindness

execute if entity @a[predicate=cartographer_custom_statuses:is_stealthed] run function cartographer_custom_statuses:effects/stealthed/entity

#Run Strength and Weakness Percentage
execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.strength_dur matches 1.. if predicate cartographer_custom_statuses:has_strength run function cartographer_custom_statuses:effects/strength/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1.. run function cartographer_custom_statuses:effects/strength/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1 run function cartographer_custom_statuses:effects/strength/clear

execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.weak_dur matches 1.. if predicate cartographer_custom_statuses:has_weakness run function cartographer_custom_statuses:effects/weakness/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1.. run function cartographer_custom_statuses:effects/weakness/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1 run function cartographer_custom_statuses:effects/weakness/clear


#Run Visuals for Bleed, Shocked, and Cloaked
execute if score @s ca.effect_cloak matches 1.. run function cartographer_custom_statuses:loop/tick/cloak_branch