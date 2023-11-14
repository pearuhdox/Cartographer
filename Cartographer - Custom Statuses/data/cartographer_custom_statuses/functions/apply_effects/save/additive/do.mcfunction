data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:apply_effects data.temp set value []

execute if entity @s[tag=ca.check_ae_main] run function cartographer_custom_statuses:apply_effects/save/additive/mainhand
execute if entity @s[tag=ca.check_ae_offh] run function cartographer_custom_statuses:apply_effects/save/additive/offhand

execute if entity @s[tag=ca.check_ae_head] run function cartographer_custom_statuses:apply_effects/save/additive/head
execute if entity @s[tag=ca.check_ae_body] run function cartographer_custom_statuses:apply_effects/save/additive/body
execute if entity @s[tag=ca.check_ae_legs] run function cartographer_custom_statuses:apply_effects/save/additive/legs
execute if entity @s[tag=ca.check_ae_feet] run function cartographer_custom_statuses:apply_effects/save/additive/feet

tag @s remove ca.check_ae_main
tag @s remove ca.check_ae_offh
tag @s remove ca.check_ae_head
tag @s remove ca.check_ae_body
tag @s remove ca.check_ae_legs
tag @s remove ca.check_ae_feet

scoreboard players set $do_linger ca.status_var 0
execute if entity @s[tag=ca.override_linger] unless score @s ca.linger_cdl matches 1.. run scoreboard players set $do_linger ca.status_var 1