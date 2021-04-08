execute as @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 11

execute as @s run execute unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 5

tag @e[type=#cartographer_core:hostile,tag=is_rend,distance=..12] remove is_rend

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Rend.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]