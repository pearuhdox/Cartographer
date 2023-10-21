scoreboard players set $death_proc ca.mob_var 1
execute on vehicle run scoreboard players set $death_proc ca.mob_var 0

execute unless score $death_proc ca.mob_var matches 1.. on vehicle run scoreboard players operation $value ca.effect_infect = @s ca.effect_infect
execute unless score $death_proc ca.mob_var matches 1.. run scoreboard players operation @s ca.effect_infect = $value ca.effect_infect

execute unless score $death_proc ca.mob_var matches 1.. on vehicle run scoreboard players operation $value ca.effect_shackled = @s ca.effect_shackled
execute unless score $death_proc ca.mob_var matches 1.. run scoreboard players operation @s ca.effect_shackled = $value ca.effect_shackled

execute unless score $death_proc ca.mob_var matches 1.. on vehicle run scoreboard players operation $value ca.shackled_hp = @s ca.shackled_hp
execute unless score $death_proc ca.mob_var matches 1.. run scoreboard players operation @s ca.shackled_hp = $value ca.shackled_hp


execute unless score $death_proc ca.mob_var matches 1.. on vehicle run scoreboard players operation $value ca.effect_brittle_duration = @s ca.effect_brittle_duration
execute unless score $death_proc ca.mob_var matches 1.. run scoreboard players operation @s ca.effect_brittle_duration = $value ca.effect_brittle_duration

execute unless score $death_proc ca.mob_var matches 1.. on vehicle run scoreboard players operation $value ca.effect_brittle_level = @s ca.effect_brittle_level
execute unless score $death_proc ca.mob_var matches 1.. run scoreboard players operation @s ca.effect_brittle_level = $value ca.effect_brittle_level

execute if score $death_proc ca.mob_var matches 1 run function cartographer_custom_statuses:death/run_death_effects