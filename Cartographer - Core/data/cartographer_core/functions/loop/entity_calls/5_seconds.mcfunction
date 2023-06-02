#Run Mimic Effects
#function cartographer_mimics:loop/5_second/entities

#Run Mob Abilities Effects
execute if score $mob_abilities ca.installed matches 1.. if entity @s[type=#bb:hostile] run function cartographer_mob_abilities:loop/5_second/entities