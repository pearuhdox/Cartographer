playsound minecraft:entity.splash_potion.break hostile @a[distance=..16] ~ ~ ~ 2 1

summon area_effect_cloud ~ ~1 ~ {Tags:["ca.alchemist_effect"],Particle:"block air",ReapplicationDelay:0,Radius:0.4f,RadiusOnUse:-5f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0}

execute as @e[type=area_effect_cloud,tag=ca.alchemist_effect,limit=1,sort=nearest,distance=..1] at @s run function cartographer_mob_abilities:ability_traits/alchemist/copy