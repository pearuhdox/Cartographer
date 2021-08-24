#Runs the fireball projectile passive
summon pufferfish ~ ~0.8 ~ {Air:0,DeathLootTable:"no_lol",Health:2f,PuffState:2,Tags:["new_proj_replace","passive_pufferfish","passive_replaced_projectile"],CustomName:'{"text":"Projectile Pufferfish"}',Attributes:[{Name:generic.max_health,Base:2}]}

data modify entity @e[tag=passive_pufferfish,tag=new_proj_replace,limit=1,sort=nearest] Motion set from entity @s Motion
data modify entity @e[tag=passive_pufferfish,tag=new_proj_replace,limit=1,sort=nearest] PuffState set from entity @s damage

tag @e[tag=passive_pufferfish,tag=new_proj_replace,limit=1,sort=nearest] remove new_proj_replace

playsound minecraft:entity.puffer_fish.blow_out hostile @a[distance=..20] ~ ~ ~ 2 0.75

kill @s