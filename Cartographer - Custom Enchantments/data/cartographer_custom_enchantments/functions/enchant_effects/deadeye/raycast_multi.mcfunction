scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1
tp @s ^ ^ ^1

execute positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle_multi

execute positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle_multi

execute if entity @s[scores={helper_raycast=1..}] as @e[limit=1,type=#cartographer_core:hostile,distance=..1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity_multi
execute if entity @s[scores={helper_raycast=1..}] if score $hit_check deadeye matches 1 run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^1 ^ as @e[limit=1,type=#cartographer_core:hostile,distance=..1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity_multi
execute if entity @s[scores={helper_raycast=1..}] if score $hit_check deadeye matches 1 run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^-1 ^ as @e[limit=1,type=#cartographer_core:hostile,distance=..1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity_multi
execute if entity @s[scores={helper_raycast=1..}] if score $hit_check deadeye matches 1 run scoreboard players set @s helper_raycast 0

scoreboard players set $hit_check deadeye 0

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_multi
execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_multi_svfx

execute unless entity @s[scores={helper_raycast=1..}] run kill @s

execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast run kill @s