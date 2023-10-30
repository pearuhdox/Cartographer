
#Update internal state 1
scoreboard players operation #int_1 bbl.rng *= #1a bbl.rng
scoreboard players operation #int_1 bbl.rng += #1b bbl.rng
execute if score #int_1 bbl.rng < #zero bbl.rng run scoreboard players operation #int_1 bbl.rng *= #minus_one bbl.rng

#Update internal state 2
scoreboard players operation #int_2 bbl.rng *= #2a bbl.rng
scoreboard players operation #int_2 bbl.rng += #2b bbl.rng
execute if score #int_2 bbl.rng < #zero bbl.rng run scoreboard players operation #int_2 bbl.rng *= #minus_one bbl.rng

#Update internal state 3
scoreboard players operation #int_3 bbl.rng *= #3a bbl.rng
scoreboard players operation #int_3 bbl.rng += #3b bbl.rng
execute if score #int_3 bbl.rng < #zero bbl.rng run scoreboard players operation #int_3 bbl.rng *= #minus_one bbl.rng

#Update value
scoreboard players operation $value bbl.rng = #thirteen bbl.rng
scoreboard players operation $value bbl.rng += #int_3 bbl.rng
scoreboard players operation $value bbl.rng *= #int_1 bbl.rng
scoreboard players operation $value bbl.rng += #int_2 bbl.rng
scoreboard players operation $value bbl.rng /= #four bbl.rng

#Clamp value
scoreboard players operation #mod bbl.rng = $rng_max bbl.rng
scoreboard players operation #mod bbl.rng -= $rng_min bbl.rng
scoreboard players operation #mod bbl.rng += #one bbl.rng
scoreboard players operation $value bbl.rng %= #mod bbl.rng
scoreboard players operation $value bbl.rng += $rng_min bbl.rng

