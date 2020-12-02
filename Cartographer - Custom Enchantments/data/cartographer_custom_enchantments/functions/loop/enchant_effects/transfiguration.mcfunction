function cartographer_core:helper/randomize

scoreboard players operation @s helper_melee = @s random

execute if entity @s[scores={transfiguration=1,helper_melee=..3}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if entity @s[scores={transfiguration=2,helper_melee=..6}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if entity @s[scores={transfiguration=3,helper_melee=..9}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if entity @s[scores={transfiguration=4,helper_melee=..12}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute if entity @s[scores={transfiguration=5,helper_melee=..15}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal

execute if entity @s[scores={transfiguration=1,helper_melee=..3}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.zombie_villager.converted player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={transfiguration=2,helper_melee=..6}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.zombie_villager.converted player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={transfiguration=3,helper_melee=..9}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.zombie_villager.converted player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={transfiguration=4,helper_melee=..12}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.zombie_villager.converted player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={transfiguration=5,helper_melee=..15}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run playsound minecraft:entity.zombie_villager.converted player @a[distance=..8] ~ ~ ~ 0.5 2

execute if entity @s[scores={transfiguration=1,helper_melee=..3}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run summon chicken ~ ~ ~
execute if entity @s[scores={transfiguration=2,helper_melee=..6}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run summon chicken ~ ~ ~
execute if entity @s[scores={transfiguration=3,helper_melee=..9}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run summon chicken ~ ~ ~
execute if entity @s[scores={transfiguration=4,helper_melee=..12}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run summon chicken ~ ~ ~
execute if entity @s[scores={transfiguration=5,helper_melee=..15}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run summon chicken ~ ~ ~

execute if entity @s[scores={transfiguration=1,helper_melee=..3}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run tp @s ~ -100 ~
execute if entity @s[scores={transfiguration=2,helper_melee=..6}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run tp @s ~ -100 ~
execute if entity @s[scores={transfiguration=3,helper_melee=..9}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run tp @s ~ -100 ~
execute if entity @s[scores={transfiguration=4,helper_melee=..12}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run tp @s ~ -100 ~
execute if entity @s[scores={transfiguration=5,helper_melee=..15}] run execute as @e[tag=!elite,tag=!boss,type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run tp @s ~ -100 ~