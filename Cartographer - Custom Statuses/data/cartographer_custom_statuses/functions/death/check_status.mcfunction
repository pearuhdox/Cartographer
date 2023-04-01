scoreboard players set $death_proc ca.mob_var 1
execute on vehicle run scoreboard players set $death_proc ca.mob_var 0

execute unless score $death_proc ca.mob_var matches 1.. on vehicle run scoreboard players operation $value ca.effect_infect = @s ca.effect_infect
execute unless score $death_proc ca.mob_var matches 1.. run scoreboard players operation @s ca.effect_infect = $value ca.effect_infect

execute if score $death_proc ca.mob_var matches 1 run function cartographer_custom_statuses:death/run_death_effects