data modify storage cartographer_loot_additions:locked_chest Items set value []
data modify storage cartographer_loot_additions:locked_chest Items set from block ~ ~-1 ~ Items

execute if block ~ ~-1 ~ chest[facing=south] run scoreboard players set $facing_lc ca.loot_var 1
execute if block ~ ~-1 ~ chest[facing=west] run scoreboard players set $facing_lc ca.loot_var 2
execute if block ~ ~-1 ~ chest[facing=north] run scoreboard players set $facing_lc ca.loot_var 3
execute if block ~ ~-1 ~ chest[facing=east] run scoreboard players set $facing_lc ca.loot_var 4

execute if block ~ ~-1 ~ chest[facing=south] run summon minecraft:item_display ~ ~-1 ~ {Tags:["ca.locked_chest","ca.locked_chest_piece"],item:{id:"minecraft:chest",Count:1s},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 1.000f, 0.000f,0.500f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.778f, -0.778f, 0.000f,-0.050f,0.778f, 0.778f, 0.000f,-0.300f,0.000f, 0.000f, 1.100f,-0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.778f, 0.778f, 0.000f,-0.750f,-0.778f, 0.778f, 0.000f,0.450f,0.000f, 0.000f, 1.100f,-0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, 0.778f, 0.778f,-0.750f,-0.000f, 0.778f, -0.778f,0.450f,-1.100f, 0.000f, 0.000f,0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, -0.778f, 0.778f,-0.050f,0.000f, 0.778f, 0.778f,-0.300f,-1.100f, 0.000f, 0.000f,0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-1.050f,0.000f, 0.778f, -0.778f,0.450f,0.000f, 0.778f, 0.778f,-0.750f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-0.050f,0.000f, 0.778f, 0.778f,-0.350f,0.000f, -0.778f, 0.778f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-0.050f,0.000f, 0.778f, -0.778f,0.450f,0.000f, 0.778f, 0.778f,-0.750f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-1.050f,0.000f, 0.778f, 0.778f,-0.350f,0.000f, -0.778f, 0.778f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece","ca.locked_chest_lock"],block_state:{Name:"minecraft:lodestone"},interpolation_duration:0,start_interpolation:0,transformation:[0.300f, 0.000f, 0.000f,-0.150f,0.000f, 0.300f, 0.000f,0.300f,0.000f, 0.000f, 0.300f,0.300f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:interaction",width:1.01f,height:1.01f,Tags:["ca.locked_chest_piece","ca.locked_chest_interaction"]}]}

execute if block ~ ~-1 ~ chest[facing=west] run summon minecraft:item_display ~ ~-1 ~ {Tags:["ca.locked_chest","ca.locked_chest_piece"],item:{id:"minecraft:chest",Count:1s},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 1.000f, 0.000f,0.500f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.778f, -0.778f, 0.000f,-0.050f,0.778f, 0.778f, 0.000f,-0.300f,0.000f, 0.000f, 1.100f,-0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.778f, 0.778f, 0.000f,-0.750f,-0.778f, 0.778f, 0.000f,0.450f,0.000f, 0.000f, 1.100f,-0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, 0.778f, 0.778f,-0.750f,-0.000f, 0.778f, -0.778f,0.450f,-1.100f, 0.000f, 0.000f,0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, -0.778f, 0.778f,-0.050f,0.000f, 0.778f, 0.778f,-0.300f,-1.100f, 0.000f, 0.000f,0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-1.050f,0.000f, 0.778f, -0.778f,0.450f,0.000f, 0.778f, 0.778f,-0.750f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-0.050f,0.000f, 0.778f, 0.778f,-0.350f,0.000f, -0.778f, 0.778f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-0.050f,0.000f, 0.778f, -0.778f,0.450f,0.000f, 0.778f, 0.778f,-0.750f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-1.050f,0.000f, 0.778f, 0.778f,-0.350f,0.000f, -0.778f, 0.778f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece","ca.locked_chest_lock"],block_state:{Name:"minecraft:lodestone"},interpolation_duration:0,start_interpolation:0,transformation:[0.300f, 0.000f, 0.000f,-0.600f,0.000f, 0.300f, 0.000f,0.300f,0.000f, 0.000f, 0.300f,-0.150f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:interaction",width:1.01f,height:1.01f,Tags:["ca.locked_chest_piece","ca.locked_chest_interaction"]}]}

