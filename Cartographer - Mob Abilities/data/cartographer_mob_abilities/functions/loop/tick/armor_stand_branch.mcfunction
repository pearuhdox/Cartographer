#Sniper Shot Projectile
execute as @s[tag=magic_missile_projectile] at @s run function cartographer_mob_abilities:projectiles/behavior/magic_missile/projectile

#Trap Projectile
execute as @s[tag=trap_projectile] at @s run function cartographer_mob_abilities:projectiles/behavior/trap/projectile

#Hook Projectile
execute as @s[tag=hook_projectile] at @s run function cartographer_mob_abilities:abilities/hookshot/projectile
scoreboard players add @s[tag=hook_projectile] ca.lifetime 1

#Haunting Shade
execute if entity @s[tag=ca.haunting_shade] run function cartographer_mob_abilities:abilities/haunt/shade/tick

#Exalted Souls
execute if entity @s[tag=exalted_soul_stand] run function cartographer_mob_abilities:death/exalted/soul

#Exalted Weapons
execute if entity @s[tag=exalted_weapon] run tp @s ~ ~ ~ ~3 ~

#Corpse Crawler Eggs
execute if entity @s[tag=corpse_crawler_egg,tag=pushed] run function cartographer_mob_abilities:death/corpse_crawler/egg/tick

#Run Needle Projectiles
execute if entity @s[tag=needle_projectile] run function cartographer_mob_abilities:projectiles/behavior/needle/travel

#Run Boomerang Projectiles
execute if entity @s[tag=boomerang_projectile] run function cartographer_mob_abilities:projectiles/behavior/boomerang/travel

#Run Rift "Projectiles"
execute if entity @s[type=armor_stand,tag=ca.rift_projectile] as @s at @s run function cartographer_mob_abilities:projectiles/behavior/rift/mod_check

#Run Grenadier Projectiles
execute if entity @s[tag=grenade_projectile] run function cartographer_mob_abilities:projectiles/behavior/grenade/tick

#Run Parting Gift
execute if score $parting_gift_active ca.var matches 1.. if entity @s[tag=ca.parting_gift_drop] run function cartographer_mob_abilities:death/parting_gift/tick

#Run Aftershock time reduction
execute if entity @s[scores={ca.aftershock=1..}] run function cartographer_mob_abilities:ability_traits/aftershock/windup