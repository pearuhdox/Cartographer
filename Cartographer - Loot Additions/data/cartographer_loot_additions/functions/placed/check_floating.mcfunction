#Checks if item frame executing this is standing on air 

execute store result score $facing ca.var run data get entity @s Facing
execute if score $facing ca.var matches 0 if block ~ ~1 ~ air run function cartographer_loot_additions:placed/delete
execute if score $facing ca.var matches 1 if block ~ ~-1 ~ air run function cartographer_loot_additions:placed/delete
execute if score $facing ca.var matches 2 if block ~ ~ ~1 air run function cartographer_loot_additions:placed/delete
execute if score $facing ca.var matches 3 if block ~ ~ ~-1 air run function cartographer_loot_additions:placed/delete
execute if score $facing ca.var matches 4 if block ~1 ~ ~ air run function cartographer_loot_additions:placed/delete
execute if score $facing ca.var matches 5 if block ~-1 ~ ~ air run function cartographer_loot_additions:placed/delete