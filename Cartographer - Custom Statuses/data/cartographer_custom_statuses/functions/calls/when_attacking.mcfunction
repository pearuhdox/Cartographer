#Critical Effects for Blindness and Slow Falling
execute if entity @s[tag=pot_add_crit] as @e[type=#bb:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run function cartographer_custom_statuses:player/crit_vfx

execute if predicate cartographer_custom_statuses:is_stealthed run function cartographer_custom_statuses:effects/stealthed/consume

#Always Reset the Apply Effects and Status Inflict
data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:apply_status data set value {}

tag @s add ca.inflicting_player


execute if entity @s[advancements={entityid:player_hurt_entity={tagless=true}}] unless entity @s[tag=ca.no_status_melee] run function cartographer_custom_statuses:calls/player_hit/melee
execute if entity @s[tag=ca.no_status_melee] run scoreboard players set $do_apply_status ca.status_var 0


scoreboard players set $was_no_impact ca.status_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={no_impact=true}}] run scoreboard players set $was_no_impact ca.status_var 1


scoreboard players set $was_projectile ca.status_var 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $was_projectile ca.status_var 1



execute unless score $was_no_impact ca.status_var matches 1.. unless score $was_projectile ca.status_var matches 1.. run function cartographer_custom_statuses:apply_effects/apply/create_aec