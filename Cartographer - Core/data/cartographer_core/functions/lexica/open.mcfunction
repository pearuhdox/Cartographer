########################################
# File: Cartographer Core - Open (Lexica)
#
# Author: PearUhDox | Date: 3/23/2021
#
# Description: Opens the Lexica
########################################

execute if entity @s[gamemode=!creative] run function cartographer_core:give_lexica

execute if entity @s[scores={ca.lexica_sneak=1..}] run function cartographer_core:options/intercept
execute if entity @s[scores={ca.lexica_sneak=0}] run function cartographer_core:lexica/manual

tag @s remove holding_lexica_m
tag @s remove holding_lexica_o
tag @s remove holding_lexica
scoreboard players set @s ca.use_lexica 0