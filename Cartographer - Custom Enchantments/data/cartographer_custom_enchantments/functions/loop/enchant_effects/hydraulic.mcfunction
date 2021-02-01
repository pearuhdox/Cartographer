execute if entity @e[type=trident,distance=..3] run summon armor_stand ^ ^ ^2 {NoGravity:1,Tags:["hydraul_stopper"],DeathLootTable:"nothing",Invisible:1}

execute if entity @e[type=trident,distance=..3] run scoreboard players set @e[tag=hydraul_stopper,type=armor_stand,limit=1] helper_lifetime 1

execute if entity @e[type=trident,distance=..3] run execute as @s at @s run playsound minecraft:block.bubble_column.upwards_inside player @a[distance=..8] ~ ~ ~ 2 0.75

execute if entity @e[type=trident,distance=..3] run execute as @s at @s positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.3 15
execute if entity @e[type=trident,distance=..3] run execute as @s at @s positioned ^ ^ ^5 run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.3 15
execute if entity @e[type=trident,distance=..3] run execute as @s at @s positioned ^ ^ ^3 run particle minecraft:splash ~ ~0.5 ~ 1.5 0.7 1.5 1 300

execute if entity @e[type=trident,distance=..3] run execute as @s at @s positioned ^ ^ ^4 run execute as @e[type=#cartographer_core:hostile,distance=..4] at @s run tp @s ~ ~ ~ facing entity @p feet

execute if entity @e[type=trident,distance=..3] run execute as @s at @s positioned ^ ^ ^4 run execute as @e[type=#cartographer_core:hostile,distance=..4] at @s run function cartographer_core:helper/push

execute if entity @e[type=trident,distance=..3] run execute as @s at @s positioned ^ ^ ^4 run execute as @e[type=#cartographer_core:hostile,distance=..4] at @s run scoreboard players set @s damage_queue 6

execute if entity @e[type=trident,distance=..3] run execute as @s at @s positioned ^ ^ ^4 run execute as @e[type=#cartographer_core:hostile,distance=..4] at @s run function cartographer_core:helper/deal_damage/by_score

execute if entity @e[type=trident,distance=..3] run execute as @s at @s positioned ^ ^ ^4 run execute as @e[type=#cartographer_core:hostile,distance=..4] at @s run function cartographer_core:helper/deal_damage/invulnerable_tick