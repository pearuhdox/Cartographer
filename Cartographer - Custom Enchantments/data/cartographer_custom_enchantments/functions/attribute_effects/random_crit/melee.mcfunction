scoreboard players set $success ca.attr_random_crit 0

function cartographer_custom_enchantments:attribute_effects/random_crit/chance


execute if score $success ca.rand_var matches 1.. run scoreboard players operation $base_melee_bonus ca.attr_random_crit = $damage_calc ca.attr_random_crit
execute if score $success ca.rand_var matches 1.. run scoreboard players operation $base_melee_bonus ca.attr_random_crit /= $2 ca.CONSTANT

execute if score $success ca.rand_var matches 1.. run scoreboard players operation $damage_calc ca.attr_random_crit *= $150 ca.CONSTANT
execute if score $success ca.rand_var matches 1.. run scoreboard players operation $damage_calc ca.attr_random_crit /= $100 ca.CONSTANT

execute if score $success ca.rand_var matches 1.. run scoreboard players set $success ca.attr_random_crit 1
