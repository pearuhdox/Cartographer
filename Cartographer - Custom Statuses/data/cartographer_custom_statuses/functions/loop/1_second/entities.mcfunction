tag @s remove shocked_tick

execute if entity @s[nbt={HurtTime:0s}] run function cartographer_custom_statuses:loop/1_second/run_effect_branch

execute if score @s ca.effect_cloak matches 1.. run function cartographer_custom_statuses:effects/cloak/effects