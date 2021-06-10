particle minecraft:witch ~ ~1 ~ 0.1 0.1 0.1 1 1 normal @a

execute anchored eyes facing entity @p feet positioned ^ ^ ^0.8 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~

execute unless block ~ ~1 ~ #cartographer_core:can_raycast run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;8456074]},{Type:0,Trail:1b,Colors:[I;3932992]}]}}}}
execute unless block ~ ~1 ~ #cartographer_core:can_raycast run summon area_effect_cloud ~ ~1 ~ {Particle:"witch",NoGravity:1b,Radius:2.0f,RadiusPerTick:-0.01f,RadiusOnUse:0f,Duration:400,DurationOnUse:0f,Age:0,WaitTime:20,Tags:["magic_missile_projectile"],Potion:"minecraft:mundane",Effects:[{Id:20b,Amplifier:1b,Duration:160}]}
execute unless block ~ ~1 ~ #cartographer_core:can_raycast run kill @s

execute if entity @a[distance=..1] run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;8456074]},{Type:0,Trail:1b,Colors:[I;3932992]}]}}}}
execute if entity @a[distance=..1] run summon area_effect_cloud ~ ~1 ~ {Particle:"witch",NoGravity:1b,Radius:2.0f,RadiusPerTick:-0.01f,RadiusOnUse:0f,Duration:400,DurationOnUse:0f,Age:0,WaitTime:20,Tags:["magic_missile_projectile"],Potion:"minecraft:mundane",Effects:[{Id:20b,Amplifier:1b,Duration:160}]}
execute if entity @a[distance=..1] run kill @s
