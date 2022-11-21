scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

scoreboard players operation $needle_mod ability_charge = @s ability_charge
scoreboard players operation $needle_mod ability_charge %= $10 ca.CONSTANT

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 10.. run function cartographer_mob_abilities:charge/needle/branch

execute if score @s ability_charge matches 1..40 run effect give @s glowing 1 0 true

execute if score $needle_mod ability_charge matches 1 if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..30 run effect give @s jump_boost 2 6 true
execute if score $needle_mod ability_charge matches 1 if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1..30 run effect give @s levitation 1 0 true
execute if score $needle_mod ability_charge matches 1 if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 1 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal
execute if score $needle_mod ability_charge matches 1 if score @s[tag=ca.has_kited,tag=!ca.acrobatic_kite_elytra] ability_charge matches 31 run particle minecraft:cloud ~ ~-0.5 ~ 0.3 0 0.3 0.05 15 normal

execute if score @s ability_charge matches 50.. run function cartographer_mob_abilities:abilities/needle