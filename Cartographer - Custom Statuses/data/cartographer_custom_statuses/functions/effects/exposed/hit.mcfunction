scoreboard players operation $health_diff ca.status_var = $past_health ca.status_var
scoreboard players operation $health_diff ca.status_var -= $current_health ca.status_var

scoreboard players operation $exposed_scalar ca.status_var = @s ca.effect_exposed_level
scoreboard players operation $exposed_scalar ca.status_var *= $10 ca.CONSTANT

scoreboard players operation $health_diff ca.status_var *= $exposed_scalar ca.status_var
scoreboard players operation $health_diff ca.status_var /= $100 ca.CONSTANT

scoreboard players set @s ca.exposed_cdl 2

playsound minecraft:block.glass.break hostile @a[distance=..20] ~ ~ ~ 0.5 1.5 
playsound minecraft:block.amethyst_cluster.break hostile @a[distance=..20] ~ ~ ~ 0.5 0.75
playsound minecraft:block.amethyst_block.chime hostile @a[distance=..20] ~ ~ ~ 2 1.5

function cartographer_custom_statuses:effects/exposed/do_damage