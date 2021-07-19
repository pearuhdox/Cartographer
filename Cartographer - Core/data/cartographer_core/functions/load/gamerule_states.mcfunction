########################################
# File: Cartographer Core - Load / Gamerule States
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Sets the values of 2 constants based on the ca.current world settings.
########################################

execute store result score $cart_cmd_fdbk ca.CONSTANT run gamerule sendCommandFeedback
execute store result score $cart_death_msg ca.CONSTANT run gamerule showDeathMessages