scoreboard players set @s ca.raycast 21

scoreboard players set $pings ca.break_head_look_time 0

scoreboard players set $break_penalty ca.mimic_var 0

execute anchored eyes positioned ^ ^ ^ run function cartographer_mimics:slower_spawners/break_test/raycast

execute if score $break_penalty ca.mimic_var matches 1.. run function cartographer_mimics:slower_spawners/break_test/give_fatigue
