playsound minecraft:entity.player.attack.crit hostile @a[distance=..12] ~ ~ ~ 0.75 0.5

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.3 0.4 0.3 0 24 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:block minecraft:redstone_block ~ ~0.5 ~ 0.5 0.1 0.5 0 24 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:block minecraft:redstone_block ~ ~0.25 ~ 0.35 0.1 0.35 0 15 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 1.25 0.4 1.25 0 60 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:dust_color_transition 0.602 0.09 0.09 1 0 0 0 ~ ~1 ~ 0.3 0.4 0.3 0 24 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:dust_color_transition 0.602 0.09 0.09 1 0 0 0 ~ ~0.5 ~ 0.5 0.1 0.5 0 24 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:dust_color_transition 0.602 0.09 0.09 1 0 0 0 ~ ~0.25 ~ 0.35 0.1 0.35 0 15 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:dust_color_transition 0.602 0.09 0.09 1 0 0 0 ~ ~1 ~ 1.25 0.4 1.25 0 60 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:crit ~ ~0.5 ~ 0.4 0.1 0.4 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:crit ~ ~0.25 ~ 0.25 0.1 0.25 0.5 6 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:crit ~ ~1 ~ 1 0.4 1 0.5 20 normal