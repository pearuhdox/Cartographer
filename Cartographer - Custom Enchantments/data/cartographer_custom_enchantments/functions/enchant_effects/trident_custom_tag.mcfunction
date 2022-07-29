#Add all the tags back to the trident.
execute if score $current ca.var matches 1 run tag @s add is_current

execute if score $ricochet ca.var matches 1 run tag @s add is_ricochet_1
execute if score $ricochet ca.var matches 2 run tag @s add is_ricochet_2
execute if score $ricochet ca.var matches 3 run tag @s add is_ricochet_3

execute if score $tempest ca.var matches 1 run tag @s add is_tempest_1
execute if score $tempest ca.var matches 2 run tag @s add is_tempest_2
execute if score $tempest ca.var matches 3 run tag @s add is_tempest_3
execute if score $tempest ca.var matches 4 run tag @s add is_tempest_4
execute if score $tempest ca.var matches 5 run tag @s add is_tempest_5

execute if score $duelist ca.var matches 1 run tag @s add is_duelist_1
execute if score $duelist ca.var matches 2 run tag @s add is_duelist_2
execute if score $duelist ca.var matches 3 run tag @s add is_duelist_3
execute if score $duelist ca.var matches 4 run tag @s add is_duelist_4
execute if score $duelist ca.var matches 5 run tag @s add is_duelist_5

execute if score $hunter ca.var matches 1 run tag @s add is_hunter_1
execute if score $hunter ca.var matches 2 run tag @s add is_hunter_2
execute if score $hunter ca.var matches 3 run tag @s add is_hunter_3
execute if score $hunter ca.var matches 4 run tag @s add is_hunter_4
execute if score $hunter ca.var matches 5 run tag @s add is_hunter_5

execute if score $singe ca.var matches 1 run tag @s add is_singe_1
execute if score $singe ca.var matches 2 run tag @s add is_singe_2
execute if score $singe ca.var matches 3 run tag @s add is_singe_3
execute if score $singe ca.var matches 4 run tag @s add is_singe_4
execute if score $singe ca.var matches 5 run tag @s add is_singe_5

#Frostbite Ranged Synergy
execute if score $frostbite ca.var matches 1 run tag @s add is_frostbite_1
execute if score $frostbite ca.var matches 2 run tag @s add is_frostbite_2
execute if score $frostbite ca.var matches 3 run tag @s add is_frostbite_3
execute if score $frostbite ca.var matches 4 run tag @s add is_frostbite_4
execute if score $frostbite ca.var matches 5 run tag @s add is_frostbite_5

#Exposing Ranged Synergy
execute if score $exposing ca.var matches 1 run tag @s add is_exposing_1
execute if score $exposing ca.var matches 2 run tag @s add is_exposing_2
execute if score $exposing ca.var matches 3 run tag @s add is_exposing_3

#Possession Ranged Synergy
execute if score $possession ca.var matches 1 run tag @s add is_possession_1
execute if score $possession ca.var matches 2 run tag @s add is_possession_2
execute if score $possession ca.var matches 3 run tag @s add is_possession_3

#Stunning Ranged Synergy
execute if score $stunning ca.var matches 1 run tag @s add is_stunning_1
execute if score $stunning ca.var matches 2 run tag @s add is_stunning_2
execute if score $stunning ca.var matches 3 run tag @s add is_stunning_3
execute if score $stunning ca.var matches 4 run tag @s add is_stunning_4
execute if score $stunning ca.var matches 5 run tag @s add is_stunning_5

#Infection Ranged Synergy
execute if score $infection ca.var matches 1 run tag @s add is_infection_1
execute if score $infection ca.var matches 2 run tag @s add is_infection_2
execute if score $infection ca.var matches 3 run tag @s add is_infection_3

#Electrocute Ranged Synergy
execute if score $electrocute ca.var matches 1 run tag @s add is_electrocute_1
execute if score $electrocute ca.var matches 2 run tag @s add is_electrocute_2
execute if score $electrocute ca.var matches 3 run tag @s add is_electrocute_3

#Bleeding Ranged Synergy
execute if score $bleeding ca.var matches 1 run tag @s add is_bleeding_1
execute if score $bleeding ca.var matches 2 run tag @s add is_bleeding_2
execute if score $bleeding ca.var matches 3 run tag @s add is_bleeding_3

#Fire Aspect Ranged Synergy
execute if score $fire_aspect ca.var matches 1 run tag @s add is_fire_aspect_1
execute if score $fire_aspect ca.var matches 2 run tag @s add is_fire_aspect_2
execute if score $fire_aspect ca.var matches 3 run tag @s add is_fire_aspect_3

#Cauterize Ranged Synergy
execute if score $cauterize ca.var matches 1 run tag @s add is_cauterize

#Loyalty Synergy
execute if score $loyalty ca.var matches 1 run tag @s add is_loyalty

#Run Trident Effect Dictionary
function #minecraft:cartographer_events/dict/trident