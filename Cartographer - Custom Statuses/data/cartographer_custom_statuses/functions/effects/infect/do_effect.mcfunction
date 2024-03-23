execute at @s run playsound minecraft:entity.slime.attack hostile @a[distance=..16] ~ ~ ~ 1.5 0.5

data modify storage cartographer_custom_statuses:infection active_effects set value []
data modify storage cartographer_custom_statuses:infection active_effects set from entity @s active_effects

data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:speed"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:haste"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:strength"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:jump_boost"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:water_breathing"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:regeneration"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:resistance"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:fire_resistance"}]

data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:instant_health"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:instant_damage"}]

data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:absorption"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:health_boost"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:saturation"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:night_vision"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:invisibility"}]

data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:slow_falling"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:conduit_power"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:dolphins_grace"}]
data remove storage cartographer_custom_statuses:infection active_effects[{id:"minecraft:hero_of_the_village"}]

damage @s 1 cartographer_custom_statuses:status_damage
damage @s 0.00000000001 cartographer_custom_statuses:status_damage

execute on passengers if entity @s[tag=ca.death_marker] run data modify entity @s data.active_effects set from storage cartographer_custom_statuses:infection active_effects

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:dust 0 0 0 2 ~ ~1 ~ 0.2 0.4 0.2 0 16 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:dust 0 0 0 2 ~ ~0.5 ~ 0.4 0.1 0.4 0 16 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:dust 0 0 0 2 ~ ~0.25 ~ 0.25 0.1 0.25 0 10 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:dust 0 0 0 2 ~ ~1 ~ 1 0.4 1 0 40 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:witch ~ ~1 ~ 0.2 0.4 0.2 0.1 8 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:witch ~ ~0.5 ~ 0.4 0.1 0.4 0.1 8 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:witch ~ ~0.25 ~ 0.25 0.1 0.25 0.1 5 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:witch ~ ~1 ~ 1 0.4 1 0.1 15 normal

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Infection.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

execute if score @s ca.effect_infect matches 1.. run function cartographer_custom_statuses:popup/infect