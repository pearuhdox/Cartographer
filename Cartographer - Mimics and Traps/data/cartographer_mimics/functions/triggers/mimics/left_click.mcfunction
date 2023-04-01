execute store result score $pt_1 ca.uuid_interact run data get entity @s UUID[0]
execute store result score $pt_2 ca.uuid_interact run data get entity @s UUID[1]
execute store result score $pt_3 ca.uuid_interact run data get entity @s UUID[2]
execute store result score $pt_4 ca.uuid_interact run data get entity @s UUID[3]

execute as @e[type=interaction,tag=ca.cartographer_mimic,distance=..5] at @s run function cartographer_mimics:triggers/mimics/verify_left

advancement revoke @s only cartographer_mimics:mimics/left_click