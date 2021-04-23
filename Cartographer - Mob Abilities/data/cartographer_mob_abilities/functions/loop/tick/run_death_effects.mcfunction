#Run On-Death Skills
data modify storage ca.death_effect Data set value {}
data modify storage ca.death Data set from entity @s[type=item] Item.tag


#Parting Gift
execute if data storage ca.death Data.PartingGift at @s run function cartographer_mob_abilities:passive/parting_gift

#Corpse Crawler
execute if data storage ca.death Data.CorpseCrawler at @s run function cartographer_mob_abilities:passive/corpse_crawler
execute if data storage ca.death Data.CorpseCrawlerBee at @s run function cartographer_mob_abilities:passive/corpse_crawler_bee
execute if data storage ca.death Data.CorpseCrawlerDrowned at @s run function cartographer_mob_abilities:passive/corpse_crawler_drowned
execute if data storage ca.death Data.CorpseCrawlerHusk at @s run function cartographer_mob_abilities:passive/corpse_crawler_husk
execute if data storage ca.death Data.CorpseCrawlerPiglin at @s run function cartographer_mob_abilities:passive/corpse_crawler_piglin
execute if data storage ca.death Data.CorpseCrawlerZoglin at @s run function cartographer_mob_abilities:passive/corpse_crawler_zoglin

#Exalted
execute if data storage ca.death Data.Exalted at @s run function cartographer_mob_abilities:passive/exalted

#Pyromania
execute if data storage ca.death Data.Pyromania at @s run function cartographer_mob_abilities:passive/pyromania

#Spectral
execute if data storage ca.death Data.Spectral at @s run function cartographer_mob_abilities:passive/spectral

#Brutal Blood
execute if data storage ca.death Data.BrutalBlood at @s run function cartographer_mob_abilities:passive/brutal_blood

#Relentless Blood
execute if data storage ca.death Data.RelentlessBlood at @s run function cartographer_mob_abilities:passive/relentless_blood

#Devious Blood
execute if data storage ca.death Data.DeviousBlood at @s run function cartographer_mob_abilities:passive/devious_blood

#Sacrificial Blood
execute if data storage ca.death Data.SacrificialBlood at @s run function cartographer_mob_abilities:passive/sacrificial_blood