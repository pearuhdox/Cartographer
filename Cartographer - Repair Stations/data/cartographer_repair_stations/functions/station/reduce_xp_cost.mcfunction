scoreboard players set $xp_percent ca.repair_station_state 100
scoreboard players operation $xp_red ca.repair_station_state = $upgrade_1 ca.repair_station_state
scoreboard players operation $xp_red ca.repair_station_state *= $10 ca.CONSTANT

scoreboard players operation $xp_percent ca.repair_station_state -= $xp_red ca.repair_station_state

scoreboard players operation $xp_cost ca.repair_station_state *= $xp_percent ca.repair_station_state
scoreboard players operation $xp_cost ca.repair_station_state /= $100 ca.CONSTANT
