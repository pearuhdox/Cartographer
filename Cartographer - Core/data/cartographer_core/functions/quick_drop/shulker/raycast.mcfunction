scoreboard players remove @s ca.raycast 1

execute unless block ^ ^ ^0.5 #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 0 positioned ^ ^ ^-0.5 align xyz positioned ~0.5 ~ ~0.5 run function cartographer_core:quick_drop/shulker/place_start

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 run function cartographer_core:quick_drop/shulker/raycast