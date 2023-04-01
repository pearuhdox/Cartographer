
data merge entity @s {item_display:"fixed",Tags:["no_tick","dies.object","dies.item_display","dies.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:wooden_sword",Count:1b}}
data modify entity @s item set from entity @p[advancements={dies:interact/right=true}] SelectedItem

scoreboard players operation @e[type=minecraft:item_display,distance=..2,limit=1,sort=nearest,tag=dies.target] dies.object.frame_facing = @e[type=minecraft:item_frame,distance=..2,limit=1,sort=nearest,tag=dies.target] dies.object.frame_facing
scoreboard players operation $target_render_distance dies.master = $gamerule.default.render_distance dies.master
function dies:func/item_display/update/render_distance
scoreboard players operation @s dies.object.display.size = $gamerule.default.item_size dies.master
function dies:func/item_display/update/size
scoreboard players set @s dies.object.item_type 1

execute if score @s dies.object.frame_facing matches 0 run summon interaction ~ ~ ~ {response:1b,width:0.95f,height:-0.3,Tags:["no_tick","dies.object","dies.target","dies.display_interaction","dies.interaction"]}
execute if score @s dies.object.frame_facing matches 1 run summon interaction ~ ~ ~ {response:1b,width:0.95f,height:0.3,Tags:["no_tick","dies.object","dies.target","dies.display_interaction","dies.interaction"]}
execute if score @s dies.object.frame_facing matches 2..5 run summon interaction ~ ~ ~ {response:1b,width:0.95f,height:0.95f,Tags:["no_tick","dies.object","dies.target","dies.display_interaction","dies.interaction"]}

ride @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=dies.target] mount @s
execute as @e[type=interaction,distance=..1,limit=1,sort=nearest,tag=dies.target] at @s run function dies:func/new_item/new_interact

execute if score $gamerule.default.light dies.master matches -1 run function dies:func/item_display/update/light_from_block
execute if score $gamerule.default.light dies.master matches 0..15 run scoreboard players operation $target_light_level dies.master = $gamerule.default.light dies.master
function dies:func/item_display/update/light_level

scoreboard players set @s dies.object.display.pose 1
tag @s add dies.no_rotate
function dies:func/update_pose/main

function #minecraft:dies/item_made
