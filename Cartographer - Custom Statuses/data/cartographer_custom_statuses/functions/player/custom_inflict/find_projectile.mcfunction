data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:apply_status data set value {}

execute on attacker run scoreboard players operation $attacker_id ca.status_var = @s ca.player_id

scoreboard players set $attacker_found ca.status_var 0
execute as @e[type=#bb:projectile,sort=nearest,distance=..32] at @s run function cartographer_custom_statuses:player/custom_inflict/test_player_owned

execute if data storage cartographer_custom_statuses:apply_effects data.effects[0] run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if data storage cartographer_custom_statuses:apply_status data.effects[0] run function cartographer_custom_statuses:apply_status/apply/set_statuses

scoreboard players set $do_chance ca.status_var -1
tag @a remove ca.inflict_cause