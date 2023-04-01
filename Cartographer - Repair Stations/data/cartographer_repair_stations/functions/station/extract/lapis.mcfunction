execute unless score $use_essence ca.repair_station_state matches 1.. run clear @s minecraft:lapis_lazuli 1
execute if score $use_essence ca.repair_station_state matches 1.. run clear @s minecraft:player_head{display:{Name:'{"text":"Mob Essence","color":"dark_aqua","italic":false}'}} 1

scoreboard players remove $lapis_cost ca.repair_station_state 1

execute if score $lapis_cost ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/extract/lapis