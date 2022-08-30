#Runs the wither skull projectile passive
summon shulker_bullet ~ ~0.8 ~ {Steps:1,Tags:["new_proj_replace","passive_shulker_bullet","passive_replaced_projectile"]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute as @e[tag=passive_shulker_bullet,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/apply_shulker

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds
playsound minecraft:entity.shulker.shoot hostile @a[distance=..20] ~ ~ ~ 1.5 1.4

kill @s