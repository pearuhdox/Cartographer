#Add all the tags back to the trident.
execute if score $current ca.var matches 1 run tag @s add is_current

execute if score $ricochet ca.var matches 1 run tag @s add is_ricochet_1
execute if score $ricochet ca.var matches 2 run tag @s add is_ricochet_2
execute if score $ricochet ca.var matches 3 run tag @s add is_ricochet_3

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

#Executioner Ranged Synergy
execute if score $executioner ca.var matches 1 run tag @s add is_executioner_1
execute if score $executioner ca.var matches 2 run tag @s add is_executioner_2
execute if score $executioner ca.var matches 3 run tag @s add is_executioner_3

#Fire Aspect Ranged Synergy
execute if score $fire_aspect ca.var matches 1 run tag @s add is_fire_aspect_1
execute if score $fire_aspect ca.var matches 2 run tag @s add is_fire_aspect_2
execute if score $fire_aspect ca.var matches 3 run tag @s add is_fire_aspect_3

#Cauterize Ranged Synergy
execute if score $cauterize ca.var matches 1 run tag @s add is_cauterize

#Loyalty Synergy
execute if score $loyalty ca.var matches 1 run tag @s add is_loyalty

#Wavedash
execute if score $wavedash ca.var matches 1 run tag @s add is_wavedash

#Run Trident Effect Dictionary
function #minecraft:cartographer_events/dict/trident