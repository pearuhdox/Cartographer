execute positioned ^ ^ ^0.33 run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 normal

execute positioned ^ ^ ^0.64 run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 normal

particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

tp @s ^ ^ ^1

execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run scoreboard players set @s damage_queue 10
execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/by_score
execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/invulnerable_tick

execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run tp @s ~ ~ ~ facing entity @p[scores={deadeye=1..}] feet

execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/push_half

#execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run data merge entity @s {Fire:85}

execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:loop/enchant_effects/deadeye_raycast

execute unless entity @s[scores={helper_raycast=1..}] run kill @s

execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast run kill @s