execute if block ~ ~-1 ~ chest[facing=north] run summon minecraft:item_display ~ ~-1 ~ {Tags:["ca.locked_chest","ca.locked_chest_piece"],item:{id:"minecraft:chest",Count:1s},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 1.000f, 0.000f,0.500f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.778f, -0.778f, 0.000f,-0.050f,0.778f, 0.778f, 0.000f,-0.300f,0.000f, 0.000f, 1.100f,-0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.778f, 0.778f, 0.000f,-0.750f,-0.778f, 0.778f, 0.000f,0.450f,0.000f, 0.000f, 1.100f,-0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, 0.778f, 0.778f,-0.750f,-0.000f, 0.778f, -0.778f,0.450f,-1.100f, 0.000f, 0.000f,0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, -0.778f, 0.778f,-0.050f,0.000f, 0.778f, 0.778f,-0.300f,-1.100f, 0.000f, 0.000f,0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-1.050f,0.000f, 0.778f, -0.778f,0.450f,0.000f, 0.778f, 0.778f,-0.750f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-0.050f,0.000f, 0.778f, 0.778f,-0.350f,0.000f, -0.778f, 0.778f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-0.050f,0.000f, 0.778f, -0.778f,0.450f,0.000f, 0.778f, 0.778f,-0.750f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-1.050f,0.000f, 0.778f, 0.778f,-0.350f,0.000f, -0.778f, 0.778f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece","ca.locked_chest_lock"],block_state:{Name:"minecraft:lodestone"},interpolation_duration:0,start_interpolation:0,transformation:[0.300f, 0.000f, 0.000f,-0.150f,0.000f, 0.300f, 0.000f,0.300f,0.000f, 0.000f, 0.300f,-0.600f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:interaction",width:1.01f,height:1.01f,Tags:["ca.locked_chest_piece","ca.locked_chest_interaction"]}]}



execute if block ~ ~-1 ~ chest[facing=east] run summon minecraft:item_display ~ ~-1 ~ {Tags:["ca.locked_chest","ca.locked_chest_piece"],item:{id:"minecraft:chest",Count:1s},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 1.000f, 0.000f,0.500f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.778f, -0.778f, 0.000f,-0.050f,0.778f, 0.778f, 0.000f,-0.300f,0.000f, 0.000f, 1.100f,-0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.778f, 0.778f, 0.000f,-0.750f,-0.778f, 0.778f, 0.000f,0.450f,0.000f, 0.000f, 1.100f,-0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, 0.778f, 0.778f,-0.750f,-0.000f, 0.778f, -0.778f,0.450f,-1.100f, 0.000f, 0.000f,0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, -0.778f, 0.778f,-0.050f,0.000f, 0.778f, 0.778f,-0.300f,-1.100f, 0.000f, 0.000f,0.050f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-1.050f,0.000f, 0.778f, -0.778f,0.450f,0.000f, 0.778f, 0.778f,-0.750f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-0.050f,0.000f, 0.778f, 0.778f,-0.350f,0.000f, -0.778f, 0.778f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-0.050f,0.000f, 0.778f, -0.778f,0.450f,0.000f, 0.778f, 0.778f,-0.750f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece"],block_state:{Name:"minecraft:chain"},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,-1.050f,0.000f, 0.778f, 0.778f,-0.350f,0.000f, -0.778f, 0.778f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:block_display",Tags:["ca.locked_chest_piece","ca.locked_chest_lock"],block_state:{Name:"minecraft:lodestone"},interpolation_duration:0,start_interpolation:0,transformation:[0.300f, 0.000f, 0.000f,0.300f,0.000f, 0.300f, 0.000f,0.300f,0.000f, 0.000f, 0.300f,-0.150f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}},{id:"minecraft:interaction",width:1.01f,height:1.01f,Tags:["ca.locked_chest_piece","ca.locked_chest_interaction"]}]}

execute if block ~ ~-1 ~ chest[facing=west] as @e[type=item_display,tag=ca.locked_chest,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
execute if block ~ ~-1 ~ chest[facing=north] as @e[type=item_display,tag=ca.locked_chest,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~180 ~
execute if block ~ ~-1 ~ chest[facing=east] as @e[type=item_display,tag=ca.locked_chest,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~270 ~

execute as @e[type=item_display,tag=ca.locked_chest,limit=1,sort=nearest] at @s run function cartographer_loot_additions:place/locked_chest_branch

setblock ~ ~-1 ~ barrier replace

tellraw @p {"text":"Right Click the locked chest with a block to set the lock frame.","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}

kill @s