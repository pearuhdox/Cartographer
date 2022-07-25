scoreboard players set @s co_y 2

execute if entity @s[tag=is_punch_1] run scoreboard players set @s co_send -10
execute if entity @s[tag=is_punch_2] run scoreboard players set @s co_send -14
execute if entity @s[tag=is_punch_3] run scoreboard players set @s co_send -20
execute if entity @s[tag=is_punch_4] run scoreboard players set @s co_send -25
execute if entity @s[tag=is_punch_5] run scoreboard players set @s co_send -33

function motion:motion/push

tag @s remove is_punch_1
tag @s remove is_punch_2
tag @s remove is_punch_3
tag @s remove is_punch_4
tag @s remove is_punch_5

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Punch (crossbow).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]