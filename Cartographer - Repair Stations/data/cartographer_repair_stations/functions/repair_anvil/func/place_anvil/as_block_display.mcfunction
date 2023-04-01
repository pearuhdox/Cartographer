data merge entity @s {CustomNameVisible:1b,view_range:1f,shadow_radius:0f,shadow_strength:0f,width:1f,height:1f,start_interpolation:0,interpolation_duration:0,brightness:{sky:5,block:5},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:anvil",Properties:{facing:"west"}}}

execute if score $anvil_facing ca.repair_anvil_master matches 1 run data modify entity @s block_state.Properties.facing set value "east"
execute if score $anvil_facing ca.repair_anvil_master matches 2 run data modify entity @s block_state.Properties.facing set value "west"
execute if score $anvil_facing ca.repair_anvil_master matches 3 run data modify entity @s block_state.Properties.facing set value "north"
execute if score $anvil_facing ca.repair_anvil_master matches 4 run data modify entity @s block_state.Properties.facing set value "south"

tag @s add ca.repair_anvil.object
tag @s add ca.repair_anvil.display
tag @s add no_tick

function bb:lib/query_light_level
scoreboard players operation $target_light_level ca.repair_anvil_master = $light_level bbl.storage
function cartographer_repair_stations:repair_anvil/func/update/light_level


execute if score $anvil_facing ca.repair_anvil_master matches 1..2 run function cartographer_repair_stations:repair_anvil/func/place_anvil/we_facing
execute if score $anvil_facing ca.repair_anvil_master matches 3..4 run function cartographer_repair_stations:repair_anvil/func/place_anvil/ns_facing

summon interaction ~.5 ~-.025 ~.5 {width:1.05f,height:1.05f,Tags:["no_tick","ca.repair_anvil.object","ca.repair_anvil_int.anvil","ca.repair_anvil_int"]}