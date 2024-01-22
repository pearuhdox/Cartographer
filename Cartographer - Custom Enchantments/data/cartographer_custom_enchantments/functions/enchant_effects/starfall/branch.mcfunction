scoreboard players set $target ca.rand_var 15
scoreboard players operation $bias ca.rand_var = @s ca.starfall_bias

scoreboard players operation $threshold ca.rand_var = @s ca.attr_luck
scoreboard players operation $threshold ca.rand_var *= $70 ca.CONSTANT
scoreboard players operation $threshold ca.rand_var /= $100 ca.CONSTANT

function cartographer_core:helper/chance_proc/calc

execute if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/starfall/find


execute if score $success ca.rand_var matches 1.. run scoreboard players set @s ca.starfall_bias 0

execute unless score $success ca.rand_var matches 1.. run scoreboard players add @s ca.starfall_bias 1
execute unless score $success ca.rand_var matches 1.. if score @s ca.starfall_bias matches 11.. run scoreboard players set @s ca.starfall_bias 10