#Runs the wither skull projectile passive
summon dragon_fireball ~ ~2.3 ~ {Tags:["new_proj_replace","passive_dragon_fireball","passive_replaced_projectile"]}

execute if data entity @s power run data modify entity @e[tag=passive_dragon_fireball,tag=new_proj_replace,limit=1,sort=nearest] power set from entity @s power
execute unless data entity @s power run data modify entity @e[tag=passive_dragon_fireball,tag=new_proj_replace,limit=1,sort=nearest] power set from entity @s Motion
data modify entity @e[tag=passive_dragon_fireball,tag=new_proj_replace,limit=1,sort=nearest] Owner set from entity @s Owner

execute unless data entity @s power run execute as @e[tag=passive_dragon_fireball,tag=new_proj_replace,limit=1,sort=nearest] at @s run function cartographer_mob_abilities:passive/projectile/modify_speed

tag @e[tag=passive_dragon_fireball,tag=new_proj_replace,limit=1,sort=nearest] remove new_proj_replace

playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..20] ~ ~ ~ 1 1.6

kill @s