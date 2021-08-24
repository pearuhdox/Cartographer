#Runs the fire charge projectile passive
summon small_fireball ~ ~0.8 ~ {HasVisualFire:1b,Tags:["new_proj_replace","passive_fire_charge","passive_replaced_projectile"]}

execute if data entity @s power run data modify entity @e[tag=passive_fire_charge,tag=new_proj_replace,limit=1,sort=nearest] power set from entity @s power
execute unless data entity @s power run data modify entity @e[tag=passive_fire_charge,tag=new_proj_replace,limit=1,sort=nearest] power set from entity @s Motion
data modify entity @e[tag=passive_fire_charge,tag=new_proj_replace,limit=1,sort=nearest] Owner set from entity @s Owner

execute unless data entity @s power run execute as @e[tag=passive_fire_charge,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/modify_speed

tag @e[tag=passive_firecharge,tag=new_proj_replace,limit=1,sort=nearest] remove new_proj_replace

playsound minecraft:item.firecharge.use hostile @a[distance=..20] ~ ~ ~ 2 1.4

kill @s