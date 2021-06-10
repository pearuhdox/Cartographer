scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1
tp @s ^ ^ ^1

execute positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle

execute positioned ^ ^ ^0.33 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle

execute positioned ^ ^ ^0.64 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_extra_particle

execute if entity @s[scores={helper_raycast=1..}] as @e[limit=1,type=#cartographer_core:hostile,distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity
execute if entity @s[scores={helper_raycast=1..}] if score $hit_check deadeye matches 1 run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^1 ^ as @e[limit=1,type=#cartographer_core:hostile,distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity
execute if entity @s[scores={helper_raycast=1..}] if score $hit_check deadeye matches 1 run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^-1 ^ as @e[limit=1,type=#cartographer_core:hostile,distance=..1] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity
execute if entity @s[scores={helper_raycast=1..}] if score $hit_check deadeye matches 1 run scoreboard players set @s helper_raycast 0

scoreboard players set $hit_check deadeye 0

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast
execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_svfx


execute unless entity @s[scores={helper_raycast=1..}] run kill @s

execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast run kill @s

tag @a[tag=is_firing_deadeye] remove is_firing_deadeye
