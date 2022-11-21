#Creates Lightning off an entirely different system
execute as 0000001f-00de-140d-0000-0000000276ef at @s as @a[limit=1,sort=nearest,distance=..16] at @s run function cartographer_mob_abilities:abilities/storm/place_x
execute as @e[type=area_effect_cloud,tag=ca.storm_lightning_cloud,tag=!setup,distance=..24,limit=1] at @s run function cartographer_mob_abilities:projectiles/data/lightning

#Return targeting entity
tp 0000001f-00de-140d-0000-0000000276ef 4206900 50 4206900