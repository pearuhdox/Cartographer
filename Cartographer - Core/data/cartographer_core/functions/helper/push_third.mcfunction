########################################
# File: Cartographer Core - Helper / Push Third
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Based on a derived vector, pushes the mob opposite its facing direction.
# The push is one third the magnitude of Push.
########################################

summon armor_stand ^ ^ ^0.33 {Tags:["vector"],NoGravity:1,Invisible:1,Marker:1,Small:1}
execute as @e[type=armor_stand,tag=vector,limit=1,sort=nearest] at @s run tp @s ~ ~-0.3 ~

# Pushes a mob based on a given existing vector armor stand.
execute as @s at @s run function cartographer_core:helper/vector

execute store result entity @s Motion[0] double 0.1 run scoreboard players get @s vectorX
execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s vectorY
execute store result entity @s Motion[2] double 0.1 run scoreboard players get @s vectorZ

kill @e[type=armor_stand,tag=vector]