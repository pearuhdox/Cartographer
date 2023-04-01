data modify storage cartographer_loot_additions:chest_cache temp set value {}
data modify storage cartographer_loot_additions:chest_cache temp set from storage cartographer_loot_additions:chest_cache Items[0]

scoreboard players add $cache_loot_spread ca.var 1
execute if score $cache_loot_spread ca.var matches 9.. run scoreboard players set $cache_loot_spread ca.var 1

execute if score $cache_loot_spread ca.var matches 1 run summon item ~ ~ ~ {Motion:[0.1,0.12,0.0],Glowing:1b,Age:-32768,Health:1000,PickupDelay:15,Tags:["ca.loot_additions_cache_item","new_item"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if score $cache_loot_spread ca.var matches 2 run summon item ~ ~ ~ {Motion:[0.0,0.12,0.1],Glowing:1b,Age:-32768,Health:1000,PickupDelay:15,Tags:["ca.loot_additions_cache_item","new_item"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if score $cache_loot_spread ca.var matches 3 run summon item ~ ~ ~ {Motion:[0.0,0.12,-0.1],Glowing:1b,Age:-32768,Health:1000,PickupDelay:15,Tags:["ca.loot_additions_cache_item","new_item"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if score $cache_loot_spread ca.var matches 4 run summon item ~ ~ ~ {Motion:[-0.1,0.12,0.0],Glowing:1b,Age:-32768,Health:1000,PickupDelay:15,Tags:["ca.loot_additions_cache_item","new_item"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if score $cache_loot_spread ca.var matches 5 run summon item ~ ~ ~ {Motion:[0.07,0.12,0.07],Glowing:1b,Age:-32768,Health:1000,PickupDelay:15,Tags:["ca.loot_additions_cache_item","new_item"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if score $cache_loot_spread ca.var matches 6 run summon item ~ ~ ~ {Motion:[-0.07,0.12,-0.07],Glowing:1b,Age:-32768,Health:1000,PickupDelay:15,Tags:["ca.loot_additions_cache_item","new_item"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if score $cache_loot_spread ca.var matches 7 run summon item ~ ~ ~ {Motion:[0.07,0.12,-0.07],Glowing:1b,Age:-32768,Health:1000,PickupDelay:15,Tags:["ca.loot_additions_cache_item","new_item"],Item:{id:"minecraft:stone_button",Count:1b}}
execute if score $cache_loot_spread ca.var matches 8 run summon item ~ ~ ~ {Motion:[-0.07,0.12,0.07],Glowing:1b,Age:-32768,Health:1000,PickupDelay:15,Tags:["ca.loot_additions_cache_item","new_item"],Item:{id:"minecraft:stone_button",Count:1b}}

execute as @e[type=item,tag=new_item,tag=ca.loot_additions_cache_item,distance=..2,limit=1,sort=nearest] run function cartographer_loot_additions:chest_cache/drop/item

data remove storage cartographer_loot_additions:chest_cache Items[0]

execute if data storage cartographer_loot_additions:chest_cache Items[0] run function cartographer_loot_additions:chest_cache/drop/rec