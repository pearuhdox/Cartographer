execute as @e[type=#bb:hostile,distance=..16] at @s run function cartographer_mob_abilities:death/blood/brutal_branch

execute unless entity @s[type=creeper,tag=ca.deathbomb] run kill @s