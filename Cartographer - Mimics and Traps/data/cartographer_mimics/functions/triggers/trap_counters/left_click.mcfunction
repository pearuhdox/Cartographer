execute store result score $pt_1 ca.uuid_interact run data get entity @s UUID[0]
execute store result score $pt_2 ca.uuid_interact run data get entity @s UUID[1]
execute store result score $pt_3 ca.uuid_interact run data get entity @s UUID[2]
execute store result score $pt_4 ca.uuid_interact run data get entity @s UUID[3]

scoreboard players set $count_shift ca.mimic_var 0
execute if entity @s[predicate=cartographer_core:is_sneaking] run scoreboard players set $count_shift ca.mimic_var 1

execute as @e[type=interaction,tag=ca.trap_counter,distance=..5] at @s run function cartographer_mimics:triggers/trap_counters/verify_left

advancement revoke @s only cartographer_mimics:trap_counters/left_click