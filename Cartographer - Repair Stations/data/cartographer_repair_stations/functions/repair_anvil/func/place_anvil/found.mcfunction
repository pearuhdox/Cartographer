scoreboard players set $raycast_steps ca.repair_anvil_master 0

execute if block ~ ~ ~ anvil[facing=east] run scoreboard players set $anvil_facing ca.repair_anvil_master 1
execute if block ~ ~ ~ anvil[facing=west] run scoreboard players set $anvil_facing ca.repair_anvil_master 2
execute if block ~ ~ ~ anvil[facing=north] run scoreboard players set $anvil_facing ca.repair_anvil_master 3
execute if block ~ ~ ~ anvil[facing=south] run scoreboard players set $anvil_facing ca.repair_anvil_master 4

setblock ~ ~ ~ barrier

execute align xyz positioned ^ ^ ^ summon block_display run function cartographer_repair_stations:repair_anvil/func/place_anvil/as_block_display