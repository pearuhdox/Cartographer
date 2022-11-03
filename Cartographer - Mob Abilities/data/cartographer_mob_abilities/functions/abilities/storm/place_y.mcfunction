scoreboard players set $rng_min bbl.rng -6
scoreboard players set $rng_max bbl.rng 6

function bb:lib/rng
scoreboard players operation $storm_y ca.mob_var = $value bbl.rng

execute if score $storm_y ca.mob_var matches -6 positioned ~ ~ ~-4 run function cartographer_mob_abilities:abilities/storm/create_lightning
execute if score $storm_y ca.mob_var matches -5 positioned ~ ~ ~-3 run function cartographer_mob_abilities:abilities/storm/create_lightning
execute if score $storm_y ca.mob_var matches -4 positioned ~ ~ ~-2 run function cartographer_mob_abilities:abilities/storm/create_lightning
execute if score $storm_y ca.mob_var matches -3 positioned ~ ~ ~-1 run function cartographer_mob_abilities:abilities/storm/create_lightning

execute if score $storm_y ca.mob_var matches 6 positioned ~ ~ ~4 run function cartographer_mob_abilities:abilities/storm/create_lightning
execute if score $storm_y ca.mob_var matches 5 positioned ~ ~ ~3 run function cartographer_mob_abilities:abilities/storm/create_lightning
execute if score $storm_y ca.mob_var matches 4 positioned ~ ~ ~2 run function cartographer_mob_abilities:abilities/storm/create_lightning
execute if score $storm_y ca.mob_var matches 3 positioned ~ ~ ~1 run function cartographer_mob_abilities:abilities/storm/create_lightning

execute if score $storm_y ca.mob_var matches -2..2 positioned ~ ~ ~0 run function cartographer_mob_abilities:abilities/storm/create_lightning