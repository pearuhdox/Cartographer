#Critical Effects for Blindness and Slow Falling
execute if entity @s[tag=pot_add_crit] as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_statuses:player/crit_vfx

execute if predicate cartographer_custom_statuses:is_stealthed run function cartographer_custom_statuses:effects/stealthed/consume

execute if entity @s[advancements={entityid:player_hurt_entity={tagless=true}}] unless entity @s[tag=ca.no_status_melee] run function cartographer_custom_statuses:calls/player_hit/melee
execute if entity @s[tag=ca.no_status_melee] run scoreboard players set $do_status_inflict ca.status_var 0

scoreboard players set $was_projectile ca.status_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $was_projectile ca.status_var 1
