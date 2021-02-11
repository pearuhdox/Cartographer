function cartographer_core:helper/randomize

scoreboard players operation @s helper_melee = @s random

execute if entity @s[scores={stunning=1,helper_melee=..10}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if entity @s[scores={stunning=2,helper_melee=..20}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if entity @s[scores={stunning=3,helper_melee=..30}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if entity @s[scores={stunning=4,helper_melee=..40}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if entity @s[scores={stunning=5,helper_melee=..50}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal

execute if entity @s[scores={stunning=1,helper_melee=..10}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if entity @s[scores={stunning=2,helper_melee=..20}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if entity @s[scores={stunning=3,helper_melee=..30}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if entity @s[scores={stunning=4,helper_melee=..40}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute if entity @s[scores={stunning=5,helper_melee=..50}] run execute as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25

execute if entity @s[scores={stunning=1,helper_melee=..10}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_stunned 21
execute if entity @s[scores={stunning=2,helper_melee=..20}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_stunned 21
execute if entity @s[scores={stunning=3,helper_melee=..30}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_stunned 21
execute if entity @s[scores={stunning=4,helper_melee=..40}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_stunned 21
execute if entity @s[scores={stunning=5,helper_melee=..50}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_stunned 21