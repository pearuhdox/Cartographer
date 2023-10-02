data modify storage cartographer_custom_statuses:status_inflict data set value {}
data modify storage cartographer_custom_statuses:status_inflict data.temp set value []

scoreboard players set $cloak ca.stat_calc_var 0

scoreboard players set $bleed ca.stat_calc_var 0
scoreboard players set $shock ca.stat_calc_var 0
scoreboard players set $infect ca.stat_calc_var 0
scoreboard players set $stun_time ca.stat_calc_var 0
scoreboard players set $stun_chance ca.stat_calc_var 0
scoreboard players set $morph_chance ca.stat_calc_var 0
scoreboard players set $possess_chance ca.stat_calc_var 0

scoreboard players set $expose_duration ca.stat_calc_var 0
scoreboard players set $expose_level ca.stat_calc_var 0

execute if entity @s[tag=ca.si_main,tag=!ca.override_crit_m,tag=!ca.override_sprint_m,tag=!ca.override_sneak_m] run function cartographer_custom_statuses:status_inflict/save/override/mainhand

execute if entity @s[tag=ca.override_melee] run function cartographer_custom_statuses:status_inflict/save/override/branches/melee

execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit] run function cartographer_custom_statuses:status_inflict/save/override/branches/crit

execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint] run function cartographer_custom_statuses:status_inflict/save/override/branches/sprint

execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak] run function cartographer_custom_statuses:status_inflict/save/override/branches/sneak

function cartographer_custom_statuses:status_inflict/save/override/final_calc