#Add all the tags back to the trident.
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.current=1}] run tag @s add is_current

execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.ricochet=1}] run tag @s add is_ricochet_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.ricochet=2}] run tag @s add is_ricochet_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.ricochet=3}] run tag @s add is_ricochet_3

execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.tempest=1}] run tag @s add is_tempest_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.tempest=2}] run tag @s add is_tempest_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.tempest=3}] run tag @s add is_tempest_3
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.tempest=4}] run tag @s add is_tempest_4
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.tempest=5}] run tag @s add is_tempest_5

execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.duelist=1}] run tag @s add is_duelist_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.duelist=2}] run tag @s add is_duelist_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.duelist=3}] run tag @s add is_duelist_3
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.duelist=4}] run tag @s add is_duelist_4
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.duelist=5}] run tag @s add is_duelist_5

execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.hunter=1}] run tag @s add is_hunter_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.hunter=2}] run tag @s add is_hunter_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.hunter=3}] run tag @s add is_hunter_3
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.hunter=4}] run tag @s add is_hunter_4
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.hunter=5}] run tag @s add is_hunter_5

execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.singe=1}] run tag @s add is_singe_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.singe=2}] run tag @s add is_singe_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.singe=3}] run tag @s add is_singe_3
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.singe=4}] run tag @s add is_singe_4
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.singe=5}] run tag @s add is_singe_5

#Frostbite Ranged Synergy
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.frostbite=1}] run tag @s add is_frostbite_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.frostbite=2}] run tag @s add is_frostbite_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.frostbite=3}] run tag @s add is_frostbite_3
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.frostbite=4}] run tag @s add is_frostbite_4
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.frostbite=5}] run tag @s add is_frostbite_5

#Committed Ranged Synergy
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.committed=1}] run tag @s add is_committed_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.committed=2}] run tag @s add is_committed_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.committed=3}] run tag @s add is_committed_3

#Stunning Ranged Synergy
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.stunning=1}] run tag @s add is_stunning_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.stunning=2}] run tag @s add is_stunning_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.stunning=3}] run tag @s add is_stunning_3
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.stunning=4}] run tag @s add is_stunning_4
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.stunning=5}] run tag @s add is_stunning_5

#Decay Ranged Synergy
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.decay=1}] run tag @s add is_decay_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.decay=2}] run tag @s add is_decay_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.decay=3}] run tag @s add is_decay_3

#Overload Ranged Synergy
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.overload=1}] run tag @s add is_overload_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.overload=2}] run tag @s add is_overload_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.overload=3}] run tag @s add is_overload_3

#Vicious Ranged Synergy
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.vicious=1}] run tag @s add is_vicious_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.vicious=2}] run tag @s add is_vicious_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.vicious=3}] run tag @s add is_vicious_3

#Fire Aspect Ranged Synergy
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.fire_aspect=1}] run tag @s add is_fire_aspect_1
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.fire_aspect=2}] run tag @s add is_fire_aspect_2
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.fire_aspect=3}] run tag @s add is_fire_aspect_3

#Cauterize Ranged Synergy
execute if entity @e[type=trident,limit=1,sort=nearest,scores={ca.cauterize=1}] run tag @s add is_cauterize