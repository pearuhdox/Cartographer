data modify storage cartographer_mob_abilities:summoner data set value {}
data modify storage cartographer_mob_abilities:summoner data set from storage ca.death Data.Entity[0]

function cartographer_core:helper/randomize

function cartographer_mob_abilities:passive/corpse_crawler/find_type

#Summon 2-3 Corpse Crawlers
execute if score @s random matches 60.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:sheep",ActiveEffects:[{Id:14,Duration:20000000,Amplifier:0b,}],DeathLootTable:"no_lol",Silent:1b,NoAI:1b,Health:8f,Sheared:1b,Tags:["corpse_crawler_egg_hitbox"],Attributes:[{Name:"generic.max_health",Base:8}]}],Tags:["corpse_crawler_egg"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1976618890,-808302411,-1136373453,1202005755],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzdmODQ0YmZlYTI1NDI5ZDQ1ZTFmY2Y5NmVmNjY1NGRmYWFhNmZjOTAyZGMxYjZiNjhjMGFiYzEzNDM0NDcifX19"}]}}}}]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:sheep",ActiveEffects:[{Id:14,Duration:20000000,Amplifier:0b,}],DeathLootTable:"no_lol",Silent:1b,NoAI:1b,Health:8f,Sheared:1b,Tags:["corpse_crawler_egg_hitbox"],Attributes:[{Name:"generic.max_health",Base:8}]}],Tags:["corpse_crawler_egg"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1976618890,-808302411,-1136373453,1202005755],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzdmODQ0YmZlYTI1NDI5ZDQ1ZTFmY2Y5NmVmNjY1NGRmYWFhNmZjOTAyZGMxYjZiNjhjMGFiYzEzNDM0NDcifX19"}]}}}}]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:sheep",ActiveEffects:[{Id:14,Duration:20000000,Amplifier:0b,}],DeathLootTable:"no_lol",Silent:1b,NoAI:1b,Health:8f,Sheared:1b,Tags:["corpse_crawler_egg_hitbox"],Attributes:[{Name:"generic.max_health",Base:8}]}],Tags:["corpse_crawler_egg"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1976618890,-808302411,-1136373453,1202005755],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzdmODQ0YmZlYTI1NDI5ZDQ1ZTFmY2Y5NmVmNjY1NGRmYWFhNmZjOTAyZGMxYjZiNjhjMGFiYzEzNDM0NDcifX19"}]}}}}]}


execute as @e[type=armor_stand,tag=corpse_crawler_egg,tag=!ca.spread,limit=3,distance=..2,sort=nearest] at @s run function cartographer_mob_abilities:passive/corpse_crawler/spread

playsound minecraft:entity.hoglin.converted_to_zombified hostile @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:block minecraft:lime_terracotta ~ ~1 ~ 0.2 0.5 0.2 0.1 50 normal

kill @s