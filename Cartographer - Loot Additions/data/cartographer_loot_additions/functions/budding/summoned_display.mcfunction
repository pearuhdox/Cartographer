data merge entity @s {item_display:"fixed",Tags:["no_tick","dies.object","dies.item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:wooden_sword",Count:1b}}
data modify entity @s item set from storage cartographer_loot_additions:dropped_item data

scoreboard players set @s dies.object.frame_facing 1
scoreboard players operation $target_render_distance dies.master = $gamerule.default.render_distance dies.master
function dies:func/item_display/update/render_distance
scoreboard players operation @s dies.object.display.size = $gamerule.default.item_size dies.master
function dies:func/item_display/update/size
scoreboard players set @s dies.object.item_type 1

summon interaction ~ ~ ~ {response:1b,width:0.95f,height:0.3,Tags:["no_tick","dies.object","dies.display_interaction","dies.interaction"]}

ride @e[type=interaction,distance=..2,limit=1,sort=nearest] mount @s

execute if score $gamerule.default.light dies.master matches -1 run function dies:func/item_display/update/light_from_block
execute if score $gamerule.default.light dies.master matches 0..15 run scoreboard players operation $target_light_level dies.master = $gamerule.default.light dies.master
function dies:func/item_display/update/light_level

scoreboard players operation @s dies.object.display.pose = $saved_pose dies.object.display.pose
scoreboard players operation @s dies.object.display.rotation = $saved_pose dies.object.display.rotation
scoreboard players operation @s dies.object.display.size = $saved_pose dies.object.display.size
scoreboard players remove @s dies.object.display.rotation 1

function dies:func/update_pose/main

tag @s add ca.is_budding_pedestal

ride @e[type=block_display,tag=ca.budding_bottom,sort=nearest,limit=1,distance=..2] mount @s