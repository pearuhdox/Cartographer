execute store result score $pt_1 ca.uuid_interact run data get entity @s UUID[0]
execute store result score $pt_2 ca.uuid_interact run data get entity @s UUID[1]
execute store result score $pt_3 ca.uuid_interact run data get entity @s UUID[2]
execute store result score $pt_4 ca.uuid_interact run data get entity @s UUID[3]

execute as @e[type=interaction,tag=ca.charon_bag_interaction,distance=..5] at @s run function cartographer_charon:death_drop/interact/verify_left

tag @s add ca.picked_up_death_drop

advancement revoke @s only cartographer_charon:interact_death_drop/left