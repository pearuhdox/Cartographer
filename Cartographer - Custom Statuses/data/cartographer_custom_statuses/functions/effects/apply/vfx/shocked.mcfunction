playsound minecraft:entity.firework_rocket.twinkle hostile @a[distance=..12] ~ ~ ~ 0.75 2

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:wax_off ~ ~1 ~ 0.3 0.4 0.3 0 24 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:wax_off ~ ~0.5 ~ 0.5 0.1 0.5 0 24 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:wax_off ~ ~0.25 ~ 0.35 0.1 0.35 0 15 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:wax_off ~ ~1 ~ 1.25 0.4 1.25 0 60 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:dust_color_transition 0.969 0.722 1 1 1 1 2 ~ ~1 ~ 0.3 0.4 0.3 0 24 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:dust_color_transition 0.969 0.722 1 1 1 1 2 ~ ~0.5 ~ 0.5 0.1 0.5 0 24 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:dust_color_transition 0.969 0.722 1 1 1 1 2 ~ ~0.25 ~ 0.35 0.1 0.35 0 15 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:dust_color_transition 0.969 0.722 1 1 1 1 2 ~ ~1 ~ 1.25 0.4 1.25 0 60 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:crit ~ ~0.5 ~ 0.4 0.1 0.4 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:crit ~ ~0.25 ~ 0.25 0.1 0.25 0.5 6 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:crit ~ ~1 ~ 1 0.4 1 0.5 20 normal