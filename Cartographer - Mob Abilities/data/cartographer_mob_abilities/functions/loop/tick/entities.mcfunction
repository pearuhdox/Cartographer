#Laser
execute if entity @s[tag=laser,scores={cooldown=0},tag=tokened] if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/laser

#Laser Animation Cancel
execute if entity @s[tag=laser,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:token/cancel_ability

#Ender-Port Test
execute if entity @s[tag=enderport] if entity @e[type=#cartographer_core:projectile,distance=..5,nbt=!{inGround:1b}] run function cartographer_mob_abilities:passive/enderport

#Fix Tags
execute if entity @s[tag=has_active,tag=!ability_checked,tag=!duplicate] run function cartographer_mob_abilities:passive/ability_fix

execute if entity @s[tag=parting_gift,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=corpse_crawler,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=corpse_crawler_bee,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=corpse_crawler_drowned,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=corpse_crawler_husk,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=corpse_crawler_piglin,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=corpse_crawler_zoglin,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=exalted,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=pyromania,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=spectral,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=brutal_blood,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=relentless_blood,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=devious_blood,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix
execute if entity @s[tag=sacrificial_blood,tag=!death_checked] run function cartographer_mob_abilities:passive/death_fix