tag @s add ca.is_loot_altar
execute if score $gl_budget_models ca.gamerule matches 1.. run tag @s add ca.is_budget

tag @s remove no_tick

setblock ~ ~-0.5 ~ barrier replace

execute unless score $gl_budget_models ca.gamerule matches 1.. run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:end_stone_bricks"},Tags:["ca.loot_altar_piece","ca.loot_altar_bottom"],interpolation_duration:0,start_interpolation:0,transformation:[0.400f, 0.000f, 0.000f,-0.200f,0.000f, 0.400f, 0.000f,-0.650f,0.000f, 0.000f, 0.400f,-0.200f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.loot_altar_piece"],block_state:{Name:"minecraft:end_stone_bricks"},interpolation_duration:0,start_interpolation:0,transformation:[0.212f, 0.000f, 0.212f,-0.210f,0.000f, 0.300f, 0.000f,-0.850f,-0.212f, 0.000f, 0.212f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.loot_altar_piece"],block_state:{Name:"minecraft:sculk"},interpolation_duration:0,start_interpolation:0,transformation:[0.900f, 0.000f, 0.000f,-0.450f,0.000f, 0.200f, 0.000f,-1.000f,0.000f, 0.000f, 0.900f,-0.450f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.loot_altar_piece","ca.loot_altar_top"],block_state:{Name:"minecraft:sculk_shrieker"},interpolation_duration:0,start_interpolation:0,transformation:[0.700f, 0.000f, 0.000f,-0.350f,0.000f, 0.700f, 0.000f,-0.350f,0.000f, 0.000f, 0.700f,-0.350f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.loot_altar_blocker","ca.loot_altar_piece"],block_state:{Name:"minecraft:cyan_stained_glass"},interpolation_duration:0,start_interpolation:0,transformation:[0.500f, 0.000f, 0.000f,-0.250f,0.000f, 0.500f, 0.000f,-0.250f,0.000f, 0.000f, 0.500f,-0.250f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}}]}]}]}]}
execute if score $gl_budget_models ca.gamerule matches 1.. run summon minecraft:block_display ~ ~ ~ {id:"minecraft:block_display",Tags:["ca.loot_altar_piece","ca.loot_altar_bottom","ca.loot_altar_top"],block_state:{Name:"minecraft:sculk_shrieker"},interpolation_duration:0,start_interpolation:0,transformation:[0.700f, 0.000f, 0.000f,-0.350f,0.000f, 0.700f, 0.000f,-0.3499f,0.000f, 0.000f, 0.700f,-0.350f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.loot_altar_blocker","ca.loot_altar_piece"],block_state:{Name:"minecraft:cyan_stained_glass"}}]}
execute if score $gl_budget_models ca.gamerule matches 1.. run setblock ~ ~-0.5 ~ end_stone_brick_wall replace

execute as @e[type=block_display,tag=ca.loot_altar_blocker,sort=nearest,limit=1] at @s run data merge entity @s {interpolation_duration:15,start_interpolation:0,transformation:[0.020f, 0.000f, 0.000f,-0.010f,0.000f, 0.020f, 0.000f,-0.010f,0.000f, 0.000f, 0.020f,-0.010f,0.000f, 0.000f, 0.000f,1.000f]}

ride @e[type=block_display,tag=ca.loot_altar_bottom,sort=nearest,limit=1,distance=..2] mount @s

summon minecraft:marker ~ ~ ~ {Tags:["ca.loot_altar_marker","ca.loot_additions_marker"]}
ride @e[type=marker,tag=ca.loot_altar_marker,sort=nearest,limit=1,distance=..2] mount @s
