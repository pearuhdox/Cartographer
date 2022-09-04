scoreboard players set $bleed_max_health ca.effect_bleed 0

execute as @s store result score $bleed_max_health ca.effect_bleed run attribute @s minecraft:generic.max_health get

scoreboard players operation $bleed_max_health ca.effect_bleed /= $3 ca.CONSTANT

execute if score $bleed_max_health ca.effect_bleed matches 1..33 run scoreboard players add $bleed_max_health ca.effect_bleed 1
execute if score $bleed_max_health ca.effect_bleed matches 34..66 run scoreboard players add $bleed_max_health ca.effect_bleed 2
execute if score $bleed_max_health ca.effect_bleed matches 67..99 run scoreboard players add $bleed_max_health ca.effect_bleed 3
execute if score $bleed_max_health ca.effect_bleed matches 100.. run scoreboard players add $bleed_max_health ca.effect_bleed 4


scoreboard players operation @s cdl.damage_queue = $bleed_max_health ca.effect_bleed

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Bleeding (Max Stacks).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
