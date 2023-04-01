execute if score @s ca.summon_id matches 0 run summon zombie ~ ~1 ~ {Motion:[0.0,0.3,0.0],Health:15f,IsBaby:1b,CustomName:'{"text":"Corpse Crawler"}',Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.movement_speed",Base:0.2}]}

execute if score @s ca.summon_id matches 1.. run function cartographer_mob_abilities:death/corpse_crawler/summon/spawn

particle minecraft:block minecraft:lime_terracotta ~ ~1 ~ 0.2 0.2 0.2 0.1 30 normal

playsound minecraft:entity.wither.break_block hostile @a[distance=..10] ~ ~ ~ 0.2 2
playsound minecraft:entity.zombie.infect hostile @a[distance=..10] ~ ~ ~ 1 1.5

kill @e[type=sheep,tag=corpse_crawler_egg_hitbox,sort=nearest,limit=1,distance=..1]
kill @s