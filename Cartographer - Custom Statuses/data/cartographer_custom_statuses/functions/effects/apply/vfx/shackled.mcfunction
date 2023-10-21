playsound minecraft:block.chain.hit hostile @a[distance=..12] ~ ~ ~ 1.5 0.5
playsound minecraft:block.chain.hit hostile @a[distance=..12] ~ ~ ~ 1.5 0.5
playsound minecraft:block.chain.hit hostile @a[distance=..12] ~ ~ ~ 1.5 0.5

playsound minecraft:block.sculk_sensor.clicking hostile @a[distance=..12] ~ ~ ~ 1.5 1.2

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:white_ash ~ ~1 ~ 0.3 0.4 0.3 0 48 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:white_ash ~ ~0.5 ~ 0.5 0.1 0.5 0 48 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:white_ash ~ ~0.25 ~ 0.35 0.1 0.35 0 30 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:white_ash ~ ~1 ~ 1.25 0.4 1.25 0 120 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:dust 0.8 0.8 0.8 1.25 ~ ~1 ~ 0.3 0.4 0.3 0 6 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:dust 0.8 0.8 0.8 1.25 ~ ~0.5 ~ 0.5 0.1 0.5 0 6 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:dust 0.8 0.8 0.8 1.25 ~ ~0.25 ~ 0.35 0.1 0.35 0 4 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:dust 0.8 0.8 0.8 1.25 ~ ~1 ~ 1.25 0.4 1.25 0 15 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:crit ~ ~0.5 ~ 0.4 0.1 0.4 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:crit ~ ~0.25 ~ 0.25 0.1 0.25 0.5 6 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:crit ~ ~1 ~ 1 0.4 1 0.5 20 normal

function cartographer_custom_statuses:death/create_death_marker
tag @s add ca.shackled_warmup