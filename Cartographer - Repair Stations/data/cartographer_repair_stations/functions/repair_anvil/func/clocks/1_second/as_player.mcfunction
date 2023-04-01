
execute if entity @s[tag=!ca.repair_anvil_init] run function cartographer_repair_stations:repair_anvil/func/init
execute if score @s ca.repair_anvil_relog matches 1.. run function cartographer_repair_stations:repair_anvil/func/init