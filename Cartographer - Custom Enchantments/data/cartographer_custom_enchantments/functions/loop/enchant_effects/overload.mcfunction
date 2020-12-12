execute if entity @s[scores={overload=1..}] run execute as @e[type=!player,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

execute if entity @s[scores={overload=1}] run execute unless entity @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s effect_shocked 3
execute if entity @s[scores={overload=2}] run execute unless entity @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s effect_shocked 5
execute if entity @s[scores={overload=3}] run execute unless entity @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players set @s effect_shocked 7
