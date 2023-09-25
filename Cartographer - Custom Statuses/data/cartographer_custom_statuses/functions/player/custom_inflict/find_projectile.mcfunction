data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:status_inflict data set value {}

execute as @e[type=#bb:projectile,sort=nearest,limit=1,distance=..7,nbt=!{inGround:1b}] at @s run function cartographer_custom_statuses:player/custom_inflict/projectile_branch

execute if data storage cartographer_custom_statuses:apply_effects data.Effects[0] run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if data storage cartographer_custom_statuses:status_inflict data.Effects[0] run function cartographer_custom_statuses:status_inflict/apply/set_statuses

execute as @a[tag=ca.inflict_cause] if score $do_chance ca.status_var matches 0..1 run function cartographer_custom_statuses:player/custom_inflict/entropy
scoreboard players set $do_chance ca.status_var -1
tag @a remove ca.inflict_cause