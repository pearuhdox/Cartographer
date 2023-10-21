playsound minecraft:entity.guardian.flop hostile @a[distance=..12] ~ ~ ~ 1.5 0.5

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:block minecraft:coal_block ~ ~1 ~ 0.3 0.4 0.3 0 24 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:block minecraft:coal_block ~ ~0.5 ~ 0.5 0.1 0.5 0 24 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:block minecraft:coal_block ~ ~0.25 ~ 0.35 0.1 0.35 0 15 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:block minecraft:coal_block ~ ~1 ~ 1.25 0.4 1.25 0 60 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:squid_ink ~ ~1 ~ 0.3 0.4 0.3 0 6 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:squid_ink ~ ~0.5 ~ 0.5 0.1 0.5 0 6 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:squid_ink ~ ~0.25 ~ 0.35 0.1 0.35 0 4 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:squid_ink ~ ~1 ~ 1.25 0.4 1.25 0 15 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:crit ~ ~0.5 ~ 0.4 0.1 0.4 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:crit ~ ~0.25 ~ 0.25 0.1 0.25 0.5 6 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:crit ~ ~1 ~ 1 0.4 1 0.5 20 normal