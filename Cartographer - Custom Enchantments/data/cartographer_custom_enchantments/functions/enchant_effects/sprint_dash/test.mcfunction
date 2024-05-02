execute unless block ~ ~-0.2 ~ #cartographer_core:can_raycast unless score @s ca.sprint_dash_time matches 1.. run tag @s add ca.can_sprint_dash


execute if predicate cartographer_custom_enchantments:is_sprinting run function cartographer_custom_enchantments:enchant_effects/sprint_dash/sprinting
