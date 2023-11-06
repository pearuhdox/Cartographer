scoreboard players operation $health_diff ca.status_var = $past_health ca.status_var
scoreboard players operation $health_diff ca.status_var -= $current_health ca.status_var

scoreboard players operation @s ca.brittle_stored += $health_diff ca.status_var

scoreboard players operation $brittle_total ca.status_var = @s ca.effect_brittle_level
scoreboard players operation $brittle_total ca.status_var *= $2 ca.CONSTANT
scoreboard players operation $brittle_total ca.status_var *= $10 ca.CONSTANT

execute if score @s ca.brittle_stored >= $brittle_total ca.status_var run function cartographer_custom_statuses:effects/brittle/prime

function cartographer_custom_statuses:popup/brittle