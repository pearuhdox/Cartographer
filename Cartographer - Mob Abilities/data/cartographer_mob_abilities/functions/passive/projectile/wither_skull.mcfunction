#Runs the wither skull projectile passive
summon wither_skull ~ ~0.8 ~ {Air:0b,HasBeenShot:1b,LeftOwner:1b,Rotation:[0.0f,0.0f],Tags:["new_proj_replace","passive_wither_skull","passive_replaced_projectile"]}

execute if data entity @s power run data modify entity @e[tag=passive_wither_skull,tag=new_proj_replace,limit=1,sort=nearest] power set from entity @s power
execute unless data entity @s power run data modify entity @e[tag=passive_wither_skull,tag=new_proj_replace,limit=1,sort=nearest] power set from entity @s Motion
data modify entity @e[tag=passive_wither_skull,tag=new_proj_replace,limit=1,sort=nearest] Owner set from entity @s Owner

execute unless data entity @s power run execute as @e[tag=passive_wither_skull,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/modify_speed

tag @e[tag=passive_wither_skull,tag=new_proj_replace,limit=1,sort=nearest] remove new_proj_replace

playsound minecraft:entity.wither.shoot hostile @a[distance=..20] ~ ~ ~ 2 1.2

kill @s