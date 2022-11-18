advancement revoke @s only cartographer_loot_additions:standing_in_head

scoreboard players set $break_head_allowed ca.var 1

execute if score $break_head_allowed ca.var matches 1.. if block ~ ~ ~ minecraft:player_head positioned ~ ~ ~ run function cartographer_loot_additions:cache/break_head

execute if score $break_head_allowed ca.var matches 1.. if block ~1 ~ ~ minecraft:player_head positioned ~1 ~ ~ run function cartographer_loot_additions:cache/break_head
execute if score $break_head_allowed ca.var matches 1.. if block ~ ~ ~1 minecraft:player_head positioned ~ ~ ~1 run function cartographer_loot_additions:cache/break_head
execute if score $break_head_allowed ca.var matches 1.. if block ~-1 ~ ~ minecraft:player_head positioned ~-1 ~ ~ run function cartographer_loot_additions:cache/break_head
execute if score $break_head_allowed ca.var matches 1.. if block ~ ~ ~-1 minecraft:player_head positioned ~ ~ ~-1 run function cartographer_loot_additions:cache/break_head

execute if score $break_head_allowed ca.var matches 1.. if block ~1 ~ ~1 minecraft:player_head positioned ~1 ~ ~1 run function cartographer_loot_additions:cache/break_head
execute if score $break_head_allowed ca.var matches 1.. if block ~-1 ~ ~-1 minecraft:player_head positioned ~-1 ~ ~-1 run function cartographer_loot_additions:cache/break_head
execute if score $break_head_allowed ca.var matches 1.. if block ~-1 ~ ~1 minecraft:player_head positioned ~-1 ~ ~1 run function cartographer_loot_additions:cache/break_head
execute if score $break_head_allowed ca.var matches 1.. if block ~1 ~ ~-1 minecraft:player_head positioned ~1 ~ ~-1 run function cartographer_loot_additions:cache/break_head