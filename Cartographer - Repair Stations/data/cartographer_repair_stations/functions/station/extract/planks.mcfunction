clear @s #minecraft:planks 1

scoreboard players remove $mat_cost ca.repair_station_state 1

execute if score $mat_cost ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/extract/planks