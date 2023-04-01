scoreboard players set $crystal_amt ca.repair_station_state 40
scoreboard players operation $crystal_amt ca.repair_station_state *= $upgrade_4 ca.repair_station_state

data modify storage cartographer_repair_stations:item_input data.tag.HasCrystalShielding set value 1b

execute store result storage cartographer_repair_stations:item_input data.tag.CrystalShield int 1 run scoreboard players add $crystal_amt ca.repair_station_state 1