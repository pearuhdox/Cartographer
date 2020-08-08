function cartographer_core:helper/randomize

scoreboard players operation @s helper_melee = @s random

execute if entity @s[scores={evocation=1,helper_melee=..40}] run playsound minecraft:entity.evoker.prepare_attack player @s ~ ~ ~ 0.5 2
execute if entity @s[scores={evocation=2,helper_melee=..60}] run playsound minecraft:entity.evoker.prepare_attack player @s ~ ~ ~ 0.5 2
execute if entity @s[scores={evocation=3,helper_melee=..80}] run playsound minecraft:entity.evoker.prepare_attack player @s ~ ~ ~ 0.5 2

execute if entity @s[scores={evocation=1,helper_melee=..20}] run tag @s add evoking_player
execute if entity @s[scores={evocation=1,helper_melee=21..40}] run tag @s add evoking_mob
execute if entity @s[scores={evocation=2,helper_melee=..30}] run tag @s add evoking_player
execute if entity @s[scores={evocation=2,helper_melee=31..60}] run tag @s add evoking_mob
execute if entity @s[scores={evocation=3,helper_melee=..40}] run tag @s add evoking_player
execute if entity @s[scores={evocation=3,helper_melee=41..80}] run tag @s add evoking_mob

execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run effect give @s slowness 1 9 true

execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run particle minecraft:crit ~ ~0.5 ~ 1 0.25 1 0.2 120 normal

execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~ ~ ~ {Warmup:20}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~1 ~ ~ {Warmup:25}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~-1 ~ ~ {Warmup:25}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~ ~ ~1 {Warmup:25}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~ ~ ~-1 {Warmup:25}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~1 ~ ~1 {Warmup:30}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~-1 ~ ~1 {Warmup:30}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~1 ~ ~-1 {Warmup:30}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~-1 ~ ~-1 {Warmup:30}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~2 ~ ~ {Warmup:30}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~-2 ~ ~ {Warmup:30}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~ ~ ~2 {Warmup:30}
execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute as @e[type=#cartographer_core:hostile,distance=..10,limit=1,sort=nearest] at @s run summon evoker_fangs ~ ~ ~-2 {Warmup:30}

execute if entity @s[tag=evoking_mob] run execute as @s positioned ^ ^ ^5 run execute unless entity @e[type=#cartographer_core:hostile,distance=..10] run tag @s add evoking_player

execute if entity @s[tag=evoking_player] run summon armor_stand ~ ~ ~ {NoGravity:0b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["evoke_ray"]}
execute if entity @s[tag=evoking_player] run tp @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] @p
execute if entity @s[tag=evoking_player] run tp @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] ~ ~ ~ ~ 0

execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^ ^ ^2 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^ ^ ^3 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^ ^ ^4 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^ ^ ^5 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^ ^ ^6 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^ ^ ^7 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^ ^ ^8 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^1 ^ ^8 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^2 ^ ^8 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^3 ^ ^8 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^-1 ^ ^8 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^-2 ^ ^8 0.2 0.25 0.2 0 40 normal
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run particle minecraft:crit ^-3 ^ ^8 0.2 0.25 0.2 0 40 normal

execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^ ^ ^2 {Warmup:10}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^ ^ ^3 {Warmup:12}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^ ^ ^4 {Warmup:14}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^ ^ ^5 {Warmup:16}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^ ^ ^6 {Warmup:18}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^ ^ ^7 {Warmup:20}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^ ^ ^8 {Warmup:22}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^1 ^ ^8 {Warmup:24}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^2 ^ ^8 {Warmup:26}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^3 ^ ^8 {Warmup:28}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^4 ^ ^8 {Warmup:30}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^-1 ^ ^8 {Warmup:24}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^-2 ^ ^8 {Warmup:26}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^-3 ^ ^8 {Warmup:28}
execute if entity @s[tag=evoking_player] run execute as @e[tag=evoke_ray,limit=1,distance=..1,type=armor_stand] at @s run summon evoker_fangs ^-4 ^ ^8 {Warmup:30}




kill @e[tag=evoke_ray,type=armor_stand]

tag @s remove evoking_mob
tag @s remove evoking_player
