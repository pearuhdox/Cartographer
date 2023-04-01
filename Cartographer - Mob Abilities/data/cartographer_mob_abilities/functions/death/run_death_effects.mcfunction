data modify storage cartographer_mob_abilities:death_effects data set value {}
data modify storage cartographer_mob_abilities:death_effects data.HandItems set from entity @s data.HandItems
data modify storage cartographer_mob_abilities:death_effects data.Tags set from entity @s Tags
data modify storage cartographer_mob_abilities:death_effects data.Offhand set from storage cartographer_mob_abilities:death_effects data.HandItems[1]

#Move Down a bit so that death location is better placed.
execute if block ~ ~-0.5 ~ #cartographer_core:can_raycast run tp @s ~ ~-1 ~

#Run On-Death Skills

#Duplicate Death Effect - 1.19.4 Updated
execute if entity @s[tag=ca.duplicate] at @s run function cartographer_mob_abilities:passive/duplicate_explosion


#Parting Gift - 1.19.4 Updated
execute if entity @s[tag=ca.parting_gift] at @s positioned ~ ~-0.3 ~ run function cartographer_mob_abilities:death/parting_gift/drop

#Corpse Crawler - 1.19.4 Updated
execute if entity @s[tag=ca.corpse_crawler] at @s run function cartographer_mob_abilities:death/corpse_crawler/master


#Exalted - 1.19.4 Updated
execute if entity @s[tag=ca.exalted] at @s run function cartographer_mob_abilities:death/exalted

#Hazardous
execute if entity @s[tag=ca.hazard] at @s run function cartographer_mob_abilities:death/hazard

#Spectral - 1.19.4 Updated
execute if entity @s[tag=ca.spectral] at @s run function cartographer_mob_abilities:death/spectral

#Brutal Blood - 1.19.4 Updated
execute if entity @s[tag=ca.brutal_blood] at @s run function cartographer_mob_abilities:death/blood/brutal

#Relentless Blood - 1.19.4 Updated
execute if entity @s[tag=ca.relentless_blood] at @s run function cartographer_mob_abilities:death/blood/relentless

#Devious Blood - 1.19.4 Updated
execute if entity @s[tag=ca.devious_blood] at @s run function cartographer_mob_abilities:death/blood/devious

#Sacrificial Blood - 1.19.4 Updated
execute if entity @s[tag=ca.sacrificial_blood] at @s run function cartographer_mob_abilities:death/blood/sacrificial

#Run the Death Events tag to check for non Cartographer added events.
function #minecraft:cartographer/events/death_ability_proc

kill @s