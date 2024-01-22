playsound minecraft:entity.player.hurt_freeze hostile @a[distance=..12] ~ ~ ~ 1.75 0.5
playsound minecraft:entity.player.hurt_on_fire hostile @a[distance=..12] ~ ~ ~ 1.25 1.25

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:crimson_spore ~ ~1 ~ 0.3 0.4 0.3 0 12 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:crimson_spore ~ ~0.5 ~ 0.5 0.1 0.5 0 12 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:crimson_spore ~ ~0.25 ~ 0.35 0.1 0.35 0 8 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:crimson_spore ~ ~1 ~ 1.25 0.4 1.25 0 30 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:dust_color_transition 0.894 0.412 0.294 1.5 0.8 0.8 0.8 ~ ~1 ~ 0.3 0.4 0.3 0 10 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:dust_color_transition 0.894 0.412 0.294 1.5 0.8 0.8 0.8 ~ ~0.5 ~ 0.5 0.1 0.5 0 10 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:dust_color_transition 0.894 0.412 0.294 1.5 0.8 0.8 0.8 ~ ~0.25 ~ 0.35 0.1 0.35 0 6 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:dust_color_transition 0.894 0.412 0.294 1.5 0.8 0.8 0.8 ~ ~1 ~ 1.25 0.4 1.25 0 25 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:crit ~ ~0.5 ~ 0.4 0.1 0.4 0.5 10 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:crit ~ ~0.25 ~ 0.25 0.1 0.25 0.5 6 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:crit ~ ~1 ~ 1 0.4 1 0.5 20 normal

function cartographer_custom_statuses:death/create_death_marker
tag @s add ca.brittle_warmup
scoreboard players set @s ca.brittle_stored 0
execute store result score @s ca.brittle_hp run data get entity @s Health 10

execute unless entity @s[type=#cartographer_core:spiders] run function cartographer_custom_statuses:popup/brittle