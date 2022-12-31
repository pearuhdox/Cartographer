execute if entity @s[tag=ca.used_first_strike] run function cartographer_core:helper/combat/check_combat

tag @s remove ca.no_combat

function #minecraft:cartographer/events/enchantments/melee/first_strike