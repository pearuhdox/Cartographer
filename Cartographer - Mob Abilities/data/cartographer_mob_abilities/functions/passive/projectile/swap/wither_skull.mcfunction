#Runs the wither skull projectile passive
summon wither_skull ~ ~0.8 ~ {Air:0b,HasBeenShot:1b,LeftOwner:1b,Rotation:[0.0f,0.0f],Tags:["new_proj_replace","passive_wither_skull","passive_replaced_projectile"]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute as @e[tag=passive_wither_skull,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/apply_data_power

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds
playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 2 1.2

kill @s