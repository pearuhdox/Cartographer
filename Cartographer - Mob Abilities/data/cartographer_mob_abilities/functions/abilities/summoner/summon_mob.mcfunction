function cartographer_mob_abilities:abilities/summoner/create_mob

execute as @e[tag=ca.summoned,tag=!summon_checked,limit=1,sort=nearest,distance=..1.5] at @s run function cartographer_mob_abilities:passive/summoner/data