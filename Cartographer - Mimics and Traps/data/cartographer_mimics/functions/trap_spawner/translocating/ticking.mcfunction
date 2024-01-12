execute if score @s ca.trap_timer matches 6 run function cartographer_mimics:trap_spawner/translocating/move
execute if score @s ca.trap_timer matches 7 run function cartographer_mimics:trap_spawner/translocating/reappear_1
execute if score @s ca.trap_timer matches 8 run function cartographer_mimics:trap_spawner/translocating/reappear_2

execute if score @s ca.trap_timer matches 9.. on passengers run kill @s
execute if score @s ca.trap_timer matches 9.. run kill @s

scoreboard players add @s ca.trap_timer 1