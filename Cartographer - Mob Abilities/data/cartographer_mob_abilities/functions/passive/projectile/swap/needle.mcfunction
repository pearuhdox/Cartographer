#Runs the needle projectile passive
summon armor_stand ~ ~1.2 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Pose:{LeftArm:[320f,90f,0f],RightArm:[320f,270f,0f]},Tags:["needle_projectile","passive_needle","new_proj_replace"]}

function cartographer_mob_abilities:passive/projectile/helper/reset_get_data

execute if entity @s[type=minecraft:shulker_bullet] run function cartographer_mob_abilities:passive/projectile/helper/shulker_bullet_swap/get_motion_value_power

execute as @e[type=armor_stand,tag=passive_needle,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/helper/set_needle_rotation

function cartographer_mob_abilities:passive/projectile/helper/remove_other_sounds

kill @s