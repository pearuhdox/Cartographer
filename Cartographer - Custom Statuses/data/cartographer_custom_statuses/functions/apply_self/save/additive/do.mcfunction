data modify storage cartographer_custom_statuses:apply_self data set value {}
data modify storage cartographer_custom_statuses:apply_self data.temp set value []

execute if entity @s[tag=ca.check_as_main] run function cartographer_custom_statuses:apply_self/save/additive/mainhand
execute if entity @s[tag=ca.check_as_offh] run function cartographer_custom_statuses:apply_self/save/additive/offhand

execute if entity @s[tag=ca.check_as_head] run function cartographer_custom_statuses:apply_self/save/additive/head
execute if entity @s[tag=ca.check_as_body] run function cartographer_custom_statuses:apply_self/save/additive/body
execute if entity @s[tag=ca.check_as_legs] run function cartographer_custom_statuses:apply_self/save/additive/legs
execute if entity @s[tag=ca.check_as_feet] run function cartographer_custom_statuses:apply_self/save/additive/feet

tag @s remove ca.check_as_main
tag @s remove ca.check_as_offh
tag @s remove ca.check_as_head
tag @s remove ca.check_as_body
tag @s remove ca.check_as_legs
tag @s remove ca.check_as_feet