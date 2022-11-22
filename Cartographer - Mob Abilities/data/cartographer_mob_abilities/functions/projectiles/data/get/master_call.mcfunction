#Alchemist Data Saving
execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:passive/projectile/helper/save_alchemist

#For Each Entity With Specific Data Get Said Data
execute if entity @s[tag=ca.shoot_arrow] run function cartographer_mob_abilities:projectiles/data/get/arrow

execute if entity @s[tag=ca.shoot_potion] run function cartographer_mob_abilities:projectiles/data/get/potion

#Save Tags Here
function cartographer_mob_abilities:projectiles/data/get/all_traits

#Lightning Specific Data And Tag Population
execute if entity @s[tag=ca.shoot_lightning] run data modify storage cartographer_mob_abilities:storm_tags Tags set value []
execute if entity @s[tag=ca.shoot_lightning] run function cartographer_mob_abilities:abilities/storm/populate_tags

#Set Projectile Owner
data modify storage cartographer_mob_abilities:projectiles DataTemplate.Owner set from entity @s UUID