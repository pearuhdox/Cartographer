scoreboard players set $damage ca.hunter 25
scoreboard players operation $damage ca.hunter *= $hunter ca.weapon_var


execute store result storage cartographer:macro.custom_enchantments damage double 0.1 run scoreboard players get $damage ca.hunter
function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

#Debug Message
#function #minecraft:cartographer/events/enchants_mob_hit/melee/smite