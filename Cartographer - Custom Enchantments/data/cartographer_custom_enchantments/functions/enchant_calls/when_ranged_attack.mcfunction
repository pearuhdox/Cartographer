#These effects will activate from the entity itself before the player call.

execute at @s if entity @e[distance=..7,type=arrow,limit=1,sort=nearest] run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag
execute at @s if entity @e[distance=..7,type=trident,limit=1,sort=nearest] run function cartographer_custom_enchantments:enchant_effects/trident_custom_tag

#Conductive
execute if entity @s[tag=is_conductive] run function cartographer_custom_enchantments:enchant_effects/conductive

#Flash
execute if entity @s[tag=is_flash] at @s run function cartographer_custom_enchantments:enchant_effects/flash

#Frost
execute if entity @s[tag=is_frost] run function cartographer_custom_enchantments:enchant_effects/frost

#Punch - Crossbows
execute if entity @s[tag=is_punch_1] run function cartographer_custom_enchantments:enchant_effects/punch_effect
execute if entity @s[tag=is_punch_2] run function cartographer_custom_enchantments:enchant_effects/punch_effect
execute if entity @s[tag=is_punch_3] run function cartographer_custom_enchantments:enchant_effects/punch_effect
execute if entity @s[tag=is_punch_4] run function cartographer_custom_enchantments:enchant_effects/punch_effect
execute if entity @s[tag=is_punch_5] run function cartographer_custom_enchantments:enchant_effects/punch_effect

#Pin Down
execute if entity @s[tag=is_pin] run function cartographer_custom_enchantments:enchant_effects/pin_down

#Putrefy
execute if entity @s[tag=is_decay] run function cartographer_custom_enchantments:enchant_effects/putrefy

#Rend
execute if entity @s[tag=is_rend] run function cartographer_custom_enchantments:enchant_effects/rend

#Tempo Theft
execute if entity @s[tag=is_tempo_1] run function cartographer_custom_enchantments:enchant_effects/tempo_theft_mob
execute if entity @s[tag=is_tempo_2] run function cartographer_custom_enchantments:enchant_effects/tempo_theft_mob
execute if entity @s[tag=is_tempo_3] run function cartographer_custom_enchantments:enchant_effects/tempo_theft_mob

#Volatile
execute if entity @s[tag=is_volatile] at @s run function cartographer_custom_enchantments:enchant_effects/volatile

#Current
execute if entity @s[tag=is_current] run function cartographer_custom_enchantments:enchant_effects/current

#Ricochet
execute if entity @s[tag=is_ricochet_1] at @s run function cartographer_custom_enchantments:enchant_effects/ricochet
execute if entity @s[tag=is_ricochet_2] at @s run function cartographer_custom_enchantments:enchant_effects/ricochet
execute if entity @s[tag=is_ricochet_3] at @s run function cartographer_custom_enchantments:enchant_effects/ricochet

#Tempest
execute if entity @s[tag=is_tempest_1] run function cartographer_custom_enchantments:enchant_effects/tempest
execute if entity @s[tag=is_tempest_2] run function cartographer_custom_enchantments:enchant_effects/tempest
execute if entity @s[tag=is_tempest_3] run function cartographer_custom_enchantments:enchant_effects/tempest
execute if entity @s[tag=is_tempest_4] run function cartographer_custom_enchantments:enchant_effects/tempest
execute if entity @s[tag=is_tempest_5] run function cartographer_custom_enchantments:enchant_effects/tempest

#Duelist - Trident
execute if entity @s[tag=is_duelist_1] at @s run function cartographer_custom_enchantments:enchant_effects/duelist_ranged
execute if entity @s[tag=is_duelist_2] at @s run function cartographer_custom_enchantments:enchant_effects/duelist_ranged
execute if entity @s[tag=is_duelist_3] at @s run function cartographer_custom_enchantments:enchant_effects/duelist_ranged
execute if entity @s[tag=is_duelist_4] at @s run function cartographer_custom_enchantments:enchant_effects/duelist_ranged
execute if entity @s[tag=is_duelist_5] at @s run function cartographer_custom_enchantments:enchant_effects/duelist_ranged

