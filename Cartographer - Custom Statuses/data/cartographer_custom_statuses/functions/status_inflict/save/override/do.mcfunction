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

execute if entity @s[tag=ca.override_melee_o] run function cartographer_custom_statuses:status_inflict/save/override/offhand

execute if entity @s[tag=ca.override_melee_h] run function cartographer_custom_statuses:status_inflict/save/override/head
execute if entity @s[tag=ca.override_melee_b] run function cartographer_custom_statuses:status_inflict/save/override/body
execute if entity @s[tag=ca.override_melee_l] run function cartographer_custom_statuses:status_inflict/save/override/legs
execute if entity @s[tag=ca.override_melee_f] run function cartographer_custom_statuses:status_inflict/save/override/feet

execute if entity @s[tag=ca.override_ranged_o] run function cartographer_custom_statuses:status_inflict/save/override/offhand

execute if entity @s[tag=ca.override_ranged_h] run function cartographer_custom_statuses:status_inflict/save/override/head
execute if entity @s[tag=ca.override_ranged_b] run function cartographer_custom_statuses:status_inflict/save/override/body
execute if entity @s[tag=ca.override_ranged_l] run function cartographer_custom_statuses:status_inflict/save/override/legs
execute if entity @s[tag=ca.override_ranged_f] run function cartographer_custom_statuses:status_inflict/save/override/feet


execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_o] run function cartographer_custom_statuses:status_inflict/save/override/offhand
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_m] run function cartographer_custom_statuses:status_inflict/save/override/mainhand
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_h] run function cartographer_custom_statuses:status_inflict/save/override/head
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_b] run function cartographer_custom_statuses:status_inflict/save/override/body
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_l] run function cartographer_custom_statuses:status_inflict/save/override/legs
execute unless predicate bb:cant_crit if entity @s[tag=ca.override_crit_f] run function cartographer_custom_statuses:status_inflict/save/override/feet

execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_o] run function cartographer_custom_statuses:status_inflict/save/override/offhand
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_m] run function cartographer_custom_statuses:status_inflict/save/override/mainhand
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_h] run function cartographer_custom_statuses:status_inflict/save/override/head
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_b] run function cartographer_custom_statuses:status_inflict/save/override/body
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_l] run function cartographer_custom_statuses:status_inflict/save/override/legs
execute if score @s ca.sprint matches 1.. if entity @s[tag=ca.override_sprint_f] run function cartographer_custom_statuses:status_inflict/save/override/feet

execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_o] run function cartographer_custom_statuses:status_inflict/save/override/offhand
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_m] run function cartographer_custom_statuses:status_inflict/save/override/mainhand
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_h] run function cartographer_custom_statuses:status_inflict/save/override/head
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_b] run function cartographer_custom_statuses:status_inflict/save/override/body
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_l] run function cartographer_custom_statuses:status_inflict/save/override/legs
execute if score @s ca.sneak matches 1.. if entity @s[tag=ca.override_sneak_f] run function cartographer_custom_statuses:status_inflict/save/override/feet


function cartographer_custom_statuses:status_inflict/save/override/final_calc