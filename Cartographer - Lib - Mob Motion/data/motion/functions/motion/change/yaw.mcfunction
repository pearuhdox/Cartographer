scoreboard players operation @s co_save = @s co_yaw

execute if score @s co_yaw matches 0 positioned ~ ~ ~ run function motion:motion/change/send
execute if score @s co_yaw matches 1.. run scoreboard players remove @s co_yaw 1
execute if score @s co_yaw matches ..-1 run scoreboard players add @s co_yaw 1
execute if score @s co_save matches 1.. positioned ^-0.1 ^ ^ run function motion:motion/change/yaw
execute if score @s co_save matches ..-1 positioned ^0.1 ^ ^ run function motion:motion/change/yaw
