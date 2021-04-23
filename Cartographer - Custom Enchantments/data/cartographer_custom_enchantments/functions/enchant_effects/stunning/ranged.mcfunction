function cartographer_core:helper/randomize

scoreboard players operation @s helper_melee = @s random

scoreboard players set @s[tag=is_stunning_1,scores={helper_melee=..10}] effect_stunned 21
scoreboard players set @s[tag=is_stunning_2,scores={helper_melee=..20}] effect_stunned 21
scoreboard players set @s[tag=is_stunning_3,scores={helper_melee=..30}] effect_stunned 21
scoreboard players set @s[tag=is_stunning_4,scores={helper_melee=..40}] effect_stunned 21
scoreboard players set @s[tag=is_stunning_5,scores={helper_melee=..50}] effect_stunned 21

tag @s[type=#cartographer_core:hostile,tag=is_stunning_1] remove is_stunning_1
tag @s[type=#cartographer_core:hostile,tag=is_stunning_2] remove is_stunning_2
tag @s[type=#cartographer_core:hostile,tag=is_stunning_3] remove is_stunning_3
tag @s[type=#cartographer_core:hostile,tag=is_stunning_3] remove is_stunning_4
tag @s[type=#cartographer_core:hostile,tag=is_stunning_3] remove is_stunning_5

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Stunning (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]