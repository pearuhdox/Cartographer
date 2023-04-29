data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:status_inflict data set value {}

execute if entity @s[tag=ca.si_main] run function cartographer_custom_statuses:status_inflict/save/mainhand
execute if entity @s[tag=ca.ae_main] run function cartographer_custom_statuses:apply_effects/save/mainhand