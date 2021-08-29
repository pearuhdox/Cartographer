execute if entity @s[tag=ca.aftershock] run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if entity @s[tag=ca.carapace] run function cartographer_mob_abilities:ability_traits/carapace/effect


#Runs at the mob position
execute if entity @s[tag=ca.predator] at @s run function cartographer_mob_abilities:ability_traits/predator/effect
execute if entity @s[tag=ca.evocative] at @s run function cartographer_mob_abilities:ability_traits/evocative/effect
execute if entity @s[tag=ca.volatile] unless entity @s[tag=magic_missile] at @s run function cartographer_mob_abilities:ability_traits/volatile/effect