scoreboard players operation @s ca.damage_queue = $sharpshot ca.var
scoreboard players operation @s ca.damage_queue *= $3 ca.CONSTANT

function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments