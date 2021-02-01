########################################
# File: Cartographer Core - Load / Fix Gamerules
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Reverts gamerules manipulated by Cartographer to what they should be based on world setting.
########################################

execute if score $cart_cmd_fdbk ca.CONSTANT matches 1 run gamerule sendCommandFeedback true
execute if score $cart_death_msg ca.CONSTANT matches 1 run gamerule showDeathMessages true

execute if score $cart_cmd_fdbk ca.CONSTANT matches 0 run gamerule sendCommandFeedback false
execute if score $cart_death_msg ca.CONSTANT matches 0 run gamerule showDeathMessages false