scoreboard players operation @s ca.damage_queue = $first_strike ca.weapon_var
scoreboard players operation @s ca.damage_queue *= $20 ca.CONSTANT

function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

tag @s add ca.first_striked

playsound minecraft:block.calcite.break player @a ~ ~ ~ 1.5 0.5
playsound minecraft:block.calcite.break player @a ~ ~ ~ 1.5 0.5
playsound minecraft:block.calcite.break player @a ~ ~ ~ 1.5 0.5

particle minecraft:wax_off ~ ~1 ~ 0.3 0.15 0.3 1 6 normal