scoreboard players set $temp ca.status_var 0

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip main.tag.OverrideBasic run tag @s add ca.override_basic_m
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_basic
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip main.tag.OverrideCrit run tag @s add ca.override_crit_m
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_crit
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip main.tag.OverrideSneak run tag @s add ca.override_sneak_m
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_sneak
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip main.tag.OverrideSprint run tag @s add ca.override_sprint_m
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_sprint
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip main.tag.OverrideLinger run tag @s add ca.override_linger_m
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_linger
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2