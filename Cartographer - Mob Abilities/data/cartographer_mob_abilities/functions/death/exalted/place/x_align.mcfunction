scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 20

function bb:lib/rng
scoreboard players operation $exalted_x ca.mob_var = $value bbl.rng

execute if score $exalted_x ca.mob_var matches 1 positioned ~-6 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 2 positioned ~-7 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 3 positioned ~-8 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 4 positioned ~-9 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 5 positioned ~-10 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 6 positioned ~-11 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 7 positioned ~-12 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 8 positioned ~-12 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 9 positioned ~-12 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 10 positioned ~-12 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align

execute if score $exalted_x ca.mob_var matches 11 positioned ~6 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 12 positioned ~7 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 13 positioned ~8 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 14 positioned ~9 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 15 positioned ~10 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 16 positioned ~11 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 17 positioned ~12 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 18 positioned ~12 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 19 positioned ~12 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align
execute if score $exalted_x ca.mob_var matches 20 positioned ~12 ~ ~ run function cartographer_mob_abilities:death/exalted/place/y_align