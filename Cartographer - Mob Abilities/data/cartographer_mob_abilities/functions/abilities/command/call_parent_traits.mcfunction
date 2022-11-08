execute if score $com_aft ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if score $com_car ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/carapace/effect
execute if score $com_clo ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/cloaking/effect


#Runs at the mob position
execute if score $com_pre ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/predator/effect
execute if score $com_evo ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/evocative/effect
execute if score $com_vol ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/volatile/effect

execute if score $com_amp_b ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/brutal
execute if score $com_amp_r ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/relentless
execute if score $com_amp_d ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/devious
execute if score $com_amp_s ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/sacrificial

#say Running Traits