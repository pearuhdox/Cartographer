playsound minecraft:entity.zombie.infect hostile @a[distance=..12] ~ ~ ~ 1.25 1.25

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:dust 0 0 0 2 ~ ~1 ~ 0.3 0.4 0.3 0 24 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:dust 0 0 0 2 ~ ~0.5 ~ 0.5 0.1 0.5 0 24 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:dust 0 0 0 2 ~ ~0.25 ~ 0.35 0.1 0.35 0 15 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:dust 0 0 0 2 ~ ~1 ~ 1.25 0.4 1.25 0 60 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:witch ~ ~1 ~ 0.3 0.4 0.3 0 24 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:witch ~ ~0.5 ~ 0.5 0.1 0.5 0 24 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:witch ~ ~0.25 ~ 0.35 0.1 0.35 0 15 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:witch ~ ~1 ~ 1.25 0.4 1.25 0 60 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:crit ~ ~0.5 ~ 0.4 0.1 0.4 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:crit ~ ~0.25 ~ 0.25 0.1 0.25 0.5 6 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:crit ~ ~1 ~ 1 0.4 1 0.5 20 normal