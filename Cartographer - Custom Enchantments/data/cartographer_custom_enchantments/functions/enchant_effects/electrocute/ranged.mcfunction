scoreboard players set @s[tag=is_electrocute_1] ca.effect_shock 3
scoreboard players set @s[tag=is_electrocute_2] ca.effect_shock 5
scoreboard players set @s[tag=is_electrocute_3] ca.effect_shock 7

tag @s[type=#bb:hostile,tag=is_electrocute_1] remove is_electrocute_1
tag @s[type=#bb:hostile,tag=is_electrocute_2] remove is_electrocute_2
tag @s[type=#bb:hostile,tag=is_electrocute_3] remove is_electrocute_3

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Electrocute (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]