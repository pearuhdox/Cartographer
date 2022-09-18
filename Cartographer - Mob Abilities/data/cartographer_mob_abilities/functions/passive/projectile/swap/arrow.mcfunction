#Runs the wither skull projectile passive
summon arrow ~ ~1.2 ~ {damage:2.0d,Tags:["new_proj_replace","passive_arrow","passive_replaced_projectile"]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute if entity @s[type=minecraft:shulker_bullet] run function cartographer_mob_abilities:passive/projectile/helper/shulker_bullet_swap/get_motion_value

execute if entity @s[type=minecraft:arrow] run scoreboard players set $was_arrow ca.var 10
execute if entity @s[type=minecraft:trident] run scoreboard players set $was_arrow ca.var 10

execute as @e[tag=passive_arrow,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/apply_data_motion

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds
playsound minecraft:entity.skeleton.shoot hostile @a[distance=..20] ~ ~ ~ 1.5 1.2

kill @s