execute if entity @s[scores={fire_aspect=1}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run data modify entity @s Fire set value 81
execute if entity @s[scores={fire_aspect=2}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run data modify entity @s Fire set value 161
execute if entity @s[scores={fire_aspect=3..}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run data modify entity @s Fire set value 241

execute if entity @s[scores={frostbite=1}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run effect give @s slowness 4 0
execute if entity @s[scores={frostbite=2}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run effect give @s slowness 4 1
execute if entity @s[scores={frostbite=3}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run effect give @s slowness 4 2
execute if entity @s[scores={frostbite=4}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run effect give @s slowness 4 3
execute if entity @s[scores={frostbite=5..}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run effect give @s slowness 4 4

execute if entity @s[scores={decay=1}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run scoreboard players set @s effect_infect 3
execute if entity @s[scores={decay=2}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run scoreboard players set @s effect_infect 5
execute if entity @s[scores={decay=3..}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run scoreboard players set @s effect_infect 7

execute if entity @s[scores={committed=1}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run effect give @s bad_omen 4 0
execute if entity @s[scores={committed=2}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run effect give @s bad_omen 4 1
execute if entity @s[scores={committed=3..}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run effect give @s bad_omen 4 2

execute if entity @s[scores={vicious=1..}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run scoreboard players add @s[scores={effect_bleed=1..},type=#cartographer_core:hostile,nbt=!{HurtTime:0s}] effect_bleed 11

execute if entity @s[scores={vicious=1}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run execute unless entity @s[type=#cartographer_core:hostile,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run scoreboard players set @s effect_bleed 3
execute if entity @s[scores={vicious=2}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run execute unless entity @s[type=#cartographer_core:hostile,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run scoreboard players set @s effect_bleed 5
execute if entity @s[scores={vicious=3..}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run execute unless entity @s[type=#cartographer_core:hostile,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run scoreboard players set @s effect_bleed 7

execute if entity @s[scores={overload=1}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run scoreboard players set @s effect_shocked 3
execute if entity @s[scores={overload=2}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run scoreboard players set @s effect_shocked 5
execute if entity @s[scores={overload=3..}] run execute as @e[type=#cartographer_core:hostile,distance=..1] at @s run scoreboard players set @s effect_shocked 7

execute if entity @s[scores={stunning=1..}] run function cartographer_core:helper/randomize
execute if entity @s[scores={stunning=1..}] run scoreboard players operation @s helper_melee = @s random

execute if entity @s[scores={stunning=1,helper_melee=..10}] run execute as @e[type=#cartographer_core:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={stunning=2,helper_melee=..20}] run execute as @e[type=#cartographer_core:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={stunning=3,helper_melee=..30}] run execute as @e[type=#cartographer_core:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={stunning=4,helper_melee=..40}] run execute as @e[type=#cartographer_core:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={stunning=5..,helper_melee=..50}] run execute as @e[type=#cartographer_core:hostile,distance=..1,limit=1,sort=nearest] at @s run scoreboard players set @s effect_stunned 21