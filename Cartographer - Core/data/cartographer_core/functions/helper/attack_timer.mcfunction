########################################
# File: Cartographer Core - Swing Checker
#
# Author: PearUhDox | Date: 3/19/2021
#
# Description: Triggers when the player attacks. Gets the player's attack speed,
# converts to Seconds/Attack from Attacks/Second. Sets the recharge score to that val * 20.
# Divide by 2 on total ticks to account for partially acceptable charged attacks.
########################################

execute store result score @s ca.atk_spd_val run attribute @s minecraft:generic.attack_speed get 100
scoreboard players set @s ca.atk_time 10000

scoreboard players operation @s ca.atk_time /= @s ca.atk_spd_val

scoreboard players operation @s ca.atk_time *= $20 ca.CONSTANT
scoreboard players operation @s ca.atk_time /= $100 ca.CONSTANT
scoreboard players operation @s ca.atk_time /= $2 ca.CONSTANT