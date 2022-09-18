#Runs the fire charge projectile passive
summon small_fireball ~ ~0.8 ~ {HasVisualFire:1b,Tags:["new_proj_replace","passive_fire_charge","passive_replaced_projectile"]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute if entity @s[type=minecraft:shulker_bullet] run function cartographer_mob_abilities:passive/projectile/helper/shulker_bullet_swap/get_motion_value_power

execute as @e[tag=passive_fire_charge,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/apply_data_power

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds
playsound minecraft:item.firecharge.use hostile @a[distance=..20] ~ ~ ~ 2 1.4

kill @s