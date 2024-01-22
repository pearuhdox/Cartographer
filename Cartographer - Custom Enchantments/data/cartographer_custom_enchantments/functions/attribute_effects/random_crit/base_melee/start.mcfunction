execute store result score $damage_calc ca.attr_random_crit run attribute @s minecraft:generic.attack_damage get 10

function cartographer_custom_enchantments:attribute_effects/random_crit/melee

execute if score $success ca.attr_random_crit matches 1.. as @e[type=#bb:hostile,tag=ca.attacked_mob] at @s run function cartographer_custom_enchantments:attribute_effects/random_crit/base_melee/branch

#If successful and has Slamming, it procs here
execute if score $success ca.attr_random_crit matches 1.. if score @s ca.slamming matches 1.. run function cartographer_custom_enchantments:enchant_effects/slamming/proc

execute if score $success ca.attr_random_crit matches 1.. if score @s ca.evocation matches 1.. if score @s ca.evocation_charges matches 1.. unless entity @s[tag=ca.evocation_penalty] run function cartographer_custom_enchantments:enchant_effects/evocation/random_crit_call