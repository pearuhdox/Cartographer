#Run Movement Disable and Melee Damage Disable
execute as @s[scores={mob_move_red=2..}] run attribute @s minecraft:generic.movement_speed modifier add 00000031-1845-1315-2250-000000000000 "mob_reduce_move" -0.5 multiply

execute as @s[scores={mob_move_red=1}] run attribute @s minecraft:generic.movement_speed modifier remove 00000031-1845-1315-2250-000000000000

scoreboard players remove @s[scores={mob_move_red=1..}] mob_move_red 1