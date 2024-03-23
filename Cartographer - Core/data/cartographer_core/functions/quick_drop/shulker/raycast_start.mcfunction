#execute store result score @s ca.raycast run attribute @s minecraft:player.block_interaction_range get 2

scoreboard players set @s ca.raycast 5

execute anchored eyes positioned ^ ^ ^0.5 run function cartographer_core:quick_drop/shulker/raycast