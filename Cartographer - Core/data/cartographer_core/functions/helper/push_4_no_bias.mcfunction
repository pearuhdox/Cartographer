########################################
# File: Cartographer Core - Helper / Push 4
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Based on a derived vector, pushes the mob opposite its facing direction.
# The push is four times the magnitude of Push.
########################################

execute as @s at @s run tp @e[type=armor_stand,tag=vector] ^ ^ ^5
execute as @e[type=armor_stand,tag=vector,limit=1,sort=nearest] at @s run tp @s ~ ~-0.4 ~

# Pushes a mob based on a given existing vector armor stand.
execute as @s at @s run function cartographer_core:helper/vector

scoreboard players add @s vectorY 5

execute store result entity @s Motion[0] double 0.1 run scoreboard players get @s vectorX
execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s vectorY
execute store result entity @s Motion[2] double 0.1 run scoreboard players get @s vectorZ

tp @e[type=armor_stand,tag=vector] 4206900 256 4206900