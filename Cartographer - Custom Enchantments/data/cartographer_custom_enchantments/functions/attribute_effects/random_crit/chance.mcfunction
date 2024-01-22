scoreboard players operation $target ca.rand_var = @s ca.attr_random_crit

scoreboard players operation $2x ca.attr_random_crit = @s ca.attr_random_crit
scoreboard players operation $2x ca.attr_random_crit *= $2 ca.CONSTANT

scoreboard players operation $bias ca.rand_var = @s ca.attr_random_crit_bias

scoreboard players operation $threshold ca.rand_var = @s ca.attr_luck
scoreboard players operation $threshold ca.rand_var *= $70 ca.CONSTANT
scoreboard players operation $threshold ca.rand_var /= $100 ca.CONSTANT

function cartographer_core:helper/chance_proc/calc

#Return uses the success state to evaluate if fails or not

execute unless score $success ca.rand_var matches 1.. run scoreboard players add @s ca.attr_random_crit_bias 1
execute unless score $success ca.rand_var matches 1.. if score @s ca.attr_random_crit_bias > $2x ca.attr_random_crit run scoreboard players operation @s ca.attr_random_crit_bias = $2x ca.attr_random_crit

execute if score $success ca.rand_var matches 1.. run scoreboard players set @s ca.attr_random_crit_bias 0