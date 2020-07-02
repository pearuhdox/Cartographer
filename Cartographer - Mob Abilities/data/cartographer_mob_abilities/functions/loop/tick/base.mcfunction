#Loop all abilities that need to be played each tick. This includes Laser (active), Hybrid Fighter (NYI), all On-Death Skills, and helper functions for Hookshot.
#This also sets mob tags properly for active skill mobs and on death mobs.


#Laser
execute if entity @e[tag=laser,scores={cooldown=0}] run execute as @e[tag=laser,scores={cooldown=0}] at @s run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/laser


#Hookshot Helper
execute if entity @e[tag=hook,type=area_effect_cloud] run execute as @e[tag=hook,type=area_effect_cloud] at @s run function cartographer_mob_abilities:abilities/hook

#Magic Missile Projectile
execute if entity @e[tag=magic_missile_projectile,type=armor_stand] run execute as @e[tag=magic_missile_projectile,type=armor_stand] at @s run function cartographer_mob_abilities:abilities/magic_missile_projectile

#Fix Tags
execute if entity @e[tag=has_active,tag=!ability_checked] run execute as @e[tag=has_active,tag=!ability_checked] at @s run function cartographer_mob_abilities:passive/ability_fix

execute if entity @e[tag=parting_gift,tag=!death_checked] run execute as @e[tag=parting_gift,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=corpse_crawler,tag=!death_checked] run execute as @e[tag=corpse_crawler,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=exalted,tag=!death_checked] run execute as @e[tag=exalted,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute if entity @e[tag=pyromania,tag=!death_checked] run execute as @e[tag=pyromania,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix



#Run On-Death Skills

#Parting Gift
execute if entity @e[type=item,nbt={Item:{tag:{PartingGift:1}}}] run execute as @e[type=item,nbt={Item:{tag:{PartingGift:1}}}] at @s run function cartographer_mob_abilities:passive/parting_gift

#Corpse Crawler
execute if entity @e[type=item,nbt={Item:{tag:{CorpseCrawler:1}}}] run execute as @e[type=item,nbt={Item:{tag:{CorpseCrawler:1}}}] at @s run function cartographer_mob_abilities:passive/corpse_crawler

#Exalted
execute if entity @e[type=item,nbt={Item:{tag:{Exalted:1}}}] run execute as @e[type=item,nbt={Item:{tag:{Exalted:1}}}] at @s run function cartographer_mob_abilities:passive/exalted

#Exalted
execute if entity @e[type=item,nbt={Item:{tag:{Pyromania:1}}}] run execute as @e[type=item,nbt={Item:{tag:{Pyromania:1}}}] at @s run function cartographer_mob_abilities:passive/pyromania

#TODO: Add Pyromania

schedule function cartographer_mob_abilities:loop/tick/base 1t