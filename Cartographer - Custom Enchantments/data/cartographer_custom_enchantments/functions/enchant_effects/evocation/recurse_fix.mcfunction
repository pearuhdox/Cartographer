tag @s remove chose_dir
scoreboard players remove @s ca.raycast 1

#particle end_rod ~ ~ ~ 0 0 0 0 1 force

execute if entity @s[scores={ca.raycast=0}] run kill @s

execute if block ~ ~ ~ #bb:can_raycast unless block ~ ~-0.1 ~ #bb:can_raycast if entity @s[scores={ca.raycast=1..},tag=!chose_dir] run scoreboard players set @s ca.raycast 0
execute if block ~ ~ ~ #bb:can_raycast unless block ~ ~-0.1 ~ #bb:can_raycast if entity @s[scores={ca.raycast=1..},tag=!chose_dir] run tag @s add chose_dir

execute if block ~ ~ ~ #bb:can_raycast unless block ~ ~-0.1 ~ #bb:can_raycast if entity @s[scores={ca.raycast=0}] run function cartographer_custom_enchantments:enchant_effects/evocation/swapper

execute unless block ~ ~ ~ #bb:can_raycast if entity @s[scores={ca.raycast=1..},tag=!chose_dir] positioned ~ ~0.1 ~ run function cartographer_custom_enchantments:enchant_effects/evocation/recurse_fix
execute unless block ~ ~ ~ #bb:can_raycast if entity @s[scores={ca.raycast=1..},tag=!chose_dir] run tag @s add chose_dir

execute if block ~ ~-0.1 ~ #bb:can_raycast if entity @s[scores={ca.raycast=1..},tag=!chose_dir] positioned ~ ~-0.1 ~ run function cartographer_custom_enchantments:enchant_effects/evocation/recurse_fix
execute if block ~ ~-0.1 ~ #bb:can_raycast if entity @s[scores={ca.raycast=1..}] run tag @s add chose_dir