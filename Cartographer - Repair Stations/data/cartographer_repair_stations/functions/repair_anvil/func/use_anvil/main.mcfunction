
scoreboard players set $raycast_steps ca.repair_anvil_master 120
execute anchored eyes positioned ^ ^ ^ run function cartographer_repair_stations:repair_anvil/func/use_anvil/raycast_loop

scoreboard players set @s ca.repair_anvil_use 0
