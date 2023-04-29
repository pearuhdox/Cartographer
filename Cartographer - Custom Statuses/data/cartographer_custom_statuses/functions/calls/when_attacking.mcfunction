#Critical Effects for Blindness and Slow Falling
execute if entity @s[tag=pot_add_crit] as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_statuses:effects/player/crit_vfx

execute if predicate cartographer_custom_statuses:is_stealthed run function cartographer_custom_statuses:effects/stealthed/consume

scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_status_inflict ca.status_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={tagless=true}}] run function cartographer_custom_statuses:calls/player_hit/melee

scoreboard players set $was_projectile ca.status_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $was_projectile ca.status_var 1
