scoreboard players set $temp ca.status_var 0

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.OverrideMelee run tag @s add ca.override_melee_l
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_melee
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.OverrideRanged run tag @s add ca.override_ranged_l
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_ranged
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.OverrideBasic run tag @s add ca.override_basic_l
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_basic
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.OverrideCrit run tag @s add ca.override_crit_l
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_crit
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.OverrideSneak run tag @s add ca.override_sneak_l
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_sneak
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.OverrideSprint run tag @s add ca.override_sprint_l
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_sprint
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2

execute unless score $temp ca.status_var matches 1.. store success score $temp ca.status_var if data storage cartographer_custom_statuses:player_equip legs.tag.OverrideLinger run tag @s add ca.override_linger_l
execute if score $temp ca.status_var matches 1 run tag @s add ca.override_linger
execute if score $temp ca.status_var matches 1 run scoreboard players set $temp ca.status_var 2