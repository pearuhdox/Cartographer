execute if entity @s[tag=ca.aftershock] run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if entity @s[tag=ca.carapace] run function cartographer_mob_abilities:ability_traits/carapace/effect


#Runs at the mob position
execute if entity @s[tag=ca.legionary] at @s run function cartographer_mob_abilities:ability_traits/legionary/master
execute if entity @s[tag=ca.predator] at @s run function cartographer_mob_abilities:ability_traits/predator/effect
execute if entity @s[tag=ca.evocative] at @s run function cartographer_mob_abilities:ability_traits/evocative/effect
execute if entity @s[tag=ca.volatile] unless entity @s[tag=ca.orbit] unless entity @s[tag=ca.magic_missile] unless entity @s[tag=ca.trapper] unless entity @s[tag=ca.grenadier] unless entity @s[tag=ca.needle] at @s run function cartographer_mob_abilities:ability_traits/volatile/effect

execute if entity @s[tag=ca.brutal_amplify] run function cartographer_mob_abilities:ability_traits/amplify/brutal
execute if entity @s[tag=ca.relentless_amplify] run function cartographer_mob_abilities:ability_traits/amplify/relentless
execute if entity @s[tag=ca.devious_amplify] run function cartographer_mob_abilities:ability_traits/amplify/devious
execute if entity @s[tag=ca.sacrificial_amplify] run function cartographer_mob_abilities:ability_traits/amplify/sacrificial