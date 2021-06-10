execute if entity @s[tag=reflect_ranged] run function cartographer_mob_abilities:passive/reflect_entity
execute if entity @s[tag=reflect_melee] run function cartographer_mob_abilities:passive/reflect_entity

execute if entity @s[tag=reflect_ranged] run tag @s add reflecting_ranged
execute if entity @s[tag=reflect_melee] run tag @s add reflecting_melee