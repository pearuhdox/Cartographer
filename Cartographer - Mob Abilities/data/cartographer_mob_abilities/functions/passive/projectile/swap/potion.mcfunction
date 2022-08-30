#Runs the potion projectile passive
summon potion ~ ~1 ~ {Motion:[0.0,0.0,0.0],Tags:["new_proj_replace","passive_potion","passive_replaced_projectile"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:mundane",CustomPotionColor:16777215,Enchantments:[{}]}}}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute as @e[tag=passive_potion,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/apply_data_motion

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds
playsound minecraft:entity.skeleton.shoot hostile @a[distance=..20] ~ ~ ~ 1.5 1.2 1

kill @s