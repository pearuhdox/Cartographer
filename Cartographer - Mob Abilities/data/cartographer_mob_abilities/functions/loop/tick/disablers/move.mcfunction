#Run Movement Disable
execute as @s[scores={mob_move_dis=2..}] run attribute @s minecraft:generic.movement_speed modifier add 00000031-4919-1315-2250-000000000000 "mob_disable_move" -1 multiply

execute as @s[scores={mob_move_dis=1}] run attribute @s minecraft:generic.movement_speed modifier remove 00000031-4919-1315-2250-000000000000

scoreboard players remove @s[scores={mob_move_dis=1..}] mob_move_dis 1