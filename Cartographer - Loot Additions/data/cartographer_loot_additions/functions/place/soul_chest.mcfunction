data modify storage cartographer_loot_additions:soul_chest Items set value []
data modify storage cartographer_loot_additions:soul_chest Items set from block ~ ~-1 ~ Items

execute align xyz positioned ~0.5 ~-1 ~0.5 run summon minecraft:item_display ~ ~ ~ {Tags:["ca.soul_chest","ca.soul_chest_piece"],item:{id:"minecraft:chest",Count:1s},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 1.000f, 0.000f,0.500f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:item_display",Tags:["ca.soul_chest_piece"],item:{id:"minecraft:sculk_shrieker",Count:1s},interpolation_duration:0,start_interpolation:0,transformation:[1.100f, 0.000f, 0.000f,0.000f,0.000f, -1.100f, -0.000f,0.451f,0.000f, 0.000f, -1.100f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8},Passengers:[{id:"minecraft:text_display",billboard:"vertical",background:0,text:"{\"text\":\"\",\"color\":\"red\"}",interpolation_duration:0,start_interpolation:0,transformation:[0.700f, 0.000f, 0.000f,0.000f,0.000f, 0.700f, 0.000f,1.000f,0.000f, 0.000f, 0.700f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}}]}]}

execute if block ~ ~-1 ~ chest[facing=west] as @e[type=item_display,tag=ca.soul_chest,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
execute if block ~ ~-1 ~ chest[facing=north] as @e[type=item_display,tag=ca.soul_chest,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~180 ~
execute if block ~ ~-1 ~ chest[facing=east] as @e[type=item_display,tag=ca.soul_chest,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~270 ~

execute if block ~ ~-1 ~ chest[facing=south] run scoreboard players set $facing_sc ca.loot_var 1
execute if block ~ ~-1 ~ chest[facing=west] run scoreboard players set $facing_sc ca.loot_var 2
execute if block ~ ~-1 ~ chest[facing=north] run scoreboard players set $facing_sc ca.loot_var 3
execute if block ~ ~-1 ~ chest[facing=east] run scoreboard players set $facing_sc ca.loot_var 4

#This could be branched but its a setup function that doesn't run in gameplay and doesn't run often so frankly idc.
execute as @e[type=item_display,tag=ca.soul_chest,sort=nearest,limit=1] at @s run function cartographer_loot_additions:place/soul_chest_branch

setblock ~ ~-1 ~ barrier replace

kill @s