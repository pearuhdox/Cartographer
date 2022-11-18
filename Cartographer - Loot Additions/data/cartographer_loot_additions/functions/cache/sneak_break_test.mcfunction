scoreboard players set @s ca.raycast 21

scoreboard players set $pings ca.break_head_look_time 0

scoreboard players set $found ca.break_head_look_time 0

execute anchored eyes positioned ^ ^ ^ run function cartographer_loot_additions:cache/sneak_break_test/raycast

execute if score $found ca.break_head_look_time matches 1.. run function cartographer_loot_additions:cache/sneak_break_test/give_haste
