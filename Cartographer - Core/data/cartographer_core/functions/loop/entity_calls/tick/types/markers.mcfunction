#Temporary File for 1.19.4 when more marker type entities are added that will need ticking.
execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/markers/custom_enchantments

execute if score $mimics ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/markers/mimics

execute if score $loot_additions ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/markers/loot_additions


execute if score $api ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/markers/api