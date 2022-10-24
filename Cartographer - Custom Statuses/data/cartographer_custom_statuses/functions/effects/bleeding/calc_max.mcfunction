scoreboard players set $bleed_max_health ca.effect_bleed 0

execute as @s store result score $bleed_max_health ca.effect_bleed run attribute @s minecraft:generic.max_health get

execute unless entity @s[tag=elite] run scoreboard players operation $bleed_max_health ca.effect_bleed /= $4 ca.CONSTANT
execute if entity @s[tag=elite] run scoreboard players operation $bleed_max_health ca.effect_bleed /= $5 ca.CONSTANT

#Always does a minimum of 6 damage which is the max bleed stacks can do.
execute if score $bleed_max_health ca.effect_bleed matches 1..5 run scoreboard players set $bleed_max_health ca.effect_bleed 6

scoreboard players operation @s cdl.damage_queue = $bleed_max_health ca.effect_bleed

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Bleeding (Max Stacks).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
