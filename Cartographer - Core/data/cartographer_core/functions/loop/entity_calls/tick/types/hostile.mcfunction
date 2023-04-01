execute if entity @s[type=creeper] run function cartographer_core:loop/entity_calls/tick/types/creepers

execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/hostile/custom_enchantments

execute if score $mob_abilities ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/hostile/mob_abilities

execute if score $custom_statuses ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/hostile/custom_statuses

execute if score $mimics ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/hostile/mimics
