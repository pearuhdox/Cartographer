execute store result score $m1 ca.player_entropy run data get entity @s data.Owner[0]
execute store result score $m2 ca.player_entropy run data get entity @s data.Owner[1]
execute store result score $m3 ca.player_entropy run data get entity @s data.Owner[2]
execute store result score $m4 ca.player_entropy run data get entity @s data.Owner[3]

execute as @a at @s run function cartographer_custom_statuses:inflict/entropy/player