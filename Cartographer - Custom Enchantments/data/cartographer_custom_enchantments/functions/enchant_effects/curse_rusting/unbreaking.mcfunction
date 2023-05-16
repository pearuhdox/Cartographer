scoreboard players operation $rust_unb2 ca.ench_var = $rust_unb ca.ench_var

scoreboard players add $rust_unb2 ca.ench_var 1
scoreboard players operation $rust_unb ca.ench_var *= $100 ca.CONSTANT
scoreboard players operation $rust_unb ca.ench_var /= $rust_unb2 ca.ench_var

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100
function bb:lib/rng

execute unless score $value bbl.rng > $rust_unb ca.ench_var run scoreboard players set $rust_slot ca.ench_var 0
