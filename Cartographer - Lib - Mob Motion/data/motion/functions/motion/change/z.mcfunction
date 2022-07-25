scoreboard players operation @s co_save = @s co_z

execute if score @s co_z matches 0 positioned ~ ~ ~ run function motion:motion/change/pitch
execute if score @s co_z matches 1.. run scoreboard players remove @s co_z 1
execute if score @s co_z matches ..-1 run scoreboard players add @s co_z 1
execute if score @s co_save matches 1.. positioned ~ ~ ~-0.1 run function motion:motion/change/z
execute if score @s co_save matches ..-1 positioned ~ ~ ~0.1 run function motion:motion/change/z
