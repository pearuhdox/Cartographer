scoreboard players set @s[tag=is_overload_1] effect_shocked 3
scoreboard players set @s[tag=is_overload_2] effect_shocked 5
scoreboard players set @s[tag=is_overload_3] effect_shocked 7

tag @e[type=#cartographer_core:hostile,tag=is_overload_1,distance=..12] remove is_overload_1
tag @e[type=#cartographer_core:hostile,tag=is_overload_2,distance=..12] remove is_overload_2
tag @e[type=#cartographer_core:hostile,tag=is_overload_3,distance=..12] remove is_overload_3

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Overload (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]