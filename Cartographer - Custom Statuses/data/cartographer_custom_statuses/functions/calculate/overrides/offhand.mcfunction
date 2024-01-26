scoreboard players set $temp ca.status_var 0

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.OverrideMelee run tag @s add ca.override_melee_o
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_melee
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.OverrideRanged run tag @s add ca.override_ranged_o
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_ranged
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.OverrideBasic run tag @s add ca.override_basic_o
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_basic
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.OverrideCrit run tag @s add ca.override_crit_o
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_crit
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.OverrideSneak run tag @s add ca.override_sneak_o
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_sneak
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.OverrideSprint run tag @s add ca.override_sprint_o
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_sprint
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip offh.tag.OverrideLinger run tag @s add ca.override_linger_o
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_linger
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2