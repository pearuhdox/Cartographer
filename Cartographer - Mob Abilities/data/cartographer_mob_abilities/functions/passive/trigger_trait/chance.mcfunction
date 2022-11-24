scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100

function bb:lib/rng
scoreboard players operation $trait_chance ca.mob_var = $value bbl.rng

execute if score $trait_chance ca.mob_var matches 1..33 run function cartographer_mob_abilities:passive/trigger_trait/run