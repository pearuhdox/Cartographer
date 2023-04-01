execute if score $add_upgrade ca.repair_station_state matches 1 unless score $upgrade_1 ca.repair_station_state matches 4.. run function cartographer_repair_stations:station/upgrades/moss
execute if score $add_upgrade ca.repair_station_state matches 2 unless score $upgrade_2 ca.repair_station_state matches 4.. run function cartographer_repair_stations:station/upgrades/simulacrum
execute if score $add_upgrade ca.repair_station_state matches 3 unless score $upgrade_3 ca.repair_station_state matches 4.. run function cartographer_repair_stations:station/upgrades/rune
execute if score $add_upgrade ca.repair_station_state matches 4 unless score $upgrade_4 ca.repair_station_state matches 4.. run function cartographer_repair_stations:station/upgrades/shard

scoreboard players set $state ca.repair_station_state 1000