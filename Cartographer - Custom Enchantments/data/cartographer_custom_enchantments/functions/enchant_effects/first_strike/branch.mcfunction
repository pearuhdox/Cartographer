
execute if score $melee ca.first_strike matches 1.. run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.3 20 normal
execute if score $melee ca.first_strike matches 1.. run particle minecraft:cloud ~ ~0.5 ~ 0.3 0.1 0.3 0.02 7 normal

execute if score $melee ca.first_strike matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..12] ~ ~ ~ 1 1.5
execute if score $melee ca.first_strike matches 1.. unless score $critting ca.first_strike matches 1 run playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..12] ~ ~ ~ 1 1.2
execute if score $melee ca.first_strike matches 1.. if score $critting ca.first_strike matches 1 run playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..12] ~ ~ ~ 1 0.6

function cartographer_custom_enchantments:helper/damage/macro_setup
execute if score $melee ca.first_strike matches 1.. run function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass with storage cartographer:macro.custom_enchantments


function #minecraft:cartographer/events/enchants_mob_hit/melee/first_strike