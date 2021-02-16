execute if entity @s[scores={decay=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:dust 0.1 0 0 1 ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute if entity @s[scores={decay=1}] run effect give @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] wither 4 0
execute if entity @s[scores={decay=2}] run effect give @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] wither 4 1
execute if entity @s[scores={decay=3}] run effect give @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] wither 4 2