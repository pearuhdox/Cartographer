scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1
tp @s ^ ^ ^1

execute positioned ^ ^ ^0.33 if entity @s[tag=pin] run particle minecraft:dust 0.071 0.478 0.427 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=rend] run particle minecraft:dust 0.478 0.039 0.039 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=conductive] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=frost] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=flame] run particle minecraft:dust 0.894 0.537 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=flash] run particle minecraft:dust 0.953 0.882 0.569 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=putrefy] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal

execute positioned ^ ^ ^0.64 if entity @s[tag=pin] run particle minecraft:dust 0.071 0.478 0.427 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=rend] run particle minecraft:dust 0.478 0.039 0.039 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=conductive] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=frost] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=flame] run particle minecraft:dust 0.894 0.537 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=flash] run particle minecraft:dust 0.953 0.882 0.569 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=putrefy] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[scores={helper_raycast=1..6},tag=!encumbered,tag=!trueshotted] run execute positioned ^ ^ ^0.5 run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 1 normal
execute if entity @s[scores={helper_raycast=1..10},tag=trueshotted] run execute positioned ^ ^ ^0.5 run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 1 normal
execute if entity @s[scores={helper_raycast=1..3},tag=encumbered] run execute positioned ^ ^ ^0.5 run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 1 normal

execute if entity @s[tag=pin] run particle minecraft:dust 0.071 0.478 0.427 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=rend] run particle minecraft:dust 0.478 0.039 0.039 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=conductive] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=frost] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=flame] run particle minecraft:dust 0.894 0.537 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=flash] run particle minecraft:dust 0.953 0.882 0.569 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=putrefy] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[scores={helper_raycast=1..6},tag=!encumbered,tag=!trueshotted] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 1 normal
execute if entity @s[scores={helper_raycast=1..10},tag=trueshotted] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 1 normal
execute if entity @s[scores={helper_raycast=1..3},tag=encumbered] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.02 1 normal


execute if entity @s[scores={helper_raycast=1..}] as @e[limit=1,type=#cartographer_core:hostile,distance=..1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity_multi
execute if entity @s[scores={helper_raycast=1..}] if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1,sort=nearest] run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^1 ^ as @e[limit=1,type=#cartographer_core:hostile,distance=..1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity_multi
execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^1 ^ if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1,sort=nearest] run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^-1 ^ as @e[limit=1,type=#cartographer_core:hostile,distance=..1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/entity_multi
execute if entity @s[scores={helper_raycast=1..}] positioned ^ ^-1 ^ if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1,sort=nearest] run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_multi

execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run particle explosion ~ ~ ~ 0 0 0 0 2 force
execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 1
execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 1


execute unless entity @s[scores={helper_raycast=1..}] run kill @s

execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast run kill @s
