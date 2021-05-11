execute unless block ~ ~ ~ #cartographer_core:can_raycast run tp @s ~ ~0.1 ~

execute if block ~ ~-0.1 ~ #cartographer_core:can_raycast run tp @s ~ ~-0.1 ~

execute unless block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchant_effects/evocation/recurse_fix
execute if block ~ ~-0.1 ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchant_effects/evocation/recurse_fix