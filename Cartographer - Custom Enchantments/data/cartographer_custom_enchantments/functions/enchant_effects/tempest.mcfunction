execute if entity @s[tag=is_tempest_1] run scoreboard players set @s cdl.damage_queue 3
execute if entity @s[tag=is_tempest_2] run scoreboard players set @s cdl.damage_queue 6
execute if entity @s[tag=is_tempest_3] run scoreboard players set @s cdl.damage_queue 9
execute if entity @s[tag=is_tempest_4] run scoreboard players set @s cdl.damage_queue 12
execute if entity @s[tag=is_tempest_5] run scoreboard players set @s cdl.damage_queue 15

execute if entity @s run function cd:lib/mob/damage/true

tag @s[type=#bb:hostile,tag=is_tempest_1] remove is_tempest_1
tag @s[type=#bb:hostile,tag=is_tempest_2] remove is_tempest_2
tag @s[type=#bb:hostile,tag=is_tempest_3] remove is_tempest_3
tag @s[type=#bb:hostile,tag=is_tempest_4] remove is_tempest_4
tag @s[type=#bb:hostile,tag=is_tempest_5] remove is_tempest_5

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Tempest.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]