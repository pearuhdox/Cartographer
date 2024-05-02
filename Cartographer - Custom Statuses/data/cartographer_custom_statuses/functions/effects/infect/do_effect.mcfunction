execute at @s run playsound minecraft:entity.slime.attack hostile @a[distance=..16] ~ ~ ~ 1.5 0.5

damage @s 1.5 cartographer_custom_statuses:status_damage
damage @s 0.00000000001 cartographer_custom_statuses:status_damage

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