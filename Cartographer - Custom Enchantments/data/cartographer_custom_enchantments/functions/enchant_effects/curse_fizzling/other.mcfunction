scoreboard players operation $negative ca.curse_fizzling = @s ca.curse_fizzling
scoreboard players operation $negative ca.curse_fizzling += @s ca.curse_fizzling_off
scoreboard players operation $negative ca.curse_fizzling += @s ca.curse_fizzling_main

scoreboard players operation $negative ca.curse_fizzling *= $5 ca.CONSTANT

scoreboard players set $target ca.rand_var 100
scoreboard players operation $target ca.rand_var -= $negative ca.curse_fizzling

scoreboard players operation $threshold ca.rand_var = @s ca.attr_luck
scoreboard players operation $threshold ca.rand_var *= $70 ca.CONSTANT
scoreboard players operation $threshold ca.rand_var /= $100 ca.CONSTANT

function cartographer_core:helper/chance_proc/calc

#Return uses the success state to evaluate if fails or not