#Run On-Death Skills
data modify storage ca.death Data set value {}
data modify storage ca.death Data set from entity @s[type=item] Item.tag

#Duplicate Death Effect
execute if data storage ca.death Data.DuplicateDeath at @s run function cartographer_mob_abilities:passive/duplicate_explosion


#Parting Gift
execute if data storage ca.death Data.PartingGift at @s run function cartographer_mob_abilities:passive/parting_gift

#Corpse Crawler
execute if data storage ca.death Data.CorpseCrawler at @s run function cartographer_mob_abilities:passive/corpse_crawler/zombie
execute if data storage ca.death Data.CorpseCrawlerBee at @s run function cartographer_mob_abilities:passive/corpse_crawler/bee
execute if data storage ca.death Data.CorpseCrawlerDrowned at @s run function cartographer_mob_abilities:passive/corpse_crawler/drowned
execute if data storage ca.death Data.CorpseCrawlerHusk at @s run function cartographer_mob_abilities:passive/corpse_crawler/husk
execute if data storage ca.death Data.CorpseCrawlerPiglin at @s run function cartographer_mob_abilities:passive/corpse_crawler/piglin
execute if data storage ca.death Data.CorpseCrawlerZoglin at @s run function cartographer_mob_abilities:passive/corpse_crawler/zoglin
execute if data storage ca.death Data.CorpseCrawlerSpider at @s run function cartographer_mob_abilities:passive/corpse_crawler/spider

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

#Token Restore
#execute if data storage ca.death Data.ReturnLightToken as @a[scores={token_kill_check=1..}] at @s run tag @s add light_restore
#execute if data storage ca.death Data.ReturnLightToken as @a[scores={token_kill_check=1..}] at @s run function cartographer_mob_abilities:helper/token/return_death

#execute if data storage ca.death Data.ReturnLightToken run kill @s

#execute if data storage ca.death Data.ReturnHeavyToken as @a[scores={token_kill_check=1..}] at @s run tag @s add heavy_restore
#execute if data storage ca.death Data.ReturnHeavyToken as @a[scores={token_kill_check=1..}] at @s run function cartographer_mob_abilities:helper/token/return_death

#execute if data storage ca.death Data.ReturnHeavyToken run kill @s