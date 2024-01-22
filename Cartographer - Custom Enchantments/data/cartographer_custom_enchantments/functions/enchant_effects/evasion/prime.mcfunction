scoreboard players operation $percent_evade ca.evade_chance = @s ca.evasion
scoreboard players operation $percent_evade ca.evade_chance *= $4 ca.CONSTANT


scoreboard players operation $target ca.rand_var = $percent_evade ca.evade_chance
scoreboard players operation $bias ca.rand_var = @s ca.evasion_bias

scoreboard players operation $threshold ca.rand_var = @s ca.attr_luck
scoreboard players operation $threshold ca.rand_var *= $70 ca.CONSTANT
scoreboard players operation $threshold ca.rand_var /= $100 ca.CONSTANT

function cartographer_core:helper/chance_proc/calc

execute if score $success ca.rand_var matches 1.. run tag @s add evading


execute if score $success ca.rand_var matches 1.. run scoreboard players set @s ca.evasion_bias 0

execute unless score $success ca.rand_var matches 1.. run scoreboard players add @s ca.evasion_bias 4
execute unless score $success ca.rand_var matches 1.. if score @s ca.evasion_bias matches 21.. run scoreboard players set @s ca.evasion_bias 20