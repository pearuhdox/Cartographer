scoreboard players set $pot_proc ca.mob_var 1
execute on vehicle run scoreboard players set $pot_proc ca.mob_var 0

execute if score $pot_proc ca.mob_var matches 1 run function cartographer_custom_statuses:inflict/run_effect