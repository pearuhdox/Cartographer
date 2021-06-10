########################################
# File: Cartographer Core - Crit Checker
#
# Author: PearUhDox | Date: 3/19/2021
#
# Description: Grabs the player's last y position and current y position. If they are different,
# Give a "can_crit" tag and remove it if otherwise.
########################################

tag @s remove can_crit

scoreboard players operation @s ca.crit_y_past = @s ca.crit_y
execute store result score @s ca.crit_y run data get entity @s Pos[1] 100
scoreboard players operation @s ca.crit_y_comp = @s ca.crit_y_past
scoreboard players operation @s ca.crit_y_comp -= @s ca.crit_y

execute if score @s ca.crit_y_comp matches 1.. run tag @s add can_crit

#summon firework_rocket ~ ~0.5 ~ {Lifetime:20}

execute if entity @s[nbt={ActiveEffects:[{Id:15b}]}] run tag @s remove can_crit

execute if block ~ ~ ~ #cartographer_core:no_crit run tag @s remove can_crit
execute if block ~ ~1 ~ #cartographer_core:no_crit run tag @s remove can_crit

execute if block ~0.3 ~ ~ honey_block run tag @s remove can_crit
execute if block ~0.3 ~1 ~ honey_block run tag @s remove can_crit
execute if block ~ ~ ~-0.3 honey_block run tag @s remove can_crit
execute if block ~ ~1 ~-0.3 honey_block run tag @s remove can_crit
execute if block ~ ~ ~0.3 honey_block run tag @s remove can_crit
execute if block ~ ~1 ~0.3 honey_block run tag @s remove can_crit
execute if block ~ ~ ~-0.3 honey_block run tag @s remove can_crit
execute if block ~ ~1 ~-0.3 honey_block run tag @s remove can_crit