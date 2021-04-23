scoreboard players set @s[tag=is_decay_1] effect_infect 3
scoreboard players set @s[tag=is_decay_2] effect_infect 5
scoreboard players set @s[tag=is_decay_3] effect_infect 7

tag @s[type=#cartographer_core:hostile,tag=is_decay_1] remove is_decay_1
tag @s[type=#cartographer_core:hostile,tag=is_decay_2] remove is_decay_2
tag @s[type=#cartographer_core:hostile,tag=is_decay_3] remove is_decay_3

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Decay (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]