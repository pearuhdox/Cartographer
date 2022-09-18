#Runs the grenade projectile passive
summon armor_stand ~ ~1.5 ~ {NoGravity:0b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Pose:{LeftArm:[310f,90f,0f],RightArm:[310f,270f,0f],Head:[180f,0f,0f]},Tags:["trap_projectile","checked","passive_trap","new_proj_replace"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute if entity @s[type=minecraft:shulker_bullet] run function cartographer_mob_abilities:passive/projectile/helper/shulker_bullet_swap/get_motion_value_power

execute as @e[type=armor_stand,tag=passive_trap,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/apply_data_motion

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.anvil.land hostile @a[distance=..16] ~ ~ ~ 1 2

kill @s