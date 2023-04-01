scoreboard players set $death_proc ca.mob_var 1
execute on vehicle run scoreboard players set $death_proc ca.mob_var 0

execute if score $death_proc ca.mob_var matches 1 run function cartographer_mob_abilities:death/run_death_effects