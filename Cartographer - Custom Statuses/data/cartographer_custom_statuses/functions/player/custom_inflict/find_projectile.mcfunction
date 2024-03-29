data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:apply_status data set value {}

execute as @e[type=#bb:projectile,sort=nearest,limit=1,distance=..7,nbt=!{inGround:1b}] at @s run function cartographer_custom_statuses:player/custom_inflict/projectile_branch

execute if data storage cartographer_custom_statuses:apply_effects data.effects[0] run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if data storage cartographer_custom_statuses:apply_status data.effects[0] run function cartographer_custom_statuses:apply_status/apply/set_statuses

scoreboard players set $do_chance ca.status_var -1
tag @a remove ca.inflict_cause