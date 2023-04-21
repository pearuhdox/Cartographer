scoreboard players operation $test_max rph.health = @s rph.health_max
scoreboard players operation $test_max rph.health /= $10 rph.var

scoreboard players operation $test_max_upper rph.health = @s rph.health

scoreboard players operation $test_max_upper rph.health /= $test_max rph.health
execute if score $test_max_upper rph.health matches 8.. run function rph:health/stop_one_shot