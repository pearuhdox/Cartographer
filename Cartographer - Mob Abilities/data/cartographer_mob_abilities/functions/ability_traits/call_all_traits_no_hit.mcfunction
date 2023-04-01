execute if entity @s[tag=ca.aftershock] run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if entity @s[tag=ca.cloaking] at @s run function cartographer_mob_abilities:ability_traits/cloaking/effect

execute if entity @s[tag=ca.carapace+] run function cartographer_mob_abilities:ability_traits/carapace/apply/1
execute if entity @s[tag=ca.carapace++] run function cartographer_mob_abilities:ability_traits/carapace/apply/2
execute if entity @s[tag=ca.carapace+++] run function cartographer_mob_abilities:ability_traits/carapace/apply/3
execute if entity @s[tag=ca.carapace++++] run function cartographer_mob_abilities:ability_traits/carapace/apply/4


#Runs at the mob position
execute if entity @s[tag=ca.legionary] at @s run function cartographer_mob_abilities:ability_traits/legionary/master
execute if entity @s[tag=ca.warping] at @s run function cartographer_mob_abilities:ability_traits/warping/effect
execute if entity @s[tag=ca.evocative] at @s run function cartographer_mob_abilities:ability_traits/evocative/effect
execute if entity @s[tag=ca.volatile] unless entity @s[tag=ca.storm] unless entity @s[tag=ca.orbit] unless entity @s[tag=ca.sniper_shot] unless entity @s[tag=ca.volley] unless entity @s[tag=ca.sidearm] unless entity @s[tag=ca.barrage] at @s run function cartographer_mob_abilities:ability_traits/volatile/effect

execute if entity @s[tag=ca.brutal_amplify] run function cartographer_mob_abilities:ability_traits/amplify/brutal
execute if entity @s[tag=ca.relentless_amplify] run function cartographer_mob_abilities:ability_traits/amplify/relentless
execute if entity @s[tag=ca.devious_amplify] run function cartographer_mob_abilities:ability_traits/amplify/devious
execute if entity @s[tag=ca.sacrificial_amplify] run function cartographer_mob_abilities:ability_traits/amplify/sacrificial


#Sidearm After
execute if entity @s[tag=ca.sidearm_after] at @s run function cartographer_mob_abilities:passive/sidearm/channel

#Acrobatic Traits
execute if entity @s[tag=ca.acro_dynamic] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/effect
execute if entity @s[tag=ca.acro_strafe_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/strafe
execute if entity @s[tag=ca.acro_strafe_back_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/strafe_back
execute if entity @s[tag=ca.acro_gap_close_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/gap_close
execute if entity @s[tag=ca.acro_retreat_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/retreat
execute if entity @s[tag=ca.acro_kite_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite
execute if entity @s[tag=ca.acro_kite_forward_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_forward
execute if entity @s[tag=ca.acro_kite_strafe_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_strafe

#Feeble Tag
execute if entity @s[tag=ca.feeble] run scoreboard players set @s bbl.damage_queue 150
execute if entity @s[tag=ca.feeble] at @s run function cd:lib/mob/damage/normal

execute if entity @s[tag=ca.feeble_void] at @s run tp @s ~ -256 ~