effect give @s[tag=is_committed_1] bad_omen 4 0
effect give @s[tag=is_committed_2] bad_omen 4 1
effect give @s[tag=is_committed_3] bad_omen 4 2

tag @s[type=#cartographer_core:hostile,tag=is_committed_1] remove is_committed_1
tag @s[type=#cartographer_core:hostile,tag=is_committed_2] remove is_committed_2
tag @s[type=#cartographer_core:hostile,tag=is_committed_3] remove is_committed_3

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Committed (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]