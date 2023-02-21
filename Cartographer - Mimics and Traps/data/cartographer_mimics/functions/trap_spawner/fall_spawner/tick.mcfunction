scoreboard players add @s ca.trap_timer 1

execute if block ~ ~ ~ #cartographer_core:can_raycast run kill @s

execute if score @s ca.trap_timer matches 4.. run function cartographer_mimics:trap_spawner/fall_spawner/do_drop