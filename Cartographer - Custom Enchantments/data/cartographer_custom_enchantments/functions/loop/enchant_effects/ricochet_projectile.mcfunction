#execute as @s at @s run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,limit=1,sort=nearest] feet

execute as @s at @s run tp @s ^ ^ ^1

execute as @s[scores={helper_lifetime=1..}] at @s run execute unless entity @e[type=#cartographer_core:hostile,distance=..1.5,scores={ricochet_cool=1..}] run execute if entity @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run scoreboard players set @s damage_queue 7
execute as @s[scores={helper_lifetime=1..}] at @s run execute unless entity @e[type=#cartographer_core:hostile,distance=..1.5,scores={ricochet_cool=1..}] run execute if entity @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/by_score
execute as @s[scores={helper_lifetime=1..}] at @s run execute unless entity @e[type=#cartographer_core:hostile,distance=..1.5,scores={ricochet_cool=1..}] run execute if entity @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] run execute as @e[type=#cartographer_core:hostile,distance=..1.5] at @s run function cartographer_core:helper/deal_damage/invulnerable_tick

execute as @s[scores={helper_lifetime=1..}] at @s run execute unless entity @e[type=#cartographer_core:hostile,distance=..1.5,scores={ricochet_cool=1..}] run execute if entity @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] run playsound minecraft:entity.generic.splash player @a[distance=..16] ~ ~1 ~ 1 0.75
execute as @s[scores={helper_lifetime=1..}] at @s run execute unless entity @e[type=#cartographer_core:hostile,distance=..1.5,scores={ricochet_cool=1..}] run execute if entity @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] run particle minecraft:splash ~ ~1 ~ 0.3 0.3 0.3 0.1 40 normal
execute as @s[scores={helper_lifetime=1..}] at @s run execute unless entity @e[type=#cartographer_core:hostile,distance=..1.5,scores={ricochet_cool=1..}] run execute if entity @e[type=#cartographer_core:hostile,distance=..1.5,nbt={HurtTime:0s}] run kill @s

execute as @s[scores={helper_lifetime=1..}] at @s run execute unless block ~ ~1 ~ air run playsound minecraft:entity.generic.splash player @a[distance=..16] ~ ~1 ~ 1 0.75
execute as @s[scores={helper_lifetime=1..}] at @s run execute unless block ~ ~1 ~ air run particle minecraft:splash ~ ~1 ~ 0.3 0.3 0.3 0.1 40 normal
execute as @s[scores={helper_lifetime=1..}] at @s run execute unless block ~ ~1 ~ air run kill @s

scoreboard players add @s helper_lifetime 1