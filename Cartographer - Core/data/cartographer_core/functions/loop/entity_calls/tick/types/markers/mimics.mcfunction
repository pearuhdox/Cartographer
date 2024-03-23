execute as @s[type=marker,tag=ca.colossus_anim] at @s if block ~ ~ ~ air run function cartographer_mimics:colossus/animation

execute if entity @s[tag=ca.trap_spawner_marker] run function cartographer_mimics:loop/tick/markers