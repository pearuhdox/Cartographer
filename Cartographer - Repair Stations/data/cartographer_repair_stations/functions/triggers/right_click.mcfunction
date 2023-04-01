execute if score $state ca.repair_station_state matches 1 run function cartographer_repair_stations:station/return_item
execute if score $state ca.repair_station_state matches 0 run function cartographer_repair_stations:station/input_item

execute if score $state ca.repair_station_state matches 1000 run scoreboard players set $state ca.repair_station_state 0

advancement revoke @s only cartographer_repair_stations:right_click