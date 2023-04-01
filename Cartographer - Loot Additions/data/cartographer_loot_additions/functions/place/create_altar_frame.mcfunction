tag @s remove ca.loot_altar_frame_setup

tag @s add ca.loot_altar_item
tag @s add no_pickup

tag @s add dies.new_item
tag @s add dies.object
tag @s add no_tick

playsound minecraft:entity.item_frame.place player @a[distance=..16,scores={dies.option.player.sounds.world=1}]

summon text_display ~ ~ ~ {view_range:0.1f,width:1f,height:1f,billboard:"center",line_width:200,text_opacity:255,default_background:0b,shadow:0b,see_through:1b,alignment:"center",Tags:["dies.object","dies.new_item_text","dies.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1f,1f,1f]},text:'{"text":"Insert Item","color":"black"}',background:687842849}

ride @e[type=text_display,distance=..1,limit=1,sort=nearest,tag=dies.target] mount @s
execute as @e[type=text_display,distance=..1,limit=1,sort=nearest,tag=dies.target] at @s run function dies:func/new_item/new_text

data merge entity @s {Item:{id:"minecraft:air"}}

execute store result score @s dies.object.frame_facing run data get entity @s Facing

execute if score @s dies.object.frame_facing matches 2..5 run summon interaction ~ ~ ~ {width:1f,height:0.125f,Tags:["dies.object","dies.target","dies.new_item_interaction","dies.interaction"]}
execute if score @s dies.object.frame_facing matches 2..5 run ride @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=dies.target] mount @s
execute if score @s dies.object.frame_facing matches 2..5 as @e[type=interaction,distance=..1,limit=1,sort=nearest,tag=dies.target] at @s run function dies:func/new_item/new_interact

execute if score @s dies.object.frame_facing matches 2..5 run summon interaction ~ ~ ~ {width:1f,height:-0.875f,Tags:["dies.object","dies.target","dies.new_item_interaction","dies.interaction"]}
execute if score @s dies.object.frame_facing matches 2..5 run ride @e[type=interaction,distance=..2,limit=1,sort=nearest,tag=dies.target] mount @s
execute if score @s dies.object.frame_facing matches 2..5 as @e[type=interaction,distance=..1,limit=1,sort=nearest,tag=dies.target] at @s run function dies:func/new_item/new_interact


execute if score @s dies.object.frame_facing matches 1 run summon interaction ~ ~ ~ {width:1f,height:-0.5f,Tags:["dies.object","dies.target","dies.new_item_interaction","dies.interaction"]}
execute if score @s dies.object.frame_facing matches 0 run summon interaction ~ ~ ~ {width:1f,height:-0.6f,Tags:["dies.object","dies.target","dies.new_item_interaction","dies.interaction"]}


execute if score @s dies.object.frame_facing matches 0..1 run ride @e[type=interaction,distance=..1,limit=1,sort=nearest,tag=dies.target] mount @s
execute if score @s dies.object.frame_facing matches 0..1 as @e[type=interaction,distance=..1,limit=1,sort=nearest,tag=dies.target] at @s run function dies:func/new_item/new_interact

function #minecraft:dies/frame_made