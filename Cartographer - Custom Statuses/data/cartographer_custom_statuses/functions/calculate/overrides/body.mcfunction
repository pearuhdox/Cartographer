scoreboard players set $temp ca.status_var 0

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.OverrideMelee run tag @s add ca.override_melee_b
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_melee
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.OverrideRanged run tag @s add ca.override_ranged_b
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_ranged
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.OverrideBasic run tag @s add ca.override_basic_b
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_basic
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.OverrideCrit run tag @s add ca.override_crit_b
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_crit
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.OverrideSneak run tag @s add ca.override_sneak_b
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_sneak
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.OverrideSprint run tag @s add ca.override_sprint_b
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_sprint
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip body.tag.OverrideLinger run tag @s add ca.override_linger_b
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_linger
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2