#Runs the potion projectile passive
summon potion ~ ~1 ~ {Motion:[0.0,0.0,0.0],Tags:["new_proj_replace","passive_potion","passive_replaced_projectile"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:mundane",CustomPotionColor:16777215,Enchantments:[{}]}}}

execute unless data entity @s power run data modify entity @e[tag=passive_potion,tag=new_proj_replace,limit=1,sort=nearest] Motion set from entity @s Motion
execute if data entity @s power run data modify entity @e[tag=passive_potion,tag=new_proj_replace,limit=1,sort=nearest] Motion set from entity @s power

data modify entity @e[tag=passive_potion,tag=new_proj_replace,limit=1,sort=nearest] Item.tag.CustomPotionEffects set from storage cartographer_mob_abilities:projectile data.effects
data modify entity @e[tag=passive_potion,tag=new_proj_replace,limit=1,sort=nearest] Item.tag.CustomPotionColor set from storage cartographer_mob_abilities:projectile data.color
data modify entity @e[tag=passive_potion,tag=new_proj_replace,limit=1,sort=nearest] Item.id set from storage cartographer_mob_abilities:projectile data.id

execute if data entity @s power run execute as @e[tag=passive_potion,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/modify_speed_motion
execute unless data entity @s power run execute as @e[tag=passive_potion,tag=new_proj_replace,limit=1,sort=nearest] run function cartographer_mob_abilities:passive/projectile/cut_potion_speed

tag @e[tag=passive_potion,tag=new_proj_replace,limit=1,sort=nearest] remove new_proj_replace

playsound minecraft:entity.skeleton.shoot hostile @a[distance=..20] ~ ~ ~ 1.5 1.2 1

kill @s