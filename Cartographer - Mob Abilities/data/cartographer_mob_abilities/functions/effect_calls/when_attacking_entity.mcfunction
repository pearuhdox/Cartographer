execute if entity @s[tag=ca.reflect_ranged] run function cartographer_mob_abilities:passive/reflect_entity
execute if entity @s[tag=ca.reflect_melee] run function cartographer_mob_abilities:passive/reflect_entity

execute if entity @s[tag=ca.reflect_ranged] run tag @s add reflecting_ranged
execute if entity @s[tag=ca.reflect_melee] run tag @s add reflecting_melee

execute if entity @s[tag=ca.shrieker,tag=!carapaced] at @s run function cartographer_mob_abilities:ability_traits/shrieker/hit

execute if entity @s[tag=ca.size_shrink] at @s run function cartographer_mob_abilities:passive/size/shrink/shrink
execute if entity @s[tag=ca.size_grow] at @s run function cartographer_mob_abilities:passive/size/grow/grow

execute if entity @s[tag=ca.acro_pass] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/passive/chance_hit

execute if entity @s[tag=ca.active_when_hit] unless score @s cooldown matches 1.. at @s run function cartographer_mob_abilities:passive/attack_override/chance

execute if score @s ca.carapace_stacks matches 1.. at @s run function cartographer_mob_abilities:ability_traits/carapace/remove