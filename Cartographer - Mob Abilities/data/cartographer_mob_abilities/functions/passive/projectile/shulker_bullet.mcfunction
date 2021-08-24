#Runs the wither skull projectile passive
summon shulker_bullet ~ ~0.8 ~ {Steps:2,Tags:["new_proj_replace","passive_shulker_bullet","passive_replaced_projectile"]}

data modify entity @e[tag=passive_shulker_bullet,tag=new_proj_replace,limit=1,sort=nearest] power set from entity @s Motion
data modify entity @e[tag=passive_shulker_bullet,tag=new_proj_replace,limit=1,sort=nearest] Owner set from entity @s Owner
data modify entity @e[tag=passive_shulker_bullet,tag=new_proj_replace,limit=1,sort=nearest] Target set from entity @p UUID

tag @e[tag=passive_shulker_bullet,tag=new_proj_replace,limit=1,sort=nearest] remove new_proj_replace

playsound minecraft:entity.shulker.shoot hostile @a[distance=..20] ~ ~ ~ 1.5 1.4

kill @s