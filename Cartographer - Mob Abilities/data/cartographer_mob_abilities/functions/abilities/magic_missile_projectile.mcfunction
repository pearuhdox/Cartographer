particle minecraft:witch ~ ~1 ~ 0.1 0.1 0.1 1 1 normal @a

execute as @s at @s anchored eyes facing entity @p feet positioned ^ ^ ^1.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.4 ~ ~

execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;8456074]},{Type:0,Trail:1b,Colors:[I;3932992]}]}}}}
execute unless block ~ ~1 ~ #cartographer_core:can_raycast as @s at @s run kill @s

execute if entity @a[distance=..1] as @s at @s run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;8456074]},{Type:0,Trail:1b,Colors:[I;3932992]}]}}}}
execute if entity @a[distance=..1] as @s at @s run kill @s