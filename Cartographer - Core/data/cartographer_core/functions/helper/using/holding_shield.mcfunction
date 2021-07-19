########################################
# File: Cartographer Core - Holding Shield
#
# Author: PearUhDox | Date: 7/5/2021
#
# Description: Called by the holding_shield advancement. Sets a score for while holding the shield,
# and increments a timer score while being drawn.
########################################

advancement revoke @s only cartographer_core:holding_shield

scoreboard players set @s ca.is_hold_shi 1
scoreboard players add @s ca.hold_shi_time 2