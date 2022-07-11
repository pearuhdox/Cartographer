#Tell Cartographer this pack is in use
scoreboard players set $custom_statuses ca.installed 1

#Run Cleansing (Players only)
execute as @a[nbt={ActiveEffects:[{Id:9,Amplifier:100b}]}] at @s run function cartographer_custom_statuses:effects/cleansing

#Run Player Blindness and Slow Falling
tag @a remove pot_add_crit

execute if score $blind_crit ca.gamerule matches 1.. as @a at @s run function cartographer_custom_statuses:effects/player/blindness
execute if score $slow_fall_crit ca.gamerule matches 1.. as @a at @s run function cartographer_custom_statuses:effects/player/slow_falling

execute as @a at @s run function cartographer_custom_statuses:effects/player/crit_addition

execute as @a[scores={ca.cu_st_dmg=1..},tag=pot_add_crit] at @s run function cartographer_custom_statuses:effects/player/crit_sfx

scoreboard players set @a ca.cu_st_dmg 0

#Run Player Luck Calculator
execute as @a at @s run function cartographer_custom_statuses:effects/player/track_luck