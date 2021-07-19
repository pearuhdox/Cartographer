########################################
# File: Cartographer Core - Drawing Bow
#
# Author: PearUhDox | Date: 7/5/2021
#
# Description: Called by the drawing_bow advancement. Sets a score for while charging the bow,
# and increments a timer score while being drawn.
########################################

advancement revoke @s only cartographer_core:drawing_bow

scoreboard players set @s ca.is_draw_bow 1
scoreboard players add @s ca.draw_bow_time 2