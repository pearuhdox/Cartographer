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

execute if entity @s[tag=ca.check_si_main] run function cartographer_custom_statuses:status_inflict/save/additive/mainhand
execute if entity @s[tag=ca.check_si_offh] run function cartographer_custom_statuses:status_inflict/save/additive/offhand

execute if entity @s[tag=ca.check_si_head] run function cartographer_custom_statuses:status_inflict/save/additive/head
execute if entity @s[tag=ca.check_si_body] run function cartographer_custom_statuses:status_inflict/save/additive/body
execute if entity @s[tag=ca.check_si_legs] run function cartographer_custom_statuses:status_inflict/save/additive/legs
execute if entity @s[tag=ca.check_si_feet] run function cartographer_custom_statuses:status_inflict/save/additive/feet



tag @s remove ca.check_si_main
tag @s remove ca.check_si_offh
tag @s remove ca.check_si_head
tag @s remove ca.check_si_body
tag @s remove ca.check_si_legs
tag @s remove ca.check_si_feet

function cartographer_custom_statuses:status_inflict/save/additive/final_calc