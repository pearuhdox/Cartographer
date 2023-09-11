scoreboard players set $rng_min bbl.rng -6
scoreboard players set $rng_max bbl.rng 6

execute if entity @s[tag=ca.storm_close] run scoreboard players set $rng_min bbl.rng -1
execute if entity @s[tag=ca.storm_close] run scoreboard players set $rng_max bbl.rng 1

function bb:lib/rng
scoreboard players operation $storm_y ca.mob_var = $value bbl.rng

execute unless entity @s[tag=ca.storm_close] if score $storm_y ca.mob_var matches 0..1 run scoreboard players set $storm_y ca.mob_var 2
execute unless entity @s[tag=ca.storm_close] if score $storm_y ca.mob_var matches -1 run scoreboard players set $storm_y ca.mob_var -2

execute if score $storm_y ca.mob_var matches -6 positioned ~ ~ ~-6 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches -5 positioned ~ ~ ~-5 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches -4 positioned ~ ~ ~-4 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches -3 positioned ~ ~ ~-3 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches -2 positioned ~ ~ ~-2 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches -1 positioned ~ ~ ~-1 run function cartographer_mob_abilities:abilities/storm/flatten_ground

execute if score $storm_y ca.mob_var matches 6 positioned ~ ~ ~6 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches 5 positioned ~ ~ ~5 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches 4 positioned ~ ~ ~4 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches 3 positioned ~ ~ ~3 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches 2 positioned ~ ~ ~2 run function cartographer_mob_abilities:abilities/storm/flatten_ground
execute if score $storm_y ca.mob_var matches 1 positioned ~ ~ ~1 run function cartographer_mob_abilities:abilities/storm/flatten_ground

execute if score $storm_y ca.mob_var matches 0 positioned ~ ~ ~0 run function cartographer_mob_abilities:abilities/storm/flatten_ground