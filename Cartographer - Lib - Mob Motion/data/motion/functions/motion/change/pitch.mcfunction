scoreboard players operation @s co_save = @s co_pitch

execute if score @s co_pitch matches 0 positioned ~ ~ ~ run function motion:motion/change/yaw
execute if score @s co_pitch matches 1.. run scoreboard players remove @s co_pitch 1
execute if score @s co_pitch matches ..-1 run scoreboard players add @s co_pitch 1
execute if score @s co_save matches 1.. positioned ^ ^-0.1 ^ run function motion:motion/change/pitch
execute if score @s co_save matches ..-1 positioned ^ ^0.1 ^ run function motion:motion/change/pitch
