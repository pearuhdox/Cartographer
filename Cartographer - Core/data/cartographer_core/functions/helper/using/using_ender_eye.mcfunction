########################################
# File: Cartographer Core - Using Ender Eye
#
# Author: PearUhDox | Date: 7/5/2021
#
# Description: Called by the using_ender_eye advancement. Sets a score for while using the ender eye,
# and increments a timer score while being drawn.
########################################

advancement revoke @s only cartographer_core:using_ender_eye

scoreboard players set @s ca.is_use_ee 1
scoreboard players add @s ca.use_ee_time 2