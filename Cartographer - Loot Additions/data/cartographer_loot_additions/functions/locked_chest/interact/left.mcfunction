scoreboard players set $is_creative ca.loot_var 0
execute if entity @s[gamemode=creative] run scoreboard players set $is_creative ca.loot_var 1

execute store result score $pt_1 ca.uuid_interact run data get entity @s UUID[0]
execute store result score $pt_2 ca.uuid_interact run data get entity @s UUID[1]
execute store result score $pt_3 ca.uuid_interact run data get entity @s UUID[2]
execute store result score $pt_4 ca.uuid_interact run data get entity @s UUID[3]

execute as @e[type=interaction,tag=ca.locked_chest_interaction,distance=..5] at @s run function cartographer_loot_additions:locked_chest/interact/verify_left

advancement revoke @s only cartographer_loot_additions:interact_locked/left