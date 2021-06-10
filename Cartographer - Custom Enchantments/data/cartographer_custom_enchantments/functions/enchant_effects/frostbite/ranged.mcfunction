effect give @s[tag=is_frostbite_1] slowness 4 0
effect give @s[tag=is_frostbite_2] slowness 4 1
effect give @s[tag=is_frostbite_3] slowness 4 2
effect give @s[tag=is_frostbite_4] slowness 4 3
effect give @s[tag=is_frostbite_5] slowness 4 4

tag @s[type=#cartographer_core:hostile,tag=is_frostbite_1] remove is_frostbite_1
tag @s[type=#cartographer_core:hostile,tag=is_frostbite_2] remove is_frostbite_2
tag @s[type=#cartographer_core:hostile,tag=is_frostbite_3] remove is_frostbite_3
tag @s[type=#cartographer_core:hostile,tag=is_frostbite_3] remove is_frostbite_4
tag @s[type=#cartographer_core:hostile,tag=is_frostbite_3] remove is_frostbite_5

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Frostbite (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]