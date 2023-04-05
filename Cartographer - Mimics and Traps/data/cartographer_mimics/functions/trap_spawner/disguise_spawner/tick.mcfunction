scoreboard players add @s ca.trap_timer 1

playsound minecraft:block.note_block.hat block @a ~ ~ ~ 0.02 1.5

execute if score @s ca.trap_timer matches 201.. run function cartographer_mimics:trap_spawner/disguise_spawner/reveal