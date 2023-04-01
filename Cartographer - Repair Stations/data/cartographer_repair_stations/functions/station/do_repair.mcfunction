function cartographer_repair_stations:station/ask_expensive

execute if score $repair_go ca.repair_station_state matches 3.. run function cartographer_repair_stations:station/commit_repair
execute unless score $repair_go ca.repair_station_state matches 3.. run function cartographer_repair_stations:station/insufficient
