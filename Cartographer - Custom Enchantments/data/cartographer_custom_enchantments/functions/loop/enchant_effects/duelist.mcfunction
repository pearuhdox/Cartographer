execute if entity @s[scores={duelist=1..}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal

execute if entity @s[scores={duelist=1}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 2
execute if entity @s[scores={duelist=2}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 5
execute if entity @s[scores={duelist=3}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 7
execute if entity @s[scores={duelist=4}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 10
execute if entity @s[scores={duelist=5}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s damage_queue 12

execute if entity @s[scores={duelist=1..}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run function cartographer_core:helper/deal_damage/by_score

execute if entity @s[scores={duelist=1}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run function cartographer_core:helper/deal_damage/half
execute if entity @s[scores={duelist=3}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run function cartographer_core:helper/deal_damage/half
execute if entity @s[scores={duelist=5}] run execute as @e[type=#cartographer_core:humanoid,distance=..5,nbt=!{HurtTime:0s}] run function cartographer_core:helper/deal_damage/half