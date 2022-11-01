#Magic Missile Projectile
execute as @s[tag=magic_missile_projectile] at @s run function cartographer_mob_abilities:abilities/magic_missile/projectile

#Fireball Projectile
execute as @s[tag=pulse_shot_projectile] at @s run function cartographer_mob_abilities:abilities/quickdraw/pulse_shot/projectile/travel

#Trap Projectile
execute as @s[tag=trap_projectile] at @s run function cartographer_mob_abilities:abilities/trapper/projectile

#Hook Projectile
execute as @s[tag=hook_projectile] at @s run function cartographer_mob_abilities:abilities/hookshot/projectile
scoreboard players add @s[tag=hook_projectile] ca.lifetime 1

#Wither Storm Blasts
execute if entity @s[tag=wither_blast] run function cartographer_mob_abilities:abilities/wither_storm/blasts

#Exalted Souls
execute if entity @s[tag=exalted_soul_stand] run function cartographer_mob_abilities:passive/exalted/soul

#Exalted Weapons
execute if entity @s[tag=exalted_weapon] run tp @s ~ ~ ~ ~3 ~

#Corpse Crawler Eggs
execute if entity @s[tag=corpse_crawler_egg,tag=pushed] run function cartographer_mob_abilities:passive/corpse_crawler/egg/tick

#Pyromania Placeholders
execute if entity @s[tag=pyro_effect] at @s positioned ~ ~0.7 ~ run function cartographer_mob_abilities:passive/pyromania_effect

#Run Needle Projectiles
execute if entity @s[tag=needle_projectile] run function cartographer_mob_abilities:charge/needle/projectile/travel

#Run Grenadier Projectiles
execute if entity @s[tag=grenadier_projectile] run function cartographer_mob_abilities:charge/grenadier/projectile/tick

#Run Parting Gift
execute if score $parting_gift_active ca.var matches 1.. if entity @s[tag=ca.parting_gift_drop] run function cartographer_mob_abilities:passive/parting_gift/tick

#Run Aftershock time reduction
execute if entity @s[scores={ca.aftershock=1..}] run function cartographer_mob_abilities:ability_traits/aftershock/windup