#Runs the needle projectile passive
summon armor_stand ~ ~-0.5 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Pose:{LeftArm:[320f,90f,0f],RightArm:[320f,270f,0f]},Tags:["ca.rift_projectile","passive_rift","new_proj_replace"]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute if entity @s[type=minecraft:shulker_bullet] run function cartographer_mob_abilities:passive/projectile/helper/shulker_bullet_swap/get_motion_value_power

execute as @e[type=armor_stand,tag=passive_rift,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/set_rift_rotation

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

playsound minecraft:entity.iron_golem.damage hostile @a[distance=..16] ~ ~ ~ 0.7 1
playsound minecraft:entity.iron_golem.damage hostile @a[distance=..16] ~ ~ ~ 0.7 0.75
playsound minecraft:entity.iron_golem.damage hostile @a[distance=..16] ~ ~ ~ 0.7 0.5

kill @s