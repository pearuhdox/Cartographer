execute unless block ~ ~ ~ #cartographer_core:can_raycast run tp @s ~ ~0.1 ~

execute if block ~ ~-0.1 ~ #cartographer_core:can_raycast run tp @s ~ ~-0.1 ~

execute as @s at @s run execute unless block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchant_effects/evocation_recurse_fix
execute as @s at @s run execute if block ~ ~-0.1 ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchant_effects/evocation_recurse_fix