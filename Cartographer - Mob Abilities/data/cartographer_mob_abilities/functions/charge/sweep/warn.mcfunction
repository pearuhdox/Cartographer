scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 2

function bb:lib/rng
execute unless score @s ca.sweep_side matches 1.. run scoreboard players operation @s ca.sweep_side = $value bbl.rng

execute if score @s ca.sweep_side matches 1 run particle minecraft:angry_villager ^1 ^1 ^1 0 0.25 0 0 8 normal
execute if score @s ca.sweep_side matches 2 run particle minecraft:angry_villager ^-1 ^1 ^1 0 0.25 0 0 8 normal