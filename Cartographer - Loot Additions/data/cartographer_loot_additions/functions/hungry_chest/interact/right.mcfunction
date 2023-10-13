execute store result score $pt_1 ca.uuid_interact run data get entity @s UUID[0]
execute store result score $pt_2 ca.uuid_interact run data get entity @s UUID[1]
execute store result score $pt_3 ca.uuid_interact run data get entity @s UUID[2]
execute store result score $pt_4 ca.uuid_interact run data get entity @s UUID[3]

tag @s add ca.hungry_victim

execute as @e[type=interaction,tag=ca.hungry_chest_interaction,distance=..5] at @s run function cartographer_loot_additions:hungry_chest/interact/verify_right

tag @s remove ca.hungry_victim

advancement revoke @s only cartographer_loot_additions:interact_hungry/right