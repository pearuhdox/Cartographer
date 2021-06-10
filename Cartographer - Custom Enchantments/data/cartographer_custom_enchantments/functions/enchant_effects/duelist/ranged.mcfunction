execute if entity @s[tag=is_duelist_1,type=#cartographer_core:humanoid] run scoreboard players set @s damage_queue 2
execute if entity @s[tag=is_duelist_2,type=#cartographer_core:humanoid] run scoreboard players set @s damage_queue 5
execute if entity @s[tag=is_duelist_3,type=#cartographer_core:humanoid] run scoreboard players set @s damage_queue 7
execute if entity @s[tag=is_duelist_4,type=#cartographer_core:humanoid] run scoreboard players set @s damage_queue 10
execute if entity @s[tag=is_duelist_5,type=#cartographer_core:humanoid] run scoreboard players set @s damage_queue 12

execute if entity @s[type=#cartographer_core:humanoid] run function cartographer_core:helper/deal_damage/by_score

execute if entity @s[tag=is_duelist_1,type=#cartographer_core:humanoid] run function cartographer_core:helper/deal_damage/half
execute if entity @s[tag=is_duelist_3,type=#cartographer_core:humanoid] run function cartographer_core:helper/deal_damage/half
execute if entity @s[tag=is_duelist_5,type=#cartographer_core:humanoid] run function cartographer_core:helper/deal_damage/half

tag @e[type=#cartographer_core:hostile,tag=is_duelist_1,distance=..12] remove is_duelist_1
tag @e[type=#cartographer_core:hostile,tag=is_duelist_2,distance=..12] remove is_duelist_2
tag @e[type=#cartographer_core:hostile,tag=is_duelist_3,distance=..12] remove is_duelist_3
tag @e[type=#cartographer_core:hostile,tag=is_duelist_4,distance=..12] remove is_duelist_4
tag @e[type=#cartographer_core:hostile,tag=is_duelist_5,distance=..12] remove is_duelist_5

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Duelist (ranged).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]