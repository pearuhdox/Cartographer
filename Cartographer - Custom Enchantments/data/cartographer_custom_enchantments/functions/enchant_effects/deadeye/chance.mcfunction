scoreboard players set $target ca.rand_var 20
scoreboard players operation $bias ca.rand_var = @s ca.deadeye_bias

scoreboard players operation $threshold ca.rand_var = @s ca.attr_luck
scoreboard players operation $threshold ca.rand_var *= $70 ca.CONSTANT
scoreboard players operation $threshold ca.rand_var /= $100 ca.CONSTANT

function cartographer_core:helper/chance_proc/calc

execute if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/deadeye/fire


execute if score $success ca.rand_var matches 1.. run scoreboard players set @s ca.deadeye_bias 0

execute unless score $success ca.rand_var matches 1.. run scoreboard players add @s ca.deadeye_bias 6
execute unless score $success ca.rand_var matches 1.. if score @s ca.deadeye_bias matches 61.. run scoreboard players set @s ca.deadeye_bias 60