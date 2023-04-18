#Critical Effects for Blindness and Slow Falling
execute if entity @s[tag=pot_add_crit] as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_statuses:effects/player/crit_vfx

execute if predicate cartographer_custom_statuses:is_stealthed run function cartographer_custom_statuses:effects/stealthed/consume