execute if entity @s[type=fireball] run function cartographer_core:loop/entity_calls/tick/types/fireballs

execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/projectiles/custom_enchantments

execute if score $mob_abilities ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/projectiles/mob_abilities

execute if score $custom_statuses ca.installed matches 1.. run function cartographer_core:loop/entity_calls/tick/types/projectiles/custom_statuses

scoreboard players add @s ca.lifetime 1