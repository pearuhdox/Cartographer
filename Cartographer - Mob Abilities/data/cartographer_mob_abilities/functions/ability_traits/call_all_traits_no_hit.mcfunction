execute if entity @s[tag=ca.aftershock] run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if entity @s[tag=ca.carapace] run function cartographer_mob_abilities:ability_traits/carapace/effect


#Runs at the mob position
execute if entity @s[tag=ca.legionary] at @s run function cartographer_mob_abilities:ability_traits/legionary/classify
execute if entity @s[tag=ca.predator] at @s run function cartographer_mob_abilities:ability_traits/predator/effect
execute if entity @s[tag=ca.evocative] at @s run function cartographer_mob_abilities:ability_traits/evocative/effect
execute if entity @s[tag=ca.volatile] unless entity @s[tag=ca.orbit] unless entity @s[tag=ca.magic_missile] unless entity @s[tag=ca.trapper] unless entity @s[tag=ca.grenadier] unless entity @s[tag=ca.needle] at @s run function cartographer_mob_abilities:ability_traits/volatile/effect