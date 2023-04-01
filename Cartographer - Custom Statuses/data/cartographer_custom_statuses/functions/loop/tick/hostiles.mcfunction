execute if entity @s[predicate=cartographer_custom_statuses:is_dummy_effected] run function cartographer_custom_statuses:inflict/apply_status

#Run Stunned
execute as @s[scores={ca.effect_stun=1..}] at @s run function cartographer_custom_statuses:tick_effects/stunned/tenacity_calculate
execute as @s[scores={ca.effect_stun_duration=1..}] at @s run function cartographer_custom_statuses:tick_effects/stunned/effect

#Run Possession
execute as @s[scores={ca.possess_time=1..}] at @s run function cartographer_custom_statuses:tick_effects/possession/warmup

#Run Vulnerability
execute if score @s ca.exposed_cdl matches 1.. run scoreboard players remove @s ca.exposed_cdl 1
execute as @s[predicate=cartographer_custom_statuses:is_exposed] at @s run function cartographer_custom_statuses:tick_effects/vulnerability/effect

#Run Blindness
execute as @s[predicate=cartographer_custom_statuses:is_blind] at @s run function cartographer_custom_statuses:effects/blindness

#Run Visuals for Bleed, Shocked, and Cloaked
execute if score @s ca.effect_bleed matches 1.. run function cartographer_custom_statuses:tick_effects/bleeding
execute if score @s ca.effect_infect matches 1.. run function cartographer_custom_statuses:tick_effects/infection
execute if score @s ca.effect_shock matches 1.. run function cartographer_custom_statuses:tick_effects/shocked
execute if score @s ca.effect_cloak matches 1.. run function cartographer_custom_statuses:loop/tick/cloak_branch