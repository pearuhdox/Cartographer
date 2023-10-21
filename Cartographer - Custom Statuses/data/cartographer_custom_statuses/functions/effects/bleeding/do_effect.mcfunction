playsound minecraft:entity.generic.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5


scoreboard players operation @s ca.damage_queue = @s ca.effect_bleed
function cartographer_custom_statuses:effects/bleeding/do_damage

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.2 0.4 0.2 0 16 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:block minecraft:redstone_block ~ ~0.5 ~ 0.4 0.1 0.4 0 16 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:block minecraft:redstone_block ~ ~0.25 ~ 0.25 0.1 0.25 0 10 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 1 0.4 1 0 40 normal

execute if entity @s[type=#cartographer_core:shape_human] run particle minecraft:dust_color_transition 0.602 0.09 0.09 1 0 0 0 ~ ~1 ~ 0.2 0.4 0.2 0 16 normal
execute if entity @s[type=#cartographer_core:shape_flat] run particle minecraft:dust_color_transition 0.602 0.09 0.09 1 0 0 0 ~ ~0.5 ~ 0.4 0.1 0.4 0 16 normal
execute if entity @s[type=#cartographer_core:shape_small] run particle minecraft:dust_color_transition 0.602 0.09 0.09 1 0 0 0 ~ ~0.25 ~ 0.25 0.1 0.25 0 10 normal
execute if entity @s[type=#cartographer_core:shape_big] run particle minecraft:dust_color_transition 0.602 0.09 0.09 1 0 0 0 ~ ~1 ~ 1 0.4 1 0 40 normal

scoreboard players operation @s ca.effect_bleed /= $2 ca.CONSTANT
execute if score @s ca.effect_bleed matches 0 run function cartographer_custom_statuses:effects/bleeding/clean_effects

execute if score @s ca.effect_bleed matches 1.. run function cartographer_custom_statuses:popup/bleed

scoreboard players set @s ca.bleed_time 0

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Bleeding.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
