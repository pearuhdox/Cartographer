execute if score @s ca.lifetime matches 2.. run tp @s ~ ~ ~ ~5 ~
execute if score @s ca.lifetime matches 21.. run tp @s ~ ~ ~ ~30 ~

execute if score @s[tag=corpse_crawler_egg_bee] ca.lifetime matches 41.. run summon bee ~ ~1 ~ {Motion:[0.0,0.3,0.0],Health:5f,AngerTime:32767,CustomName:'{"text":"Corpse Crawler"}',Attributes:[{Name:"generic.max_health",Base:5},{Name:"minecraft:generic.attack_damage",Base:1}]}
execute if score @s[tag=corpse_crawler_egg_spider] ca.lifetime matches 41.. run summon cave_spider ~ ~1 ~ {Motion:[0.0,0.3,0.0],Health:5f,CustomName:'{"text":"Corpse Crawler"}',Attributes:[{Name:"generic.max_health",Base:5},{Name:"minecraft:generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.25}]}

execute if score @s[tag=corpse_crawler_egg_drowned] ca.lifetime matches 41.. run summon drowned ~ ~1 ~ {Motion:[0.0,0.3,0.0],Health:15f,IsBaby:1b,CustomName:'{"text":"Corpse Crawler"}',Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.movement_speed",Base:0.2}]}
execute if score @s[tag=corpse_crawler_egg_husk] ca.lifetime matches 41.. run summon husk ~ ~1 ~ {Motion:[0.0,0.3,0.0],Health:15f,IsBaby:1b,CustomName:'{"text":"Corpse Crawler"}',Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.movement_speed",Base:0.2}]}
execute if score @s[tag=corpse_crawler_egg_piglin] ca.lifetime matches 41.. run summon zombified_piglin ~ ~1 ~ {Motion:[0.0,0.3,0.0],Health:15f,IsBaby:1,AngerTime:32767,Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.attack_damage",Base:3}]}
execute if score @s[tag=corpse_crawler_egg_zombie] ca.lifetime matches 41.. run summon zombie ~ ~1 ~ {Motion:[0.0,0.3,0.0],Health:15f,IsBaby:1b,CustomName:'{"text":"Corpse Crawler"}',Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.movement_speed",Base:0.2}]}

execute if score @s[tag=corpse_crawler_egg_zoglin] ca.lifetime matches 41.. run summon zoglin ~ ~1 ~ {Motion:[0.0,0.3,0.0],Health:20f,HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:4}],IsBaby:1b}

execute if score @s[tag=corpse_crawler_egg_bee] ca.lifetime matches 41.. run particle minecraft:block minecraft:honey_block ~ ~1 ~ 0.2 0.2 0.2 0.1 30 normal
execute if score @s[tag=corpse_crawler_egg_drowned] ca.lifetime matches 41.. run particle minecraft:block minecraft:kelp ~ ~1 ~ 0.2 0.2 0.2 0.1 30 normal
execute if score @s[tag=corpse_crawler_egg_husk] ca.lifetime matches 41.. run particle minecraft:block minecraft:sand ~ ~1 ~ 0.2 0.2 0.2 0.1 30 normal
execute if score @s[tag=corpse_crawler_egg_piglin] ca.lifetime matches 41.. run particle minecraft:block minecraft:netherrack ~ ~1 ~ 0.2 0.2 0.2 0.1 30 normal
execute if score @s[tag=corpse_crawler_egg_zoglin] ca.lifetime matches 41.. run particle minecraft:block minecraft:nether_wart_block ~ ~1 ~ 0.2 0.2 0.2 0.1 30 normal
execute if score @s[tag=corpse_crawler_egg_zombie] ca.lifetime matches 41.. run particle minecraft:block minecraft:lime_terracotta ~ ~1 ~ 0.2 0.2 0.2 0.1 30 normal
execute if score @s[tag=corpse_crawler_egg_spider] ca.lifetime matches 41.. run particle minecraft:block minecraft:cobweb ~ ~1 ~ 0.2 0.2 0.2 0.1 30 normal

execute if score @s[tag=corpse_crawler_egg] ca.lifetime matches 41.. run playsound minecraft:entity.wither.break_block hostile @a[distance=..10] ~ ~ ~ 0.2 2
execute if score @s[tag=corpse_crawler_egg] ca.lifetime matches 41.. run playsound minecraft:entity.zombie.infect hostile @a[distance=..10] ~ ~ ~ 1 1.5

execute if score @s ca.lifetime matches 41.. run kill @e[type=sheep,tag=corpse_crawler_egg_hitbox,sort=nearest,limit=1,distance=..1]
execute if score @s ca.lifetime matches 41.. run kill @s

execute unless entity @e[distance=..1,type=sheep,tag=corpse_crawler_egg_hitbox] run function cartographer_mob_abilities:passive/corpse_crawler/despawn


scoreboard players add @s ca.lifetime 1