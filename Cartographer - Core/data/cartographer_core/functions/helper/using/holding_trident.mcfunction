########################################
# File: Cartographer Core - Holding Trident
#
# Author: PearUhDox | Date: 7/5/2021
#
# Description: Called by the holding_trident advancement. Sets a score for while charging the trident,
# and increments a timer score while being drawn.
########################################

advancement revoke @s only cartographer_core:holding_trident

scoreboard players set @s ca.is_hold_tri 1
scoreboard players add @s ca.hold_tri_time 2