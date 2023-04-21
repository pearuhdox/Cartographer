scoreboard players operation $health_diff rph.health = $center rph.health
scoreboard players operation $health_diff rph.health /= $100 rph.var

scoreboard players operation $health_diff rph.health -= @s rph.health_math

execute if score $health_diff rph.health matches 1.. run function rph:health/equalize/fix_health
execute if score $health_diff rph.health matches ..-1 run function rph:health/equalize/invert

