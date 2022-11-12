execute if score $heal_aft ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if score $heal_car ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/carapace/effect
execute if score $heal_clo ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/cloaking/effect


#Runs at the mob position
execute if score $heal_evo ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/evocative/effect
execute if score $heal_vol ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/volatile/effect

execute if score $heal_amp_b ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/brutal
execute if score $heal_amp_r ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/relentless
execute if score $heal_amp_d ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/devious
execute if score $heal_amp_s ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/sacrificial

execute if score $heal_acr_dy ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/effect
execute if score $heal_acr_st ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/strafe
execute if score $heal_acr_gc ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/gap_close
execute if score $heal_acr_re ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/retreat
execute if score $heal_acr_kn ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite
execute if score $heal_acr_kf ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_forward
execute if score $heal_acr_ks ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_strafe
#say Running Traits