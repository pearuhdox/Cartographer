scoreboard players operation $health_diff ca.status_var = $past_health ca.status_var
scoreboard players operation $health_diff ca.status_var -= $current_health ca.status_var

scoreboard players operation $shackled_scalar ca.status_var = $25 ca.CONSTANT

scoreboard players operation $health_diff ca.status_var *= $shackled_scalar ca.status_var
scoreboard players operation $health_diff ca.status_var /= $100 ca.CONSTANT

scoreboard players set @s ca.exposed_cdl 2

execute positioned ~ ~1 ~ run function cartographer_custom_statuses:effects/shackled/vibration/get_origin

execute as @e[type=#cartographer_core:hostile,distance=0.1..24,scores={ca.effect_shackled=1..}] at @s run function cartographer_custom_statuses:effects/shackled/damage