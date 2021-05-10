playsound minecraft:block.respawn_anchor.set_spawn player @s ~ ~ ~ 2 0.5
playsound minecraft:block.bell.use player @s ~ ~ ~ 2 0.5
playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s second_wind_tier matches 3600.. run scoreboard players set @s damage_queue 3
execute if score @s second_wind_tier matches 3600.. run function cartographer_core:helper/hurt_player/by_score_true

execute if score @s second_wind_tier matches 7200.. run scoreboard players set @s damage_queue 6
execute if score @s second_wind_tier matches 7200.. run function cartographer_core:helper/hurt_player/by_score_true

execute if score @s second_wind_tier matches 10800.. run scoreboard players set @s damage_queue 9
execute if score @s second_wind_tier matches 10800.. run function cartographer_core:helper/hurt_player/by_score_true

tag @s remove true_death
tag @s remove mortal_coil

tag @s add second_winded

execute if score @s second_wind_tier matches 3600.. run scoreboard players set @s damage_queue 12
execute if score @s second_wind_tier matches 3600.. run function cartographer_core:helper/hurt_player/by_score

execute if score @s second_wind_tier matches 7200.. run scoreboard players set @s damage_queue 24
execute if score @s second_wind_tier matches 7200.. run function cartographer_core:helper/hurt_player/by_score

execute if score @s second_wind_tier matches 10800.. run scoreboard players set @s damage_queue 36
execute if score @s second_wind_tier matches 10800.. run function cartographer_core:helper/hurt_player/by_score