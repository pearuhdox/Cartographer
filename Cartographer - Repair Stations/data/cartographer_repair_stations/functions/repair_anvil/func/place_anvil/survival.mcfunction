
scoreboard players set $raycast_steps ca.repair_anvil_master 120
execute anchored eyes positioned ^ ^ ^ run function cartographer_repair_stations:repair_anvil/func/place_anvil/raycast_loop
