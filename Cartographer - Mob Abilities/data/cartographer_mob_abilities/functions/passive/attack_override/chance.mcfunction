scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100

function bb:lib/rng
scoreboard players operation $acrobat_chance ca.mob_var = $value bbl.rng

execute if score $acrobat_chance ca.mob_var matches 1..50 run function cartographer_mob_abilities:helper/attack_override
execute if score $acrobat_chance ca.mob_var matches 1..50 run scoreboard players remove @s ability_charge 1