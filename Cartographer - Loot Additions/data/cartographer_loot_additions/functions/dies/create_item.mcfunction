execute if data entity @s item.tag.BlockEntityTag.Items run function cartographer_loot_additions:chest_cache/create

execute if block ~ ~-1 ~ sculk_catalyst if entity @e[type=minecraft:item_frame,distance=..2,limit=1,sort=nearest,tag=dies.target,tag=ca.loot_altar_item] at @s run function cartographer_loot_additions:loot_altar/establish

execute if block ~0.5 ~ ~ lodestone if entity @e[type=minecraft:item_frame,distance=..2,limit=1,sort=nearest,tag=dies.target,tag=ca.multichoice_item] at @s positioned ~0.5 ~ ~ run function cartographer_loot_additions:multichoice/establish
execute if block ~-0.5 ~ ~ lodestone if entity @e[type=minecraft:item_frame,distance=..2,limit=1,sort=nearest,tag=dies.target,tag=ca.multichoice_item] at @s positioned ~-0.5 ~ ~ run function cartographer_loot_additions:multichoice/establish
execute if block ~ ~ ~0.5 lodestone if entity @e[type=minecraft:item_frame,distance=..2,limit=1,sort=nearest,tag=dies.target,tag=ca.multichoice_item] at @s positioned ~ ~ ~0.5 run function cartographer_loot_additions:multichoice/establish
execute if block ~ ~ ~-0.5 lodestone if entity @e[type=minecraft:item_frame,distance=..2,limit=1,sort=nearest,tag=dies.target,tag=ca.multichoice_item] at @s positioned ~ ~ ~-0.5 run function cartographer_loot_additions:multichoice/establish