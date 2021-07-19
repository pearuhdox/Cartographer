execute as @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 1

execute as @s unless entity @s[scores={ca.effect_bleed=1..}] run scoreboard players add @s ca.effect_bleed 4
scoreboard players add @s ca.bleed_potency 2

tag @s[type=#cartographer_core:hostile,tag=is_rend] remove is_rend

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Rend.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]