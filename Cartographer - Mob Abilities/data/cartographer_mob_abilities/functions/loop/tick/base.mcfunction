#Loop all abilities that need to be played each tick. This includes Laser (active), Hybrid Fighter (NYI), all On-Death Skills, and helper functions for Hookshot.
#This also sets mob tags properly for active skill mobs and on death mobs.


#Laser
execute if entity @e[tag=laser,scores={cooldown=0},tag=tokened] run execute as @e[tag=laser,scores={cooldown=0},tag=tokened] at @s run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/laser

#Laser Animation Cancel
execute if entity @e[tag=laser,tag=tokened,scores={cooldown=0}] run execute as @e[tag=laser,tag=tokened,scores={cooldown=0}] at @s run execute unless entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:token/cancel_ability

#Hookshot Helper
execute if entity @e[tag=hook,type=area_effect_cloud] run execute as @e[tag=hook,type=area_effect_cloud] at @s run function cartographer_mob_abilities:abilities/hook

#Magic Missile Projectile
execute if entity @e[tag=magic_missile_projectile,type=armor_stand] run execute as @e[tag=magic_missile_projectile,type=armor_stand] at @s run function cartographer_mob_abilities:abilities/magic_missile_projectile

#Fireball Projectile
execute if entity @e[tag=fireball_projectile,type=armor_stand] run execute as @e[tag=fireball_projectile,type=armor_stand] at @s run function cartographer_mob_abilities:abilities/fireball_projectile

#Trap Projectile
execute if entity @e[tag=trap_projectile,type=armor_stand] run execute as @e[tag=trap_projectile,type=armor_stand] at @s run function cartographer_mob_abilities:abilities/trapper_projectile

#Fix Tags
execute if entity @e[tag=has_active,tag=!ability_checked,tag=!duplicate] run execute as @e[tag=has_active,tag=!ability_checked,tag=!duplicate] at @s run function cartographer_mob_abilities:passive/ability_fix

execute if entity @e[tag=parting_gift,tag=!death_checked] run execute as @e[tag=parting_gift,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=corpse_crawler,tag=!death_checked] run execute as @e[tag=corpse_crawler,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=corpse_crawler_bee,tag=!death_checked] run execute as @e[tag=corpse_crawler_bee,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=corpse_crawler_drowned,tag=!death_checked] run execute as @e[tag=corpse_crawler_drowned,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=corpse_crawler_drowned,tag=!death_checked] run execute as @e[tag=corpse_crawler_drowned,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=corpse_crawler_husk,tag=!death_checked] run execute as @e[tag=corpse_crawler_husk,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=corpse_crawler_piglin,tag=!death_checked] run execute as @e[tag=corpse_crawler_piglin,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=corpse_crawler_zoglin,tag=!death_checked] run execute as @e[tag=corpse_crawler_zoglin,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=exalted,tag=!death_checked] run execute as @e[tag=exalted,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=pyromania,tag=!death_checked] run execute as @e[tag=pyromania,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=spectral,tag=!death_checked] run execute as @e[tag=spectral,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=brutal_blood,tag=!death_checked] run execute as @e[tag=brutal_blood,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=relentless_blood,tag=!death_checked] run execute as @e[tag=relentless_blood,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=devious_blood,tag=!death_checked] run execute as @e[tag=devious_blood,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=sacrificial_blood,tag=!death_checked] run execute as @e[tag=sacrificial_blood,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix

#Particle for Wither Storm Skulls
execute if entity @e[tag=wither_storm_skull] run execute as @e[tag=wither_storm_skull] at @s run particle minecraft:large_smoke ~ ~ ~ 0.3 0.2 0.3 0.1 1 normal

#Run On-Death Skills

#Parting Gift
execute if entity @e[type=item,nbt={Item:{tag:{PartingGift:1}}}] run execute as @e[type=item,nbt={Item:{tag:{PartingGift:1}}}] at @s run function cartographer_mob_abilities:passive/parting_gift

#Corpse Crawler
execute if entity @e[type=item,nbt={Item:{tag:{CorpseCrawler:1}}}] run execute as @e[type=item,nbt={Item:{tag:{CorpseCrawler:1}}}] at @s run function cartographer_mob_abilities:passive/corpse_crawler
execute if entity @e[type=item,nbt={Item:{tag:{CorpseCrawlerBee:1}}}] run execute as @e[type=item,nbt={Item:{tag:{CorpseCrawlerBee:1}}}] at @s run function cartographer_mob_abilities:passive/corpse_crawler_bee
execute if entity @e[type=item,nbt={Item:{tag:{CorpseCrawlerDrowned:1}}}] run execute as @e[type=item,nbt={Item:{tag:{CorpseCrawlerDrowned:1}}}] at @s run function cartographer_mob_abilities:passive/corpse_crawler_drowned
execute if entity @e[type=item,nbt={Item:{tag:{CorpseCrawlerHusk:1}}}] run execute as @e[type=item,nbt={Item:{tag:{CorpseCrawlerHusk:1}}}] at @s run function cartographer_mob_abilities:passive/corpse_crawler_husk
execute if entity @e[type=item,nbt={Item:{tag:{CorpseCrawlerPiglin:1}}}] run execute as @e[type=item,nbt={Item:{tag:{CorpseCrawlerPiglin:1}}}] at @s run function cartographer_mob_abilities:passive/corpse_crawler_piglin
execute if entity @e[type=item,nbt={Item:{tag:{CorpseCrawlerZoglin:1}}}] run execute as @e[type=item,nbt={Item:{tag:{CorpseCrawlerZoglin:1}}}] at @s run function cartographer_mob_abilities:passive/corpse_crawler_zoglin

#Exalted
execute if entity @e[type=item,nbt={Item:{tag:{Exalted:1}}}] run execute as @e[type=item,nbt={Item:{tag:{Exalted:1}}}] at @s run function cartographer_mob_abilities:passive/exalted

#Pyromania
execute if entity @e[type=item,nbt={Item:{tag:{Pyromania:1}}}] run execute as @e[type=item,nbt={Item:{tag:{Pyromania:1}}}] at @s run function cartographer_mob_abilities:passive/pyromania

#Spectral
execute if entity @e[type=item,nbt={Item:{tag:{Spectral:1}}}] run execute as @e[type=item,nbt={Item:{tag:{Spectral:1}}}] at @s run function cartographer_mob_abilities:passive/spectral

#Brutal Blood
execute if entity @e[type=item,nbt={Item:{tag:{BrutalBlood:1}}}] run execute as @e[type=item,nbt={Item:{tag:{BrutalBlood:1}}}] at @s run function cartographer_mob_abilities:passive/brutal_blood

#Relentless Blood
execute if entity @e[type=item,nbt={Item:{tag:{RelentlessBlood:1}}}] run execute as @e[type=item,nbt={Item:{tag:{RelentlessBlood:1}}}] at @s run function cartographer_mob_abilities:passive/relentless_blood

#Devious Blood
execute if entity @e[type=item,nbt={Item:{tag:{DeviousBlood:1}}}] run execute as @e[type=item,nbt={Item:{tag:{DeviousBlood:1}}}] at @s run function cartographer_mob_abilities:passive/devious_blood

#Sacrificial Blood
execute if entity @e[type=item,nbt={Item:{tag:{SacrificialBlood:1}}}] run execute as @e[type=item,nbt={Item:{tag:{SacrificialBlood:1}}}] at @s run function cartographer_mob_abilities:passive/sacrificial_blood


schedule function cartographer_mob_abilities:loop/tick/base 1t