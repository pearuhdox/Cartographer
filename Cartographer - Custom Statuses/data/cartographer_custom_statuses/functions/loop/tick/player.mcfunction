#Run queues of the status calculator
execute unless score @s ca.core_delay_check matches 1.. if entity @s[tag=ca.core_check_inv] run function cartographer_custom_statuses:calculate/run

#Run Cleansing (Players only)
execute if predicate cartographer_custom_statuses:cleansing run function cartographer_custom_statuses:effects/cleansing

#Run Player Blindness and Slow Falling
tag @s remove pot_add_crit

execute if score $blind_crit ca.gamerule matches 1.. run function cartographer_custom_statuses:player/blindness
execute if score $slow_fall_crit ca.gamerule matches 1.. run function cartographer_custom_statuses:player/slow_falling

execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.strength_dur matches 1.. if predicate cartographer_custom_statuses:has_strength run function cartographer_custom_statuses:effects/strength/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1.. run function cartographer_custom_statuses:effects/strength/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1 run function cartographer_custom_statuses:effects/strength/clear
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1.. unless predicate cartographer_custom_statuses:has_strength run function cartographer_custom_statuses:effects/strength/clear

execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.weak_dur matches 1.. if predicate cartographer_custom_statuses:has_weakness run function cartographer_custom_statuses:effects/weakness/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1.. run function cartographer_custom_statuses:effects/weakness/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1 run function cartographer_custom_statuses:effects/weakness/clear
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1.. unless predicate cartographer_custom_statuses:has_weakness run function cartographer_custom_statuses:effects/weakness/clear


#Run Player Shoot Detection
execute if score @s ca.cs_shoot_bow matches 1.. run function cartographer_custom_statuses:player/check_ranged_attack
execute if score @s ca.cs_shoot_cross matches 1.. run function cartographer_custom_statuses:player/check_ranged_attack
execute if score @s ca.cs_throw_snowball matches 1.. run function cartographer_custom_statuses:player/check_ranged_attack
#cartographer_custom_statuses:bow_allowed_projectile
#execute if score @s ca.cs_throw_trident matches 1.. run function cartographer_custom_statuses:player/check_ranged_attack

scoreboard players set @s ca.cs_shoot_bow 0
scoreboard players set @s ca.cs_shoot_cross 0
scoreboard players set @s ca.cs_throw_trident 0
scoreboard players set @s ca.cs_throw_snowball 0

execute if predicate cartographer_custom_statuses:is_stealthed run function cartographer_custom_statuses:player/stealthed
execute if entity @s[tag=ca.stealthed] unless predicate cartographer_custom_statuses:is_stealthed run function cartographer_custom_statuses:effects/stealthed/leave

function cartographer_custom_statuses:player/crit_addition

execute if entity @s[scores={ca.cu_st_dmg=1..},tag=pot_add_crit] at @s run function cartographer_custom_statuses:player/crit_sfx

scoreboard players set @s ca.cu_st_dmg 0

execute if score @s ca.linger_cdl matches 1.. run scoreboard players remove @s ca.linger_cdl 1