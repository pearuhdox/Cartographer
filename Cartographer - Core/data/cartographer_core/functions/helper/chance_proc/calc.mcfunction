#Based on the value of $target ca.rand_var, do a random check and see if the value randomized is lower than the value
#target is multiplied by 10 so it can be input as a chance based on 1-100
#bias is also multiplied by 10 so it can be 1-100
#threshold is multiplied by 10, it is the value that forces a reroll 100-t is true
scoreboard players set $success ca.rand_var 0
scoreboard players operation $target ca.rand_var *= $10 ca.CONSTANT
scoreboard players operation $bias ca.rand_var *= $10 ca.CONSTANT
scoreboard players operation $threshold ca.rand_var *= $10 ca.CONSTANT

scoreboard players operation $threshold_amount ca.rand_var = $1000 ca.CONSTANT
scoreboard players operation $threshold_amount ca.rand_var -= $threshold ca.rand_var

scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_min bbl.rng 1000

function bb:lib/rng

#Subtract bias from target
scoreboard players operation $value bbl.rng -= $bias ca.rand_var

#If the value is above the threshold amount AND was a fail we reroll once
execute if score $value bbl.rng > $target ca.rand_var if score $value bbl.rng > $threshold_amount ca.rand_var run function cartographer_core:helper/chance_proc/reroll

#If the value is below the target aka chance, its a success.
execute if score $value bbl.rng <= $target ca.rand_var run scoreboard players set $success ca.rand_var 1