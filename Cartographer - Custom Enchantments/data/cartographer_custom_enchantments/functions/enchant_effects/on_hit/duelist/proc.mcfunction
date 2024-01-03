scoreboard players set $damage ca.duelist 25
scoreboard players operation $damage ca.duelist *= $duelist ca.weapon_var


execute store result storage cartographer:macro.custom_enchantments damage double 0.1 run scoreboard players get $damage ca.duelist
function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments

#Debug Message
#function #minecraft:cartographer/events/enchants_mob_hit/melee/smite