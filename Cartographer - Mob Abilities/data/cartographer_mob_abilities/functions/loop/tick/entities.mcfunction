#Magic Missile Projectile
execute as @s[type=armor_stand,tag=magic_missile_projectile] at @s run function cartographer_mob_abilities:abilities/magic_missile/projectile

#Fireball Projectile
execute as @s[type=armor_stand,tag=fireball_projectile] at @s run function cartographer_mob_abilities:abilities/fireball/projectile

#Trap Projectile
execute as @s[type=armor_stand,tag=trap_projectile] at @s run function cartographer_mob_abilities:abilities/trapper_projectile

#Hook Projectile
execute as @s[type=armor_stand,tag=hook_projectile] at @s run function cartographer_mob_abilities:abilities/hookshot/projectile
scoreboard players add @s[type=armor_stand,tag=hook_projectile] helper_lifetime 1

#Particle for Wither Storm Skulls
execute as @s[type=wither_skull,tag=wither_storm_skull] at @s run particle minecraft:large_smoke ~ ~ ~ 0.3 0.2 0.3 0.1 1 normal

#Run On-Death Effects
execute as @s[type=item,nbt={Item:{tag:{DeathEffect:1}}}] at @s run function cartographer_mob_abilities:loop/tick/run_death_effects

#Run Invulnerable Notices
execute as @s[type=#cartographer_core:hostile,nbt={HurtTime:9s,ActiveEffects:[{Id:11b,Amplifier:4b}]}] at @s run function cartographer_mob_abilities:passive/invulnerable

#Run Movement Disable and Melee Damage Disable
execute as @s[scores={mob_move_dis=2..}] run attribute @s minecraft:generic.movement_speed modifier add 00000031-4919-1315-2250-000000000000 "mob_disable_move" -1 multiply
execute as @s[scores={mob_atk_dis=2..}] run attribute @s minecraft:generic.attack_damage modifier add 00000031-4919-120-11-000000000000 "mob_disable_atk" -1 multiply

execute as @s[scores={mob_move_dis=1}] run attribute @s minecraft:generic.movement_speed modifier remove 00000031-4919-1315-2250-000000000000
execute as @s[scores={mob_atk_dis=1}] run attribute @s minecraft:generic.attack_damage modifier remove 00000031-4919-120-11-000000000000

scoreboard players remove @s[scores={mob_move_dis=1..}] mob_move_dis 1
scoreboard players remove @s[scores={mob_atk_dis=1..}] mob_atk_dis 1

execute as @s[scores={mob_move_red=2..}] run attribute @s minecraft:generic.movement_speed modifier add 00000031-1845-1315-2250-000000000000 "mob_reduce_move" -0.5 multiply
execute as @s[scores={mob_atk_red=2..}] run attribute @s minecraft:generic.attack_damage modifier add 00000031-1845-120-11-000000000000 "mob_reduce_atk" -0.5 multiply

execute as @s[scores={mob_move_red=1}] run attribute @s minecraft:generic.movement_speed modifier remove 00000031-1845-1315-2250-000000000000
execute as @s[scores={mob_atk_red=1}] run attribute @s minecraft:generic.attack_damage modifier remove 00000031-1845-120-11-000000000000

scoreboard players remove @s[scores={mob_move_red=1..}] mob_move_red 1
scoreboard players remove @s[scores={mob_atk_red=1..}] mob_atk_red 1

execute as @s[scores={mob_sturdy=2..}] run attribute @s minecraft:generic.knockback_resistance modifier add 00000031-1315-1819-2017-000000000000 "mob_sturdy" 100 add
execute as @s[scores={mob_sturdy=1}] run attribute @s minecraft:generic.knockback_resistance modifier remove 00000031-1315-1819-2017-000000000000

scoreboard players remove @s[scores={mob_sturdy=1..}] mob_sturdy 1

#Run Smash Land Effect
execute unless block ~ ~-6 ~ #cartographer_core:can_raycast if entity @s[tag=airborne_10] run function cartographer_mob_abilities:abilities/smash_place_particle
execute unless block ~ ~-4 ~ #cartographer_core:can_raycast if entity @s[tag=airborne_10] run function cartographer_mob_abilities:abilities/smash_place_particle
execute unless block ~ ~-2 ~ #cartographer_core:can_raycast if entity @s[tag=airborne_10] run function cartographer_mob_abilities:abilities/smash_place_particle
execute unless block ~ ~-1 ~ #cartographer_core:can_raycast if entity @s[tag=airborne_10] run function cartographer_mob_abilities:abilities/smash

execute if entity @s[tag=airborne_9] run tag @s add airborne_10
execute if entity @s[tag=airborne_8] run tag @s add airborne_9
execute if entity @s[tag=airborne_7] run tag @s add airborne_8
execute if entity @s[tag=airborne_6] run tag @s add airborne_7
execute if entity @s[tag=airborne_5] run tag @s add airborne_6
execute if entity @s[tag=airborne_4] run tag @s add airborne_5
execute if entity @s[tag=airborne_3] run tag @s add airborne_4
execute if entity @s[tag=airborne_2] run tag @s add airborne_3
execute if entity @s[tag=airborne] run tag @s add airborne_2

#Run Sweep Warning
execute if entity @s[tag=sweep,tag=tokened,scores={cooldown=0}] run particle angry_villager ~ ~1.5 ~ 0 0 0 0 1 normal

#Laser
execute if entity @s[tag=laser,scores={cooldown=0},tag=tokened] if entity @a[gamemode=survival,distance=..32] run function cartographer_mob_abilities:charge/laser

#Laser Animation Cancel
execute if entity @s[tag=laser,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=survival,distance=..32] run function cartographer_mob_abilities:helper/token/cancel_ability

#Ender-Port Test
execute if entity @s[tag=enderport] if entity @e[type=#cartographer_core:projectile,distance=..5,nbt=!{inGround:1b}] run function cartographer_mob_abilities:passive/enderport

#Wither Storm Blasts
execute if entity @s[type=armor_stand,tag=wither_blast] run function cartographer_mob_abilities:abilities/wither_storm_blasts

#Setup Exalted
execute if entity @s[tag=exalted,tag=!setup] run function cartographer_mob_abilities:passive/exalted_setup

#Exalted Souls
execute if entity @s[tag=exalted_soul_stand] run function cartographer_mob_abilities:passive/exalted_soul

#Exalted Weapons
execute if entity @s[type=armor_stand,tag=exalted_weapon] run tp @s ~ ~ ~ ~3 ~

#Corpse Crawler Eggs
execute if entity @s[type=armor_stand,tag=corpse_crawler_egg,tag=pushed] run function cartographer_mob_abilities:passive/corpse_crawler_egg

#Pyromania Placeholders
execute if entity @s[type=armor_stand,tag=pyro_effect] at @s positioned ~ ~0.7 ~ run function cartographer_mob_abilities:passive/pyromania_effect

#Get an enemy with Reflect's health.
execute as @s[tag=reflect_melee] run execute store result score @s reflect_past run data get entity @s Health
execute as @s[tag=reflect_ranged] run execute store result score @s reflect_past run data get entity @s Health

#Set Reflect enemies to have reflect shields in offhand.
execute as @s[tag=reflect_melee,tag=!reflect_setup] at @s run data modify entity @s HandItems[1] set value {id:"minecraft:shield",Count:1b,tag:{display:{Name:'{"text":"Reflector","color":"aqua","italic":false}'},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],BlockEntityTag:{Base:3,Patterns:[{Color:0,Pattern:"dls"},{Color:0,Pattern:"gru"},{Color:0,Pattern:"gra"},{Color:8,Pattern:"bo"}]}}}
execute as @s[tag=reflect_ranged,tag=!reflect_setup] at @s run data modify entity @s HandItems[1] set value {id:"minecraft:shield",Count:1b,tag:{display:{Name:'{"text":"Reflector","color":"aqua","italic":false}'},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],BlockEntityTag:{Base:3,Patterns:[{Color:0,Pattern:"dls"},{Color:0,Pattern:"gru"},{Color:0,Pattern:"gra"},{Color:8,Pattern:"bo"}]}}}

tag @s[tag=reflect_melee,tag=!reflect_setup] add reflect_setup
tag @s[tag=reflect_ranged,tag=!reflect_setup] add reflect_setup

#Reflect Enemies Create Particles when players are detected "in ranges"
execute as @s[tag=reflect_melee] at @s if entity @a[distance=..7] run particle cloud ^ ^1 ^1 0.3 0.5 0.3 0.05 3 normal 
execute as @s[tag=reflect_ranged] at @s unless entity @a[distance=..7] run particle cloud ^ ^1 ^1 0.3 0.5 0.3 0.05 3 normal 

#Augment Buff Particles
execute if entity @s[scores={augment_time=1..}] run particle minecraft:dust 1 0 0 0.7 ~ ~1 ~ 0.3 0.5 0.3 0 2 normal
execute if entity @s[scores={augment_time=1..}] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.05 1 normal

#Fix Tags
execute if entity @s[tag=has_active,tag=!ability_checked,tag=!duplicate] run function cartographer_mob_abilities:passive/ability_fix

execute if entity @s[type=#cartographer_core:hostile,tag=has_active,tag=!los_checked,scores={cooldown=0}] run scoreboard players set $do_los flag 1