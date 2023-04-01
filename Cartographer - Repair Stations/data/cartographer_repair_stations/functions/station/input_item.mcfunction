data modify storage cartographer_repair_stations:item_input data set value {}
data modify storage cartographer_repair_stations:item_input data set from entity @s SelectedItem

execute store result score $item_damage ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.tag.Damage
execute store result score $add_upgrade ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.tag.RepairStationUpgrade

scoreboard players set $state ca.repair_station_state 10

execute unless data storage cartographer_repair_stations:item_input data.Count run scoreboard players set $state ca.repair_station_state 1000

execute unless data storage cartographer_repair_stations:item_input data.tag.RepairStationUpgrade if score $item_damage ca.repair_station_state matches 1.. run scoreboard players set $state ca.repair_station_state 1
execute if score $add_upgrade ca.repair_station_state matches 1.. run scoreboard players set $state ca.repair_station_state 5

execute store result score $xp_cost ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.tag.RepairCost
execute store result score $lapis_cost ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.tag.LapisCost

execute if score $xp_cost ca.repair_station_state matches 0 run scoreboard players set $xp_cost ca.repair_station_state 8
execute if score $lapis_cost ca.repair_station_state matches 0 run scoreboard players set $lapis_cost ca.repair_station_state 4
execute if score $lapis_cost ca.repair_station_state matches 19 run scoreboard players set $lapis_cost ca.repair_station_state 20

scoreboard players operation $projected_xp_cost ca.repair_station_state = $xp_cost ca.repair_station_state
scoreboard players operation $projected_lapis_cost ca.repair_station_state = $lapis_cost ca.repair_station_state

execute if score $upgrade_1 ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/reduce_xp_cost

execute if score $xp_cost ca.repair_station_state > $xp_maximum ca.repair_station_state run scoreboard players set $state ca.repair_station_state 11
# execute if score $lapis_cost ca.repair_station_state > $lapis_maximum ca.repair_station_state run scoreboard players set $state ca.repair_station_state 11

execute unless score $allow_transport_repair ca.repair_station_state matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set $state ca.repair_station_state 10
execute unless score $allow_transport_repair ca.repair_station_state matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set $state ca.repair_station_state 10


execute if score $state ca.repair_station_state matches 1 run function cartographer_repair_stations:station/start_repair
execute if score $state ca.repair_station_state matches 5 run function cartographer_repair_stations:station/add_upgrade

execute if score $state ca.repair_station_state matches 10 run function cartographer_repair_stations:station/reject
execute if score $state ca.repair_station_state matches 11 run function cartographer_repair_stations:station/too_expensive