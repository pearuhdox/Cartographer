data modify entity @s item.tag.BlockEntityTag.Items set from storage cartographer_loot_additions:hungry_chest Items
execute store result score @s ca.hunger_count run data get storage cartographer_loot_additions:hungry_chest Items
execute store result score @s ca.hunger_total run data get storage cartographer_loot_additions:hungry_chest Items
scoreboard players operation @s ca.facing = $facing_sc ca.loot_var

summon minecraft:marker ~ ~ ~ {Tags:["ca.hungry_chest_marker","ca.loot_additions_marker","ca.hungry_chest_piece"]}
ride @e[type=marker,tag=ca.hungry_chest_marker,sort=nearest,limit=1,distance=..2] mount @s

summon interaction ~ ~ ~ {width:1.1f,height:1.1f,Tags:["ca.hungry_chest_interaction","ca.hungry_chest_piece"]}
ride @e[type=interaction,tag=ca.hungry_chest_interaction,sort=nearest,limit=1,distance=..2] mount @s
