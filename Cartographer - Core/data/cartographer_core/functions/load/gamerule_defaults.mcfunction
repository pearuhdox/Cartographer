########################################
# File: Cartographer Core - Load / Fix Gamerules
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Reverts gamerules manipulated by Cartographer to what they should be based on world setting.
########################################

execute store result score $cmd_fdbk ca.gamerule run gamerule sendCommandFeedback
execute store result score $day_cycle ca.gamerule run gamerule doDaylightCycle
#execute store result score $death_msg ca.gamerule run gamerule showDeathMessages
execute store result score $forgive ca.gamerule run gamerule forgiveDeadPlayers
execute store result score $imd_res ca.gamerule run gamerule doImmediateRespawn
execute store result score $insomnia ca.gamerule run gamerule doInsomnia
execute store result score $keep_inv ca.gamerule run gamerule keepInventory
execute store result score $mob_grief ca.gamerule run gamerule mobGriefing
execute store result score $nat_spawn ca.gamerule run gamerule doMobSpawning
execute store result score $uni_anger ca.gamerule run gamerule universalAnger
