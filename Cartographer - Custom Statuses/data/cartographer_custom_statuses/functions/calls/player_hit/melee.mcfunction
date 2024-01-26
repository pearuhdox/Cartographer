scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_apply_status ca.status_var 0
scoreboard players set $status_override ca.status_var 0

data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:apply_status data set value {}

execute if entity @s[tag=ca.si_main,tag=!ca.override_basic_m,tag=!ca.override_crit_m,tag=!ca.override_sprint_m,tag=!ca.override_sneak_m] run function cartographer_custom_statuses:apply_status/save/mainhand
execute if entity @s[tag=ca.as_main,tag=!ca.override_basic_m,tag=!ca.override_crit_m,tag=!ca.override_sprint_m,tag=!ca.override_sneak_m] run function cartographer_custom_statuses:apply_self/save/mainhand
execute if entity @s[tag=ca.ae_main,tag=!ca.override_basic_m,tag=!ca.override_crit_m,tag=!ca.override_sprint_m,tag=!ca.override_sneak_m] run function cartographer_custom_statuses:apply_effects/save/mainhand

execute if entity @s[tag=ca.override_melee] run function cartographer_custom_statuses:calls/player_hit/melee_branch/melee

execute if entity @s[tag=ca.override_crit] unless predicate bb:cant_crit unless score @s ca.sneak matches 1.. run function cartographer_custom_statuses:calls/player_hit/melee_branch/crit
execute if entity @s[tag=ca.override_sprint] if score @s ca.sprint matches 1.. run function cartographer_custom_statuses:calls/player_hit/melee_branch/sprint
execute if entity @s[tag=ca.override_sneak] if score @s ca.sneak matches 1.. run function cartographer_custom_statuses:calls/player_hit/melee_branch/sneak

execute if entity @s[tag=ca.override_basic] if predicate bb:cant_crit unless score @s ca.sneak matches 1.. unless score @s ca.sneak matches 1.. run function cartographer_custom_statuses:calls/player_hit/melee_branch/basic

execute if score $status_override ca.status_var matches 1.. run function cartographer_custom_statuses:apply_status/save/override/do

execute if score $do_apply_status ca.status_var matches 1.. at @s run scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy

tag @s add ca.inflict_cause