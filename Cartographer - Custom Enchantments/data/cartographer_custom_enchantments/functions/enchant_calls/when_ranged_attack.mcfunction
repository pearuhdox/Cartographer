#Reset All Scores I am Crying
scoreboard players set $bleed ca.var 0
scoreboard players set $electrode ca.var 0
scoreboard players set $expose ca.var 0
scoreboard players set $frost ca.var 0
scoreboard players set $infect ca.var 0
scoreboard players set $possess ca.var 0
scoreboard players set $flash ca.var 0
scoreboard players set $cauterize ca.var 0
scoreboard players set $explosive ca.var 0
scoreboard players set $vol_dmg ca.vol_dmg 0
scoreboard players set $tempo_theft ca.var 0
scoreboard players set $punch ca.var 0

scoreboard players set $current ca.var 0
scoreboard players set $ricochet ca.var 0
scoreboard players set $tempest ca.var 0
scoreboard players set $duelist ca.var 0
scoreboard players set $hunter ca.var 0
scoreboard players set $singe ca.var 0
scoreboard players set $frostbite ca.var 0
scoreboard players set $exposing ca.var 0
scoreboard players set $possession ca.var 0
scoreboard players set $stunning ca.var 0
scoreboard players set $infection ca.var 0
scoreboard players set $electrocute ca.var 0
scoreboard players set $bleeding ca.var 0
scoreboard players set $fire_aspect ca.var 0
scoreboard players set $cauterize ca.var 0

scoreboard players set $loyalty ca.var 0


#Grab All Relevant Data from the Arrow in question.
execute at @s as @e[distance=..7,type=#cartographer_core:arrow,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/branch
execute at @s as @e[distance=..7,type=trident,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag/branch_trident

#These effects will activate from the entity itself before the player call.
execute if score $cu_en_ranged ca.enabler matches 1.. at @s[type=!player] run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag
execute if score $cu_en_ranged ca.enabler matches 1.. at @s[type=!player] run function cartographer_custom_enchantments:enchant_effects/trident_custom_tag

#Cauterize - Goes first
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_cauterize] at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/ranged

#Electrode
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_electrode] run function cartographer_custom_enchantments:enchant_effects/electrode

#Flash
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_flash] at @s run function cartographer_custom_enchantments:enchant_effects/flash

#Frost
execute if entity @s[tag=is_frost] run function cartographer_custom_enchantments:enchant_effects/frost

#Punch - Crossbows
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_1] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_2] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_3] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_4] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_punch_5] at @s run function cartographer_custom_enchantments:enchant_effects/punch/effect

#Expose
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_pin] run function cartographer_custom_enchantments:enchant_effects/expose

#Infect
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_infection] run function cartographer_custom_enchantments:enchant_effects/infect

#Bleed
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_bleed] run function cartographer_custom_enchantments:enchant_effects/bleed

#Possess
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_possess] run function cartographer_custom_enchantments:enchant_effects/possess

#Tempo Theft
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempo_1] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/mob
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempo_2] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/mob
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_tempo_3] run function cartographer_custom_enchantments:enchant_effects/tempo_theft/mob

#Explosive
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_explosive] at @s run function cartographer_custom_enchantments:enchant_effects/explosive

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


#Exposing - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_exposing_1] at @s run function cartographer_custom_enchantments:enchant_effects/exposing/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_exposing_2] at @s run function cartographer_custom_enchantments:enchant_effects/exposing/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_exposing_3] at @s run function cartographer_custom_enchantments:enchant_effects/exposing/ranged

#Possession - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_possession_1] at @s run function cartographer_custom_enchantments:enchant_effects/possession/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_possession_2] at @s run function cartographer_custom_enchantments:enchant_effects/possession/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_possession_3] at @s run function cartographer_custom_enchantments:enchant_effects/possession/ranged

#Fire Aspect - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_fire_aspect_1] at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect_ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_fire_aspect_2] at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect_ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_fire_aspect_3] at @s run function cartographer_custom_enchantments:enchant_effects/fire_aspect_ranged

#Frostbite - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_frostbite_1] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_frostbite_2] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_frostbite_3] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_frostbite_4] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_frostbite_5] at @s run function cartographer_custom_enchantments:enchant_effects/frostbite/ranged

#Stunning - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_1] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_2] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_3] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_4] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_stunning_5] at @s run function cartographer_custom_enchantments:enchant_effects/stunning/ranged

#Infection - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_infection_1] at @s run function cartographer_custom_enchantments:enchant_effects/infection/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_infection_2] at @s run function cartographer_custom_enchantments:enchant_effects/infection/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_infection_3] at @s run function cartographer_custom_enchantments:enchant_effects/infection/ranged

#Electrocute - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_electrocute_1] at @s run function cartographer_custom_enchantments:enchant_effects/electrocute/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_electrocute_2] at @s run function cartographer_custom_enchantments:enchant_effects/electrocute/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_electrocute_3] at @s run function cartographer_custom_enchantments:enchant_effects/electrocute/ranged

#Bleeding - Trident
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_bleeding_1] at @s run function cartographer_custom_enchantments:enchant_effects/bleeding/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_bleeding_2] at @s run function cartographer_custom_enchantments:enchant_effects/bleeding/ranged
execute if score $cu_en_ranged ca.enabler matches 1.. if entity @s[tag=is_bleeding_3] at @s run function cartographer_custom_enchantments:enchant_effects/bleeding/ranged

#Loyalty - Hits entity
execute if score $cu_en_ranged ca.enabler matches 1.. as @e[type=trident,tag=ca.loyalty] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/convert
execute if score $cu_en_ranged ca.enabler matches 1.. run tag @s remove is_loyalty

#Brittle Check. Check if the entity hurt was Brittle and it wasn't from the same hit that applied it (from Cauterize).
execute if score @s[tag=!cleanse_fire] ca.brittle_time matches 1.. as @s at @s run function cartographer_custom_enchantments:enchant_effects/cauterize/brittle_hurt

#Run the Arrow Hit Datapack Hook
function #minecraft:cartographer_events/player_hit_mob_arrow

#Run the Trident Hit Datapack Hook
function #minecraft:cartographer_events/player_hit_mob_trident 

#Reset All Scores I am Crying
scoreboard players set $bleed ca.var 0
scoreboard players set $electrode ca.var 0
scoreboard players set $expose ca.var 0
scoreboard players set $frost ca.var 0
scoreboard players set $infect ca.var 0
scoreboard players set $possess ca.var 0
scoreboard players set $flash ca.var 0
scoreboard players set $cauterize ca.var 0
scoreboard players set $explosive ca.var 0
scoreboard players set $vol_dmg ca.vol_dmg 0
scoreboard players set $tempo_theft ca.var 0
scoreboard players set $punch ca.var 0

scoreboard players set $current ca.var 0
scoreboard players set $ricochet ca.var 0
scoreboard players set $tempest ca.var 0
scoreboard players set $duelist ca.var 0
scoreboard players set $hunter ca.var 0
scoreboard players set $singe ca.var 0
scoreboard players set $frostbite ca.var 0
scoreboard players set $exposing ca.var 0
scoreboard players set $possession ca.var 0
scoreboard players set $stunning ca.var 0
scoreboard players set $infection ca.var 0
scoreboard players set $electrocute ca.var 0
scoreboard players set $bleeding ca.var 0
scoreboard players set $fire_aspect ca.var 0
scoreboard players set $cauterize ca.var 0