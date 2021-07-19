########################################
# File: Cartographer Core - Loading Crossbow
#
# Author: PearUhDox | Date: 7/5/2021
#
# Description: Called by the loading_crossbow advancement. Sets a score for while loading the crossbow,
# and increments a timer score while being drawn.
########################################

advancement revoke @s only cartographer_core:loading_crossbow

scoreboard players set @s ca.is_load_cro 1
scoreboard players add @s ca.load_cro_time 2