execute if score @s[tag=!ca.custom_move] ca.mob_move_time matches 1.. run data modify entity @s NoAI set value 1b
execute if score @s[tag=!ca.custom_move] ca.mob_move_time matches 1.. run tag @s add ca.custom_move

scoreboard players remove @s ca.mob_move_time 1

execute if score @s ca.mob_move_mode matches 1 run function cartographer_mob_abilities:move_mode/walk_towards_player
execute if score @s ca.mob_move_mode matches 2 run function cartographer_mob_abilities:move_mode/walk_forward
execute if score @s ca.mob_move_mode matches 3 run function cartographer_mob_abilities:move_mode/walk_back


execute if score @s ca.mob_move_time matches 0 run data modify entity @s NoAI set value 0b
execute if score @s ca.mob_move_time matches 0 run tag @s remove ca.custom_move
execute if score @s ca.mob_move_time matches 0 run scoreboard players set @s ca.mob_move_mode 0