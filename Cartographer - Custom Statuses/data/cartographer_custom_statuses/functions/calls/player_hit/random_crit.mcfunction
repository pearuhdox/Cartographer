scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_apply_status ca.status_var 0
scoreboard players set $status_override ca.status_var 0

data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:apply_status data set value {}

execute if entity @s[tag=ca.override_melee] run function cartographer_custom_statuses:calls/player_hit/melee_branch/melee

execute if entity @s[tag=ca.override_crit] run function cartographer_custom_statuses:calls/player_hit/melee_branch/crit



data modify storage cartographer_custom_statuses:apply_status data set value {}
data modify storage cartographer_custom_statuses:apply_status data.temp set value []

scoreboard players set $cloak ca.stat_calc_var 0

scoreboard players set $bleed ca.stat_calc_var -100
scoreboard players set $shock ca.stat_calc_var 0
scoreboard players set $infect ca.stat_calc_var 0
scoreboard players set $stun_time ca.stat_calc_var 0
scoreboard players set $stun_chance ca.stat_calc_var 0
scoreboard players set $morph_chance ca.stat_calc_var 0
scoreboard players set $morph_time ca.stat_calc_var 0
scoreboard players set $charm_chance ca.stat_calc_var 0
scoreboard players set $charm_time ca.stat_calc_var 0

scoreboard players set $expose_duration ca.stat_calc_var 0
scoreboard players set $expose_level ca.stat_calc_var -100

scoreboard players set $oiled_duration ca.stat_calc_var 0
scoreboard players set $oiled_level ca.stat_calc_var -100

scoreboard players set $shackled ca.stat_calc_var 0

scoreboard players set $brittle_duration ca.stat_calc_var 0
scoreboard players set $brittle_level ca.stat_calc_var -100


execute if entity @s[tag=ca.override_melee] run function cartographer_custom_statuses:apply_status/save/override/branches/melee

execute if entity @s[tag=ca.override_crit] run function cartographer_custom_statuses:apply_status/save/override/branches/crit


scoreboard players set $do_linger ca.status_var 0
execute if entity @s[tag=ca.override_linger] unless score @s ca.linger_cdl matches 1.. run scoreboard players set $do_linger ca.status_var 1

function cartographer_custom_statuses:apply_status/save/override/final_calc




tag @s add ca.inflict_cause