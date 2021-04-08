execute positioned ^ ^ ^0.33 if entity @s[tag=pin] run particle minecraft:dust 0.071 0.478 0.427 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=rend] run particle minecraft:dust 0.478 0.039 0.039 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=conductive] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=frost] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=flame] run particle minecraft:dust 0.894 0.537 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=flash] run particle minecraft:dust 0.953 0.882 0.569 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 if entity @s[tag=putrefy] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.33 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 normal

execute positioned ^ ^ ^0.64 if entity @s[tag=pin] run particle minecraft:dust 0.071 0.478 0.427 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=rend] run particle minecraft:dust 0.478 0.039 0.039 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=conductive] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=frost] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=flame] run particle minecraft:dust 0.894 0.537 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=flash] run particle minecraft:dust 0.953 0.882 0.569 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 if entity @s[tag=putrefy] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute positioned ^ ^ ^0.64 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 normal

execute if entity @s[tag=pin] run particle minecraft:dust 0.071 0.478 0.427 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=rend] run particle minecraft:dust 0.478 0.039 0.039 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=conductive] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=frost] run particle minecraft:dust 0.827 0.969 0.969 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=flame] run particle minecraft:dust 0.894 0.537 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=flash] run particle minecraft:dust 0.953 0.882 0.569 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
execute if entity @s[tag=putrefy] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0.5 1 normal
particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 normal

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

tp @s ^ ^ ^1

execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2


execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run scoreboard players set @s damage_queue 10
execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/by_score
execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/invulnerable_tick

execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run tp @s ~ ~ ~ facing entity @p[scores={deadeye=1..}] feet

execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/push_half

execute if entity @s[tag=flame] run execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run data merge entity @s {Fire:85}
execute if entity @s[tag=frost] run execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run effect give @s slowness 5 1
execute if entity @s[tag=pin] run execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run effect give @s bad_omen 5 1
execute if entity @s[tag=conductive] run execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run scoreboard players set @s effect_shocked 5
execute if entity @s[tag=putrefy] run execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run scoreboard players set @s effect_infect 5
execute if entity @s[tag=rend] run execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s unless entity @s[scores={effect_bleed=1..}] run scoreboard players set @s effect_bleed 5
execute if entity @s[tag=rend] run execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s if entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 11

execute if entity @s[tag=flash] run function cartographer_core:helper/randomize

execute if entity @s[tag=flash] run scoreboard players operation @s ca.dummy = @s random

execute if entity @s[tag=flash,scores={ca.dummy=..70}] run execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run execute as @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] at @s run scoreboard players add @s effect_stunned 15


execute if entity @e[limit=1,type=#cartographer_core:hostile,distance=..1.5] run scoreboard players set @s helper_raycast 0

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/deadeye_raycast

execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^ run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2


execute unless entity @s[scores={helper_raycast=1..}] run kill @s

execute if entity @s[scores={helper_raycast=1..}] unless block ~ ~ ~ #cartographer_core:can_raycast run kill @s