#Hunter - Trident
execute if entity @s[tag=is_hunter_1] at @s run function cartographer_custom_enchantments:enchant_effects/hunter_ranged
execute if entity @s[tag=is_hunter_2] at @s run function cartographer_custom_enchantments:enchant_effects/hunter_ranged
execute if entity @s[tag=is_hunter_3] at @s run function cartographer_custom_enchantments:enchant_effects/hunter_ranged
execute if entity @s[tag=is_hunter_4] at @s run function cartographer_custom_enchantments:enchant_effects/hunter_ranged
execute if entity @s[tag=is_hunter_5] at @s run function cartographer_custom_enchantments:enchant_effects/hunter_ranged

#Committed - Trident
execute if entity @s[tag=is_committed_1] at @s run function cartographer_custom_enchantments:enchant_effects/committed_ranged
execute if entity @s[tag=is_committed_2] at @s run function cartographer_custom_enchantments:enchant_effects/committed_ranged
execute if entity @s[tag=is_committed_3] at @s run function cartographer_custom_enchantments:enchant_effects/committed_ranged

#Fire Aspect - Trident
execute if entity @s[tag=is_fire_aspect_1] at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect_ranged
execute if entity @s[tag=is_fire_aspect_2] at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect_ranged
execute if entity @s[tag=is_fire_aspect_3] at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect_ranged

#Frostbite - Trident
execute if entity @s[tag=is_frostbite_1] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite_ranged
execute if entity @s[tag=is_frostbite_2] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite_ranged
execute if entity @s[tag=is_frostbite_3] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite_ranged

#Stunning - Trident
execute if entity @s[tag=is_stunning_1] at @s run function cartographer_custom_enchantments:enchant_effects/stunning_ranged
execute if entity @s[tag=is_stunning_2] at @s run function cartographer_custom_enchantments:enchant_effects/stunning_ranged
execute if entity @s[tag=is_stunning_3] at @s run function cartographer_custom_enchantments:enchant_effects/stunning_ranged
execute if entity @s[tag=is_stunning_4] at @s run function cartographer_custom_enchantments:enchant_effects/stunning_ranged
execute if entity @s[tag=is_stunning_5] at @s run function cartographer_custom_enchantments:enchant_effects/stunning_ranged

#Decay - Trident
execute if entity @s[tag=is_decay_1] at @s run function cartographer_custom_enchantments:enchant_effects/decay_ranged
execute if entity @s[tag=is_decay_2] at @s run function cartographer_custom_enchantments:enchant_effects/decay_ranged
execute if entity @s[tag=is_decay_3] at @s run function cartographer_custom_enchantments:enchant_effects/decay_ranged

#Overload - Trident
execute if entity @s[tag=is_overload_1] at @s run function cartographer_custom_enchantments:enchant_effects/overload_ranged
execute if entity @s[tag=is_overload_2] at @s run function cartographer_custom_enchantments:enchant_effects/overload_ranged
execute if entity @s[tag=is_overload_3] at @s run function cartographer_custom_enchantments:enchant_effects/overload_ranged

#Vicious - Trident
execute if entity @s[tag=is_vicious_1] at @s run function cartographer_custom_enchantments:enchant_effects/vicious_ranged
execute if entity @s[tag=is_vicious_2] at @s run function cartographer_custom_enchantments:enchant_effects/vicious_ranged
execute if entity @s[tag=is_vicious_3] at @s run function cartographer_custom_enchantments:enchant_effects/vicious_ranged

#Loyalty - Hits entity
execute as @e[tag=loyalty] at @s run tag @s add hit_entity
execute as @e[tag=loyalty] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/convert