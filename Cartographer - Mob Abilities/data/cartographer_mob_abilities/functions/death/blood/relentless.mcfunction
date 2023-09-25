execute as @e[type=#bb:hostile,distance=..16,limit=5,sort=nearest] at @s run function cartographer_mob_abilities:death/blood/relentless_branch

execute unless entity @s[type=creeper,tag=ca.deathbomb] run kill @s