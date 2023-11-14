#Run Bleeding
execute if score @s ca.effect_bleed matches 1.. run function cartographer_custom_statuses:effects/bleeding/effect

#Run Shocking
execute if score @s ca.effect_shock matches 1.. run function cartographer_custom_statuses:effects/shocked/effect

#Run Infection
execute if score @s ca.effect_infect matches 1.. run function cartographer_custom_statuses:effects/infect/effect

#Run Stunned
execute as @s[scores={ca.effect_stun=1..}] at @s run function cartographer_custom_statuses:tick_effects/stunned/tenacity_calculate
execute as @s[scores={ca.effect_stun_duration=1..}] at @s run function cartographer_custom_statuses:tick_effects/stunned/effect

#Run Charmed
execute if score @s ca.charm_time matches 1.. if score @s ca.effect_charmed matches 1.. run function cartographer_custom_statuses:tick_effects/charmed/warmup

#Run Oiled
execute if score @s ca.effect_oiled_duration matches 1.. run function cartographer_custom_statuses:effects/oiled/do
execute if score @s ca.effect_oiled_duration matches 1 run function cartographer_custom_statuses:effects/oiled/clear

#Run Shackled
execute if score @s ca.effect_shackled matches 1.. run function cartographer_custom_statuses:effects/shackled/do
execute if score @s ca.shackled_cdl matches 1.. run scoreboard players remove @s ca.shackled_cdl 1

#Run Brittle
execute if score @s ca.brittle_cdl matches 200 run function cartographer_custom_statuses:effects/brittle/detonate

execute if score @s ca.effect_brittle_duration matches 1.. run function cartographer_custom_statuses:effects/brittle/do
execute if score @s ca.effect_brittle_duration matches 1 run function cartographer_custom_statuses:effects/brittle/clean

execute if score @s ca.brittle_cdl matches 1.. run scoreboard players remove @s ca.brittle_cdl 1

#Run Exposed (After these effects for damage purposes)
execute if score @s ca.effect_exposed_duration matches 1.. run function cartographer_custom_statuses:effects/exposed/do
execute if score @s ca.effect_exposed_duration matches 1 run function cartographer_custom_statuses:effects/exposed/clear

execute if score @s ca.exposed_cdl matches 1.. run scoreboard players remove @s ca.exposed_cdl 1

#Run Blindness
execute as @s[predicate=cartographer_custom_statuses:is_blind] at @s run function cartographer_custom_statuses:effects/blindness

execute if entity @a[predicate=cartographer_custom_statuses:is_stealthed] run function cartographer_custom_statuses:effects/stealthed/entity

execute if score @s ca.morph_immune matches 1.. run scoreboard players remove @s ca.morph_immune 1
execute if score @s ca.charm_immune matches 1.. run scoreboard players remove @s ca.charm_immune 1

#Run Strength and Weakness Percentage
execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.strength_dur matches 1.. if predicate cartographer_custom_statuses:has_strength run function cartographer_custom_statuses:effects/strength/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1.. run function cartographer_custom_statuses:effects/strength/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1 run function cartographer_custom_statuses:effects/strength/clear

execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.weak_dur matches 1.. if predicate cartographer_custom_statuses:has_weakness run function cartographer_custom_statuses:effects/weakness/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1.. run function cartographer_custom_statuses:effects/weakness/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1 run function cartographer_custom_statuses:effects/weakness/clear


#Run Visuals for Bleed, Shocked, and Cloaked
execute if score @s ca.effect_cloak matches 1.. run function cartographer_custom_statuses:loop/tick/cloak_branch


#Teleport AECs to mobs
execute if score $timer ca.aec_to_mob matches 1.. as @s[tag=!ca.lingering] at @s run function cartographer_custom_statuses:apply_effects/apply/aec_to_mob
execute if score $timer ca.aec_to_mob matches 1 run scoreboard players set @s ca.aec_to_mob 0