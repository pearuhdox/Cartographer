scoreboard players set @s[tag=is_infection_1] ca.effect_infect 3
scoreboard players set @s[tag=is_infection_2] ca.effect_infect 5
scoreboard players set @s[tag=is_infection_3] ca.effect_infect 7

tag @s[type=#bb:hostile,tag=is_infection_1] remove is_infection_1
tag @s[type=#bb:hostile,tag=is_infection_2] remove is_infection_2
tag @s[type=#bb:hostile,tag=is_infection_3] remove is_infection_3

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Infection (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]