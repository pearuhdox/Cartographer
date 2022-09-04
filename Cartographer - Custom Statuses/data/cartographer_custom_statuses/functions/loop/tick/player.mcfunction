#Run Cleansing (Players only)
execute if entity @s[predicate=cartographer_custom_statuses:cleansing] run function cartographer_custom_statuses:effects/cleansing

#Run Player Blindness and Slow Falling
tag @s remove pot_add_crit

execute if score $blind_crit ca.gamerule matches 1.. run function cartographer_custom_statuses:effects/player/blindness
execute if score $slow_fall_crit ca.gamerule matches 1.. run function cartographer_custom_statuses:effects/player/slow_falling

function cartographer_custom_statuses:effects/player/crit_addition

execute if entity @s[scores={ca.cu_st_dmg=1..},tag=pot_add_crit] at @s run function cartographer_custom_statuses:effects/player/crit_sfx

scoreboard players set @s ca.cu_st_dmg 0