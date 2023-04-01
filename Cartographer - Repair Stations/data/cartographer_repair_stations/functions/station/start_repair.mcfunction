item replace entity @s weapon.mainhand with air

scoreboard players set $state ca.repair_station_state 1

data modify entity 31182015-1851-6191-8192-000000000007 item set from storage cartographer_repair_stations:item_input data

data merge entity 31182015-1851-6191-8192-000000000007 {Glowing:1b,glow_color_override:10741839,interpolation_duration:12,start_interpolation:0,transformation:[0.7f,0f,0f,0f,0f,0.7f,0f,1.6f,0f,0f,0.7f,0f,0f,0f,0f,1f]}

data modify entity 31182015-1851-6191-8192-000000000008 text set value '[{"text":"[","color":"white","italic":false},{"keybind":"key.attack","color":"aqua","italic":false},{"text":"] to repair the item.\\n","color":"white","italic":false},{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":"] to return the item.","color":"white","italic":false}]'

execute as 31182015-1851-6191-8192-000000000007 at @s if data storage cartographer_repair_stations:item_input data.tag.CustomRepair.material run function cartographer_repair_stations:station/identify_custom_material
execute as 31182015-1851-6191-8192-000000000007 at @s unless data storage cartographer_repair_stations:item_input data.tag.CustomRepair.material run function cartographer_repair_stations:station/identify_material

function cartographer_repair_stations:station/create_cost_text

data modify entity 31182015-1851-6191-8192-000000000009 text set value '[{"text":" ","color":"white","italic":false}]'
data modify entity 31182015-1851-6191-8192-000000000009 text set from storage cartographer_repair_stations:full_string data

scoreboard players set $display_warning ca.repair_station_state 1
scoreboard players set $time ca.repair_station_state 0
scoreboard players set $time2 ca.repair_station_state 0

playsound minecraft:block.conduit.activate block @a[distance=..16] ~ ~ ~ 1.5 2
playsound minecraft:entity.warden.tendril_clicks block @a[distance=..16] ~ ~ ~ 0.5 1.5