execute if entity @s[tag=is_punch_1] run function cartographer_core:helper/push_no_bias
execute if entity @s[tag=is_punch_2] run function cartographer_core:helper/push_2_no_bias
execute if entity @s[tag=is_punch_3] run function cartographer_core:helper/push_3_no_bias
execute if entity @s[tag=is_punch_4] run function cartographer_core:helper/push_4_no_bias
execute if entity @s[tag=is_punch_5] run function cartographer_core:helper/push_5_no_bias

tag @s remove is_punch_1
tag @s remove is_punch_2
tag @s remove is_punch_3
tag @s remove is_punch_4
tag @s remove is_punch_5

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Punch (crossbow).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]