#Runs the grenade projectile passive
summon armor_stand ~ ~1.5 ~ {ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["grenadier_projectile","passive_grenade","new_proj_replace"],Pose:{LeftArm:[310f,90f,0f],RightArm:[310f,270f,0f],Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:'minecraft:player_head',Count:1b,tag:{SkullOwner:{Id:[I;-1794540134,-610646290,-1585350842,353223711],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWIyMGZmMTczYmQxN2IyYzRmMmViMjFmM2M0YjQzODQxYTE0YjMxZGZiZmQzNTRhM2JlYzgyNjNhZjU2MmIifX19'}]}}}}]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute if entity @s[type=minecraft:shulker_bullet] run function cartographer_mob_abilities:passive/projectile/helper/shulker_bullet_swap/get_motion_value_power

execute as @e[type=armor_stand,tag=passive_grenade,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/apply_data_motion

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

playsound minecraft:entity.skeleton.shoot hostile @a[distance=..16] ~ ~ ~ 1.5 0.5
playsound minecraft:item.firecharge.use hostile @a[distance=..20] ~ ~ ~ 1.25 0.75
playsound minecraft:entity.firework_rocket.launch hostile @a[distance=..20] ~ ~ ~ 1 1.25

kill @s