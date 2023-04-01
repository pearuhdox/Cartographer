#Temporary File for 1.19.4 when more marker type entities are added that will need ticking.
execute if score $mimics ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/markers/mimics

execute if score $loot_additions ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/markers/loot_additions

execute if entity @s[type=marker,tag=ca.core_fireball_track] run function cartographer_core:helper/delta/fireball/master