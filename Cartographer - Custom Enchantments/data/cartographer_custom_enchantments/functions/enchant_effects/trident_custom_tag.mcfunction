#Remove the tags on enemies that are up to twice the distance.
execute if entity @s[tag=current] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_current

execute if entity @s[tag=ricochet_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_ricochet_1
execute if entity @s[tag=ricochet_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_ricochet_2
execute if entity @s[tag=ricochet_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_ricochet_3

execute if entity @s[tag=tempest_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_tempest_1
execute if entity @s[tag=tempest_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_tempest_2
execute if entity @s[tag=tempest_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_tempest_3
execute if entity @s[tag=tempest_4] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_tempest_4
execute if entity @s[tag=tempest_5] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_tempest_5

execute if entity @s[tag=duelist_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_duelist_1
execute if entity @s[tag=duelist_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_duelist_2
execute if entity @s[tag=duelist_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_duelist_3
execute if entity @s[tag=duelist_4] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_duelist_4
execute if entity @s[tag=duelist_5] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_duelist_5

execute if entity @s[tag=hunter_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_hunter_1
execute if entity @s[tag=hunter_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_hunter_2
execute if entity @s[tag=hunter_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_hunter_3
execute if entity @s[tag=hunter_4] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_hunter_4
execute if entity @s[tag=hunter_5] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_hunter_5

#Frostbite Ranged Synergy
execute if entity @s[tag=frostbite_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_frostbite_1
execute if entity @s[tag=frostbite_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_frostbite_2
execute if entity @s[tag=frostbite_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_frostbite_3
execute if entity @s[tag=frostbite_4] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_frostbite_4
execute if entity @s[tag=frostbite_5] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_frostbite_5

#Committed Ranged Synergy
execute if entity @s[tag=committed_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_committed_1
execute if entity @s[tag=committed_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_committed_2
execute if entity @s[tag=committed_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_committed_3

#Stunning Ranged Synergy
execute if entity @s[tag=stunning_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_stunning_1
execute if entity @s[tag=stunning_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_stunning_2
execute if entity @s[tag=stunning_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_stunning_3
execute if entity @s[tag=stunning_4] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_stunning_4
execute if entity @s[tag=stunning_5] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_stunning_5

#Decay Ranged Synergy
execute if entity @s[tag=decay_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_decay_1
execute if entity @s[tag=decay_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_decay_2
execute if entity @s[tag=decay_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_decay_3

#Overload Ranged Synergy
execute if entity @s[tag=overload_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_overload_1
execute if entity @s[tag=overload_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_overload_2
execute if entity @s[tag=overload_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_overload_3

#Vicious Ranged Synergy
execute if entity @s[tag=vicious_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vicious_1
execute if entity @s[tag=vicious_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vicious_2
execute if entity @s[tag=vicious_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_vicious_3

#Fire Aspect Ranged Synergy
execute if entity @s[tag=fire_aspect_1] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_fire_aspect_1
execute if entity @s[tag=fire_aspect_2] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_fire_aspect_2
execute if entity @s[tag=fire_aspect_3] run tag @e[type=#cartographer_core:hostile,distance=..12] remove is_fire_aspect_3

#Add all the tags back to the trident.
execute if entity @s[tag=current] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_current

execute if entity @s[tag=ricochet_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_ricochet_1
execute if entity @s[tag=ricochet_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_ricochet_2
execute if entity @s[tag=ricochet_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_ricochet_3

execute if entity @s[tag=tempest_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_tempest_1
execute if entity @s[tag=tempest_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_tempest_2
execute if entity @s[tag=tempest_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_tempest_3
execute if entity @s[tag=tempest_4] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_tempest_4
execute if entity @s[tag=tempest_5] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_tempest_5

execute if entity @s[tag=duelist_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_duelist_1
execute if entity @s[tag=duelist_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_duelist_2
execute if entity @s[tag=duelist_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_duelist_3
execute if entity @s[tag=duelist_4] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_duelist_4
execute if entity @s[tag=duelist_5] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_duelist_5

execute if entity @s[tag=hunter_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_hunter_1
execute if entity @s[tag=hunter_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_hunter_2
execute if entity @s[tag=hunter_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_hunter_3
execute if entity @s[tag=hunter_4] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_hunter_4
execute if entity @s[tag=hunter_5] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_hunter_5


#Frostbite Ranged Synergy
execute if entity @s[tag=frostbite_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_frostbite_1
execute if entity @s[tag=frostbite_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_frostbite_2
execute if entity @s[tag=frostbite_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_frostbite_3
execute if entity @s[tag=frostbite_4] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_frostbite_4
execute if entity @s[tag=frostbite_5] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_frostbite_5

#Committed Ranged Synergy
execute if entity @s[tag=committed_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_committed_1
execute if entity @s[tag=committed_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_committed_2
execute if entity @s[tag=committed_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_committed_3

#Stunning Ranged Synergy
execute if entity @s[tag=stunning_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_stunning_1
execute if entity @s[tag=stunning_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_stunning_2
execute if entity @s[tag=stunning_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_stunning_3
execute if entity @s[tag=stunning_4] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_stunning_4
execute if entity @s[tag=stunning_5] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_stunning_5

#Decay Ranged Synergy
execute if entity @s[tag=decay_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_decay_1
execute if entity @s[tag=decay_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_decay_2
execute if entity @s[tag=decay_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_decay_3

#Overload Ranged Synergy
execute if entity @s[tag=overload_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_overload_1
execute if entity @s[tag=overload_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_overload_2
execute if entity @s[tag=overload_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_overload_3

#Vicious Ranged Synergy
execute if entity @s[tag=vicious_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vicious_1
execute if entity @s[tag=vicious_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vicious_2
execute if entity @s[tag=vicious_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_vicious_3

#Fire Aspect Ranged Synergy
execute if entity @s[tag=fire_aspect_1] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_fire_aspect_1
execute if entity @s[tag=fire_aspect_2] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_fire_aspect_2
execute if entity @s[tag=fire_aspect_3] run tag @e[type=#cartographer_core:hostile,distance=..6] add is_fire_aspect_3

scoreboard players add @s[type=trident,scores={helper_lifetime=1..},nbt=!{inGround:1b}] helper_lifetime 1