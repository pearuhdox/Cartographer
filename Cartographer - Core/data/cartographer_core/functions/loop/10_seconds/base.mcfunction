########################################
# File: Cartographer Core - Loop / 10 Seconds
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: 10 Second Timer. Runs all Cartographer 10 Second Timers.
# Additional functions can be added to it.
########################################

#Run all Cartographer Effects from Core Timers.

function cartographer_mob_abilities:loop/10_second/reset

execute as @a at @s run function cartographer_core:loop/player/10_second/base

#Function Tag for running things on Cartographer's Clocks
#function #minecraft:cartographer/clocks/10_seconds