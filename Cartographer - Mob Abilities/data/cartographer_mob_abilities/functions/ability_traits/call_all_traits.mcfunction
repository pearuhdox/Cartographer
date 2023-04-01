#Runs as/at the player's position
execute if entity @s[tag=ca.blazing] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/blazing/player_effect
execute if entity @s[tag=ca.glacial] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/glacial/player_effect
execute if entity @s[tag=ca.horrifying] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/horrifying/player_effect

execute if entity @s[tag=ca.webbing] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/webbing/player_effect
execute if entity @s[tag=ca.cursing] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/curse/player_effect

#For melee-touched, push the mob out of the webbing zone.
execute if entity @s[tag=ca.webbing,tag=ca.touch] if entity @a[tag=ability_tagged,distance=..2] run function cartographer_mob_abilities:ability_traits/webbing/touch_pushback

execute if entity @s[tag=ca.overloading] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/overloading/player_effect

execute if entity @s[tag=ca.venemous] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/venemous/player_effect
execute if entity @s[tag=ca.zephyrous] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/zephyrous/player_effect

execute unless entity @s[tag=ca.zephyrous] if entity @s[tag=ca.knockback] run function cartographer_mob_abilities:ability_traits/knockback/mob_effect
execute unless entity @s[tag=ca.zephyrous] if entity @s[tag=ca.knockback] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/knockback/player_effect
execute unless entity @s[tag=ca.zephyrous] if entity @s[tag=ca.knockback] run function cartographer_mob_abilities:ability_traits/knockback/return_effect

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:ability_traits/alchemist/get_effects
execute if entity @s[tag=ca.alchemist] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/alchemist/player_effect

#Position Independent
execute if entity @s[tag=ca.celestial,tag=ca.touch] if entity @p[distance=..2] store result score $damage ca.ability_dmg run attribute @s minecraft:generic.attack_damage get
execute if entity @s[tag=ca.celestial] if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:ability_traits/celestial/player_effect
execute if entity @s[tag=ca.aftershock] run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if entity @s[tag=ca.cloaking] at @s run function cartographer_mob_abilities:ability_traits/cloaking/effect

execute if entity @s[tag=ca.brutal_amplify] run function cartographer_mob_abilities:ability_traits/amplify/brutal
execute if entity @s[tag=ca.relentless_amplify] run function cartographer_mob_abilities:ability_traits/amplify/relentless
execute if entity @s[tag=ca.devious_amplify] run function cartographer_mob_abilities:ability_traits/amplify/devious
execute if entity @s[tag=ca.sacrificial_amplify] run function cartographer_mob_abilities:ability_traits/amplify/sacrificial

execute if entity @s[tag=ca.carapace+] run function cartographer_mob_abilities:ability_traits/carapace/apply/1
execute if entity @s[tag=ca.carapace++] run function cartographer_mob_abilities:ability_traits/carapace/apply/2
execute if entity @s[tag=ca.carapace+++] run function cartographer_mob_abilities:ability_traits/carapace/apply/3
execute if entity @s[tag=ca.carapace++++] run function cartographer_mob_abilities:ability_traits/carapace/apply/4

execute if entity @s[tag=ca.ambidextrous,tag=ca.follow_up_ability,scores={ca.ambi_cool=0}] if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:passive/ambidextrous/swap

#Runs at the mob position
execute if entity @s[tag=ca.legionary] at @s run function cartographer_mob_abilities:ability_traits/legionary/master
execute if entity @s[tag=ca.warping] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/effect
execute if entity @s[tag=ca.evocative] at @s run function cartographer_mob_abilities:ability_traits/evocative/effect
execute if entity @s[tag=ca.volatile] at @s run function cartographer_mob_abilities:ability_traits/volatile/effect

execute if entity @s[tag=ca.acro_dynamic] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/effect
execute if entity @s[tag=ca.acro_strafe_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/strafe
execute if entity @s[tag=ca.acro_strafe_back_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/strafe_back
execute if entity @s[tag=ca.acro_gap_close_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/gap_close
execute if entity @s[tag=ca.acro_retreat_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/retreat
execute if entity @s[tag=ca.acro_kite_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite
execute if entity @s[tag=ca.acro_kite_forward_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_forward
execute if entity @s[tag=ca.acro_kite_strafe_after] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/kite_strafe

#Feeble Tag
execute if entity @s[tag=ca.feeble] run scoreboard players set @s bbl.damage_queue 100
execute if entity @s[tag=ca.feeble] at @s run function cd:lib/mob/damage/normal

execute if entity @s[tag=ca.feeble_void] at @s run tp @s ~ -256 ~

function #minecraft:cartographer/events/custom_traits

#say Running Traits