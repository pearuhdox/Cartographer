########################################
# File: Cartographer Core - Loop / 1 Second
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: One Second Timer. Runs all Cartographer 1 Second Timers.
# Additional functions can be added to it.
########################################

#Run all Cartographer Effects from Core Timers.

schedule function cartographer_custom_enchantments:loop/1_second/base 1s
schedule function cartographer_custom_statuses:loop/1_second/base 1s
schedule function cartographer_mob_abilities:loop/1_second/base 1s
schedule function cartographer_repair_stations:loop/1_second/base 1s

#Add any extra functions here!


#Add any extra functions above.

schedule function cartographer_core:loop/1_second/base 1s