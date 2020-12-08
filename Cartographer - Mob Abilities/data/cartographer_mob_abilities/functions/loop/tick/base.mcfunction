#Loop all abilities that need to be played each tick. This includes Laser (active), Hybrid Fighter (NYI), all On-Death Skills, and helper functions for Hookshot.
#This also sets mob tags properly for active skill mobs and on death mobs.

execute as @e[type=#cartographer_core:hostile] at @s run function cartographer_mob_abilities:loop/tick/entities

#Hookshot Helper
execute as @e[type=area_effect_cloud,tag=hook] at @s run function cartographer_mob_abilities:abilities/hook

#Magic Missile Projectile
execute as @e[type=armor_stand,tag=magic_missile_projectile] at @s run function cartographer_mob_abilities:abilities/magic_missile_projectile

#Fireball Projectile
execute as @e[type=armor_stand,tag=fireball_projectile] at @s run function cartographer_mob_abilities:abilities/fireball_projectile

#Trap Projectile
execute as @e[type=armor_stand,tag=trap_projectile] at @s run function cartographer_mob_abilities:abilities/trapper_projectile

#Particle for Wither Storm Skulls
execute as @e[type=wither_skull,tag=wither_storm_skull] at @s run particle minecraft:large_smoke ~ ~ ~ 0.3 0.2 0.3 0.1 1 normal

#Run On-Death Effects
execute as @e[type=item,nbt={Item:{tag:{DeathEffect:1}}}] at @s run function cartographer_mob_abilities:loop/tick/run_death_effects


schedule function cartographer_mob_abilities:loop/tick/base 1t