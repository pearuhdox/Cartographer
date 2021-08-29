execute if score $heal_aft ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if score $heal_car ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/carapace/effect


#Runs at the mob position
execute if score $heal_pre ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/predator/effect
execute if score $heal_evo ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/evocative/effect
execute if score $heal_vol ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/volatile/effect

#say Running Traits