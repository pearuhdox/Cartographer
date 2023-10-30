scoreboard players remove @s ca.morph_time 1

scoreboard players operation $popup ca.morph_time = @s ca.morph_time
scoreboard players operation $popup ca.morph_time %= $20 ca.CONSTANT

execute if score $popup ca.morph_time matches 5 run function cartographer_custom_statuses:popup/morph

execute if score @s ca.morph_time matches 0 run function cartographer_custom_statuses:effects/morph/turn_back