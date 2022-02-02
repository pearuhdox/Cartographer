#Magic Missile Projectile
execute as @s[tag=magic_missile_projectile] at @s run function cartographer_mob_abilities:abilities/magic_missile/projectile

#Fireball Projectile
execute as @s[tag=fireball_projectile] at @s run function cartographer_mob_abilities:abilities/fireball/projectile

#Trap Projectile
execute as @s[tag=trap_projectile] at @s run function cartographer_mob_abilities:abilities/trapper/projectile

#Hook Projectile
execute as @s[tag=hook_projectile] at @s run function cartographer_mob_abilities:abilities/hookshot/projectile
scoreboard players add @s[tag=hook_projectile] ca.lifetime 1

#Wither Storm Blasts
execute if entity @s[tag=wither_blast] run function cartographer_mob_abilities:abilities/wither_storm/blasts

#Exalted Souls
execute if entity @s[tag=exalted_soul_stand] run function cartographer_mob_abilities:passive/exalted_soul

#Exalted Weapons
execute if entity @s[tag=exalted_weapon] run tp @s ~ ~ ~ ~3 ~

#Corpse Crawler Eggs
execute if entity @s[tag=corpse_crawler_egg,tag=pushed] run function cartographer_mob_abilities:passive/corpse_crawler/egg

#Pyromania Placeholders
execute if entity @s[tag=pyro_effect] at @s positioned ~ ~0.7 ~ run function cartographer_mob_abilities:passive/pyromania_effect

#Run Needle Projectiles
execute if entity @s[tag=needle_projectile] run function cartographer_mob_abilities:charge/needle/projectile/travel

#Run Grenadier Projectiles
execute if entity @s[tag=grenadier_projectile] if entity @s[nbt={OnGround:1b}] run function cartographer_mob_abilities:charge/grenadier/projectile/attack