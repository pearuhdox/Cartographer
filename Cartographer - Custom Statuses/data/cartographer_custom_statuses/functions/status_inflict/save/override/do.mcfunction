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

execute if entity @s[tag=ca.si_main] run function cartographer_custom_statuses:status_inflict/save/override/mainhand

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


function cartographer_custom_statuses:status_inflict/save/override/final_calc