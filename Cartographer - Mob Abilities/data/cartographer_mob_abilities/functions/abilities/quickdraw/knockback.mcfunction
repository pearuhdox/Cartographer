tag @s add co_rotation_lock

scoreboard players set @s co_y 3
scoreboard players set @s co_send -6

execute if entity @s[tag=ca.warpshot] run scoreboard players set @s co_y 2
execute if entity @s[tag=ca.warpshot] run scoreboard players set @s co_send -4

function motion:motion/push