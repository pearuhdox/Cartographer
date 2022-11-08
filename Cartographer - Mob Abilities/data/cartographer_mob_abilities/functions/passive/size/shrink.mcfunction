function bb:lib/get_target_status/get_percentage_health

scoreboard players operation $shrink_val ca.mob_var = $percentage_health_remaining bbl.storage

scoreboard players operation $shrink_val ca.mob_var *= @s ca.size_max

scoreboard players operation $shrink_val ca.mob_var /= $100 ca.CONSTANT

execute if score $shrink_val ca.mob_var < @s ca.size_min run scoreboard players operation $shrink_val ca.mob_var = @s ca.size_min

execute store result entity @s Size int 1 run scoreboard players add $shrink_val ca.mob_var 0