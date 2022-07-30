########################################
# File: Cartographer Core - Load / Fix Gamerules
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Reverts gamerules manipulated by Cartographer to what they should be based on past setting.
########################################

execute if score $cmd_fdbk ca.gamerule matches 1 run gamerule sendCommandFeedback true
execute if score $day_cycle ca.gamerule matches 1 run gamerule doDaylightCycle true
#execute if score $death_msg ca.gamerule matches 1 run gamerule showDeathMessages true
execute if score $forgive ca.gamerule matches 1 run gamerule forgiveDeadPlayers true
execute if score $imd_res ca.gamerule matches 1 run gamerule doImmediateRespawn true
execute if score $insomnia ca.gamerule matches 1 run gamerule doInsomnia true
execute if score $keep_inv ca.gamerule matches 1 run gamerule keepInventory true
execute if score $mob_grief ca.gamerule matches 1 run gamerule mobGriefing true
execute if score $nat_spawn ca.gamerule matches 1 run gamerule doMobSpawning true
execute if score $uni_anger ca.gamerule matches 1 run gamerule universalAnger true

execute if score $cmd_fdbk ca.gamerule matches 0 run gamerule sendCommandFeedback false
execute if score $day_cycle ca.gamerule matches 0 run gamerule doDaylightCycle false
#execute if score $death_msg ca.gamerule matches 0 run gamerule showDeathMessages false
execute if score $forgive ca.gamerule matches 0 run gamerule forgiveDeadPlayers false
execute if score $imd_res ca.gamerule matches 0 run gamerule doImmediateRespawn false
execute if score $insomnia ca.gamerule matches 0 run gamerule doInsomnia false
execute if score $keep_inv ca.gamerule matches 0 run gamerule keepInventory false
execute if score $mob_grief ca.gamerule matches 0 run gamerule mobGriefing false
execute if score $nat_spawn ca.gamerule matches 0 run gamerule doMobSpawning false
execute if score $uni_anger ca.gamerule matches 0 run gamerule universalAnger false

scoreboard players set $gmr_freeze ca.mutex 0