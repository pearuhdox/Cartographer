#Runs the fireball projectile passive
summon fireball ~ ~0.8 ~ {HasVisualFire:1b,ExplosionPower:1b,Tags:["new_proj_replace","passive_fireball","passive_replaced_projectile"]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute as @e[tag=passive_fireball,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/apply_data_power

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds
playsound minecraft:entity.ghast.shoot hostile @a[distance=..20] ~ ~ ~ 2 0.7

kill @s