########################################
# File: Cartographer Core - Disables / Anvil Raycast
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Find an anvil the player used.
########################################

execute if block ^ ^ ^0.1 #minecraft:anvil run particle minecraft:block_marker minecraft:barrier ^ ^ ^-0.5 0 0 0 10 1 force
execute if block ^ ^ ^0.1 #minecraft:anvil positioned ^ ^ ^0.1 run function cartographer_core:disables/anvil/branch


#particle end_rod ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove @s ca.raycast 1
execute if entity @s[scores={ca.raycast=1..}] unless block ^ ^ ^0.1 minecraft:anvil as @s positioned ^ ^ ^0.1 run function cartographer_core:disables/anvil/raycast