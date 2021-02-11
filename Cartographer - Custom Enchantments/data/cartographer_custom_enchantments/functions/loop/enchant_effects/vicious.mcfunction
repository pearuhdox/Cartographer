execute if entity @s[scores={vicious=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.25 0.4 0.25 0 10 normal

execute if entity @s[scores={vicious=1..}] run scoreboard players add @e[scores={effect_bleed=1..},type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_bleed 11

execute if entity @s[scores={vicious=1}] run execute unless entity @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players add @s effect_bleed 3
execute if entity @s[scores={vicious=2}] run execute unless entity @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players add @s effect_bleed 5
execute if entity @s[scores={vicious=3}] run execute unless entity @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] run scoreboard players add @s effect_bleed 7
