#These effects will activate from the entity itself before the player call.

execute if score $cu_en_ranged ca.enabler matches 1.. at @s if entity @e[distance=..7,type=arrow,limit=1,sort=nearest] run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag
execute if score $cu_en_ranged ca.enabler matches 1.. at @s if entity @e[distance=..7,type=trident,limit=1,sort=nearest] run function cartographer_custom_enchantments:enchant_effects/trident_custom_tag

#Cauterize - Goes first
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_cauterize] at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/ranged

#Conductive
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_conductive] run function cartographer_custom_enchantments:enchant_effects/conductive

#Flash
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_flash] at @s run function cartographer_custom_enchantments:enchant_effects/flash

#Frost
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_frost] run function cartographer_custom_enchantments:enchant_effects/frost

#Punch - Crossbows
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_1] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_2] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_3] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_4] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_5] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect

#Pin Down
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_pin] run function cartographer_custom_enchantments:enchant_effects/pin_down

#Putrefy
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_decay] run function cartographer_custom_enchantments:enchant_effects/putrefy

#Rend
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_rend] run function cartographer_custom_enchantments:enchant_effects/rend

#Tempo Theft
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempo_1] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/mob
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempo_2] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/mob
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempo_3] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/mob

#Volatile
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_volatile] at @s run function cartographer_custom_enchantments:enchant_effects/volatile

#Current
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_current] run function cartographer_custom_enchantments:enchant_effects/current

#Ricochet
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_ricochet_1] at @s run function cartographer_custom_enchantments:enchant_effects/ricochet
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_ricochet_2] at @s run function cartographer_custom_enchantments:enchant_effects/ricochet
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_ricochet_3] at @s run function cartographer_custom_enchantments:enchant_effects/ricochet

#Tempest
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempest_1] run function cartographer_custom_enchantments:enchant_effects/tempest
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempest_2] run function cartographer_custom_enchantments:enchant_effects/tempest
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempest_3] run function cartographer_custom_enchantments:enchant_effects/tempest
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempest_4] run function cartographer_custom_enchantments:enchant_effects/tempest
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempest_5] run function cartographer_custom_enchantments:enchant_effects/tempest

#Duelist - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_duelist_1] at @s run function cartographer_custom_enchantments:enchant_effects/duelist/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_duelist_2] at @s run function cartographer_custom_enchantments:enchant_effects/duelist/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_duelist_3] at @s run function cartographer_custom_enchantments:enchant_effects/duelist/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_duelist_4] at @s run function cartographer_custom_enchantments:enchant_effects/duelist/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_duelist_5] at @s run function cartographer_custom_enchantments:enchant_effects/duelist/ranged

#Hunter - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_hunter_1] at @s run function cartographer_custom_enchantments:enchant_effects/hunter/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_hunter_2] at @s run function cartographer_custom_enchantments:enchant_effects/hunter/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_hunter_3] at @s run function cartographer_custom_enchantments:enchant_effects/hunter/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_hunter_4] at @s run function cartographer_custom_enchantments:enchant_effects/hunter/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_hunter_5] at @s run function cartographer_custom_enchantments:enchant_effects/hunter/ranged

#Singe - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_singe_1] at @s run function cartographer_custom_enchantments:enchant_effects/singe/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_singe_2] at @s run function cartographer_custom_enchantments:enchant_effects/singe/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_singe_3] at @s run function cartographer_custom_enchantments:enchant_effects/singe/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_singe_4] at @s run function cartographer_custom_enchantments:enchant_effects/singe/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_singe_5] at @s run function cartographer_custom_enchantments:enchant_effects/singe/ranged


#Committed - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_committed_1] at @s run function cartographer_custom_enchantments:enchant_effects/committed/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_committed_2] at @s run function cartographer_custom_enchantments:enchant_effects/committed/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_committed_3] at @s run function cartographer_custom_enchantments:enchant_effects/committed/ranged

#Fire Aspect - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_fire_aspect_1] at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect_ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_fire_aspect_2] at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect_ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_fire_aspect_3] at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect_ranged

#Frostbite - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_frostbite_1] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_frostbite_2] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_frostbite_3] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/ranged

#Stunning - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_1] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_2] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_3] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_4] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_5] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged

#Decay - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_decay_1] at @s run function cartographer_custom_enchantments:enchant_effects/decay/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_decay_2] at @s run function cartographer_custom_enchantments:enchant_effects/decay/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_decay_3] at @s run function cartographer_custom_enchantments:enchant_effects/decay/ranged

#Overload - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_overload_1] at @s run function cartographer_custom_enchantments:enchant_effects/overload/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_overload_2] at @s run function cartographer_custom_enchantments:enchant_effects/overload/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_overload_3] at @s run function cartographer_custom_enchantments:enchant_effects/overload/ranged

#Vicious - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_vicious_1] at @s run function cartographer_custom_enchantments:enchant_effects/vicious/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_vicious_2] at @s run function cartographer_custom_enchantments:enchant_effects/vicious/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_vicious_3] at @s run function cartographer_custom_enchantments:enchant_effects/vicious/ranged

#Loyalty - Hits entity
execute if score $cu_en_ranged ca.enabler matches 1.. as @e[tag=loyalty] at @s run tag @s add hit_entity
execute if score $cu_en_ranged ca.enabler matches 1.. as @e[tag=loyalty] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/convert

#Brittle Check. Check if the entity hurt was Brittle and it wasn't from the same hit that applied it (from Cauterize).
execute if score @s[tag=!cleanse_fire] ca.brittle_time matches 1.. as @s at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/brittle_hurt