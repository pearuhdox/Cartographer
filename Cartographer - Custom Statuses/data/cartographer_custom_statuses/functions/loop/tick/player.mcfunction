#Run Cleansing (Players only)
execute if predicate cartographer_custom_statuses:cleansing run function cartographer_custom_statuses:effects/cleansing

#Run Player Blindness and Slow Falling
tag @s remove pot_add_crit

execute if score $blind_crit ca.gamerule matches 1.. run function cartographer_custom_statuses:effects/player/blindness
execute if score $slow_fall_crit ca.gamerule matches 1.. run function cartographer_custom_statuses:effects/player/slow_falling

execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.strength_dur matches 1.. if predicate cartographer_custom_statuses:has_strength run function cartographer_custom_statuses:effects/strength/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1.. run function cartographer_custom_statuses:effects/strength/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1 run function cartographer_custom_statuses:effects/strength/clear
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.strength_dur matches 1.. unless predicate cartographer_custom_statuses:has_strength run function cartographer_custom_statuses:effects/strength/clear

execute if score $percent_str_weak ca.gamerule matches 1.. unless score @s ca.weak_dur matches 1.. if predicate cartographer_custom_statuses:has_weakness run function cartographer_custom_statuses:effects/weakness/get
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1.. run function cartographer_custom_statuses:effects/weakness/do
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1 run function cartographer_custom_statuses:effects/weakness/clear
execute if score $percent_str_weak ca.gamerule matches 1.. if score @s ca.weak_dur matches 1.. unless predicate cartographer_custom_statuses:has_weakness run function cartographer_custom_statuses:effects/weakness/clear


execute if predicate cartographer_custom_statuses:is_stealthed run function cartographer_custom_statuses:effects/player/stealthed
execute if entity @s[tag=ca.stealthed] unless predicate cartographer_custom_statuses:is_stealthed run function cartographer_custom_statuses:effects/stealthed/leave

function cartographer_custom_statuses:effects/player/crit_addition

execute if entity @s[scores={ca.cu_st_dmg=1..},tag=pot_add_crit] at @s run function cartographer_custom_statuses:effects/player/crit_sfx

scoreboard players set @s ca.cu_st_dmg 0