#Run On-Death Skills
data modify storage ca.death Data set value {}
data modify storage ca.death Data set from entity @s[type=item] Item.tag

#Duplicate Death Effect
execute if data storage ca.death Data.DuplicateDeath at @s run function cartographer_mob_abilities:passive/duplicate_explosion


#Parting Gift
execute if data storage ca.death Data.PartingGift at @s run function cartographer_mob_abilities:passive/parting_gift/drop

#Corpse Crawler
execute if data storage ca.death Data.CorpseCrawler at @s run function cartographer_mob_abilities:passive/corpse_crawler/master


#Exalted
execute if data storage ca.death Data.Exalted at @s run function cartographer_mob_abilities:passive/exalted

#Pyromania
execute if data storage ca.death Data.Pyromania at @s run function cartographer_mob_abilities:passive/pyromania

#Spectral
execute if data storage ca.death Data.Spectral at @s run function cartographer_mob_abilities:passive/spectral

#Brutal Blood
execute if data storage ca.death Data.BrutalBlood at @s run function cartographer_mob_abilities:passive/blood/brutal

#Relentless Blood
execute if data storage ca.death Data.RelentlessBlood at @s run function cartographer_mob_abilities:passive/blood/relentless

#Devious Blood
execute if data storage ca.death Data.DeviousBlood at @s run function cartographer_mob_abilities:passive/blood/devious

#Sacrificial Blood
execute if data storage ca.death Data.SacrificialBlood at @s run function cartographer_mob_abilities:passive/blood/sacrificial

#Run the Death Events tag to check for non Cartographer added events.
function #minecraft:cartographer/events/death_ability_proc

kill @s