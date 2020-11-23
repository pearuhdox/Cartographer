#Loop all abilities that need to be played each tick. This includes Laser (active), Hybrid Fighter (NYI), all On-Death Skills, and helper functions for Hookshot.
#This also sets mob tags properly for active skill mobs and on death mobs.


#Laser
execute as @e[type=#cartographer_core:hostile,tag=laser,scores={cooldown=0},tag=tokened] at @s run execute if entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:charge/laser

#Laser Animation Cancel
execute as @e[type=#cartographer_core:hostile,tag=laser,tag=tokened,scores={cooldown=0}] at @s run execute unless entity @a[gamemode=survival,distance=..20] run function cartographer_mob_abilities:token/cancel_ability

#Hookshot Helper
execute as @e[type=area_effect_cloud,tag=hook] at @s run function cartographer_mob_abilities:abilities/hook

#Magic Missile Projectile
execute as @e[type=armor_stand,tag=magic_missile_projectile] at @s run function cartographer_mob_abilities:abilities/magic_missile_projectile

#Fireball Projectile
execute as @e[type=armor_stand,tag=fireball_projectile] at @s run function cartographer_mob_abilities:abilities/fireball_projectile

#Trap Projectile
execute as @e[type=armor_stand,tag=trap_projectile] at @s run function cartographer_mob_abilities:abilities/trapper_projectile

#Fix Tags
execute as @e[type=#cartographer_core:hostile,tag=has_active,tag=!ability_checked,tag=!duplicate] at @s run function cartographer_mob_abilities:passive/ability_fix

execute as @e[type=#cartographer_core:hostile,tag=parting_gift,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=corpse_crawler,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=corpse_crawler_bee,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=corpse_crawler_drowned,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=corpse_crawler_husk,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=corpse_crawler_piglin,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=corpse_crawler_zoglin,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=exalted,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=pyromania,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=spectral,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=brutal_blood,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=relentless_blood,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=devious_blood,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix
execute as @e[type=#cartographer_core:hostile,tag=sacrificial_blood,tag=!death_checked] at @s run function cartographer_mob_abilities:passive/death_fix

#Particle for Wither Storm Skulls
execute as @e[type=wither_skull,tag=wither_storm_skull] at @s run particle minecraft:large_smoke ~ ~ ~ 0.3 0.2 0.3 0.1 1 normal

#Run On-Death Effects
execute as @e[type=item,nbt={Item:{tag:{DeathEffect:1}}}] at @s run function cartographer_mob_abilities:loop/tick/run_death_effects


schedule function cartographer_mob_abilities:loop/tick/base 1t