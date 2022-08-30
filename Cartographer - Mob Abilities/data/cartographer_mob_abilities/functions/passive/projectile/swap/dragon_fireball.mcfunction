#Runs the wither skull projectile passive
summon dragon_fireball ~ ~0.8 ~ {Tags:["new_proj_replace","passive_dragon_fireball","passive_replaced_projectile"]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute as @e[tag=passive_dragon_fireball,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/apply_data_power

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..20] ~ ~ ~ 1 1.6

kill @s