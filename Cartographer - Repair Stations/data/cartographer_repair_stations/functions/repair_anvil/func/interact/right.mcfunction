execute as @e[type=interaction,distance=..7,tag=ca.repair_anvil_int] at @s run function cartographer_repair_stations:repair_anvil/func/interact/check_right

advancement revoke @s only cartographer_repair_stations:repair_anvil/right_click
