scoreboard players add @s ca.effect_bleed 0

scoreboard players add @s[tag=is_vicious_1,scores={ca.effect_bleed=1..}] ca.effect_bleed 1
scoreboard players add @s[tag=is_vicious_2,scores={ca.effect_bleed=1..}] ca.effect_bleed 1
scoreboard players add @s[tag=is_vicious_3,scores={ca.effect_bleed=1..}] ca.effect_bleed 1

scoreboard players set @s[tag=is_vicious_1,scores={ca.effect_bleed=0}] ca.effect_bleed 3
scoreboard players set @s[tag=is_vicious_2,scores={ca.effect_bleed=0}] ca.effect_bleed 3
scoreboard players set @s[tag=is_vicious_3,scores={ca.effect_bleed=0}] ca.effect_bleed 3

scoreboard players add @s[tag=is_vicious_1] ca.bleed_potency 1
scoreboard players add @s[tag=is_vicious_2] ca.bleed_potency 2
scoreboard players add @s[tag=is_vicious_3] ca.bleed_potency 3

tag @e[type=#cartographer_core:hostile,tag=is_vicious_1,distance=..12] remove is_vicious_1
tag @e[type=#cartographer_core:hostile,tag=is_vicious_2,distance=..12] remove is_vicious_2
tag @e[type=#cartographer_core:hostile,tag=is_vicious_3,distance=..12] remove is_vicious_3

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Vicious (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]