effect give @s[tag=is_exposing_1] bad_omen 4 0
effect give @s[tag=is_exposing_2] bad_omen 4 1
effect give @s[tag=is_exposing_3] bad_omen 4 2

tag @s[type=#bb:hostile,tag=is_exposing_1] remove is_exposing_1
tag @s[type=#bb:hostile,tag=is_exposing_2] remove is_exposing_2
tag @s[type=#bb:hostile,tag=is_exposing_3] remove is_exposing_3

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Exposing (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]