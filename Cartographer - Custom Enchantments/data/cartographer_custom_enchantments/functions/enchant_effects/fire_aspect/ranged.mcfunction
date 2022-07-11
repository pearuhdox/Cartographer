scoreboard players set @s[tag=is_frostbite_1] ca.frost_tier 1
scoreboard players set @s[tag=is_frostbite_2] ca.frost_tier 2
scoreboard players set @s[tag=is_frostbite_3] ca.frost_tier 3
scoreboard players set @s[tag=is_frostbite_4] ca.frost_tier 4
scoreboard players set @s[tag=is_frostbite_5] ca.frost_tier 5

scoreboard players set @s[tag=is_frostbite_1] ca.frost_time 81
scoreboard players set @s[tag=is_frostbite_2] ca.frost_time 81
scoreboard players set @s[tag=is_frostbite_3] ca.frost_time 81
scoreboard players set @s[tag=is_frostbite_4] ca.frost_time 81
scoreboard players set @s[tag=is_frostbite_5] ca.frost_time 81

tag @s[type=#bb:hostile,tag=is_frostbite_1] remove is_frostbite_1
tag @s[type=#bb:hostile,tag=is_frostbite_2] remove is_frostbite_2
tag @s[type=#bb:hostile,tag=is_frostbite_3] remove is_frostbite_3
tag @s[type=#bb:hostile,tag=is_frostbite_3] remove is_frostbite_4
tag @s[type=#bb:hostile,tag=is_frostbite_3] remove is_frostbite_5

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Frostbite (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]