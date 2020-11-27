execute if entity @s[scores={executioner=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run attribute @s minecraft:generic.max_health modifier add 3-5-24-5-3 execution_check 0 add
execute if entity @s[scores={executioner=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run execute store result score @s helper_exec_max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 10
execute if entity @s[scores={executioner=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run execute store result score @s helper_exec_low run data get entity @s Health 10000

execute if entity @s[scores={executioner=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run scoreboard players operation @s helper_exec_low /= @s helper_exec_max

execute if entity @s[scores={executioner=1}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..100},nbt=!{HurtTimer:0s}] at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5
execute if entity @s[scores={executioner=2}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..175},nbt=!{HurtTimer:0s}] at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5
execute if entity @s[scores={executioner=3}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..250},nbt=!{HurtTimer:0s}] at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..8] ~ ~ ~ 1 0.5

execute if entity @s[scores={executioner=1}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..100},nbt=!{HurtTimer:0s}] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5
execute if entity @s[scores={executioner=2}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..175},nbt=!{HurtTimer:0s}] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5
execute if entity @s[scores={executioner=3}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..250},nbt=!{HurtTimer:0s}] at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5

execute if entity @s[scores={executioner=1}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..100},nbt=!{HurtTimer:0s}] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.2 0.5 0 5 normal
execute if entity @s[scores={executioner=2}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..175},nbt=!{HurtTimer:0s}] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.2 0.5 0 5 normal
execute if entity @s[scores={executioner=3}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..250},nbt=!{HurtTimer:0s}] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.2 0.5 0 5 normal

execute if entity @s[scores={executioner=1}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..100},nbt=!{HurtTimer:0s}] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.2 0.5 0.1 10 normal
execute if entity @s[scores={executioner=2}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..175},nbt=!{HurtTimer:0s}] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.2 0.5 0.1 10 normal
execute if entity @s[scores={executioner=3}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..250},nbt=!{HurtTimer:0s}] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.2 0.5 0.1 10 normal

execute if entity @s[scores={executioner=1}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..100},nbt=!{HurtTimer:0s}] at @s run kill @s
execute if entity @s[scores={executioner=2}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..175},nbt=!{HurtTimer:0s}] at @s run kill @s
execute if entity @s[scores={executioner=3}] run execute as @e[type=#cartographer_core:hostile,distance=..5,scores={helper_exec_low=..250},nbt=!{HurtTimer:0s}] at @s run kill @s
