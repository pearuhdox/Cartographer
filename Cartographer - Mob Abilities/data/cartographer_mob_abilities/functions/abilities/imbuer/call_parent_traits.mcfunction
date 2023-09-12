execute if score $imbue_aft ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if score $imbue_clo ca.var matches 1.. run function cartographer_mob_abilities:ability_traits/cloaking/effect

execute if score $imbue_car ca.var matches 1 run function cartographer_mob_abilities:ability_traits/carapace/apply/1
execute if score $imbue_car ca.var matches 2 run function cartographer_mob_abilities:ability_traits/carapace/apply/2
execute if score $imbue_car ca.var matches 3 run function cartographer_mob_abilities:ability_traits/carapace/apply/3
execute if score $imbue_car ca.var matches 4.. run function cartographer_mob_abilities:ability_traits/carapace/apply/4

#Runs at the mob position
execute if score $imbue_evo ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/evocative/effect
execute if score $imbue_vol ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/volatile/effect

execute if score $imbue_amp_b ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/brutal
execute if score $imbue_amp_r ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/relentless
execute if score $imbue_amp_d ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/devious
execute if score $imbue_amp_s ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/amplify/sacrificial

execute if score $imbue_acr_dy ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/effect
execute if score $imbue_acr_st ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/strafe
execute if score $imbue_acr_bk_st ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/strafe_back
execute if score $imbue_acr_gc ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/gap_close
execute if score $imbue_acr_re ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/retreat
execute if score $imbue_acr_kn ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite
execute if score $imbue_acr_kf ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_forward
execute if score $imbue_acr_ks ca.var matches 1.. at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_strafe
#say Running Traits