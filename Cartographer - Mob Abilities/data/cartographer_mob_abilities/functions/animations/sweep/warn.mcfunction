scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 2

function bb:lib/rng
execute unless score @s ca.sweep_side matches 1.. run scoreboard players operation @s ca.sweep_side = $value bbl.rng

execute if score @s ca.sweep_side matches 1 run execute rotated ~-45 0 run function cartographer_mob_abilities:animations/sweep/warn_line
execute if score @s ca.sweep_side matches 2 run execute rotated ~45 0 run function cartographer_mob_abilities:animations/sweep/warn_line