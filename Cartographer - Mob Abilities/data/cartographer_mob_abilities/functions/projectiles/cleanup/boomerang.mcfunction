scoreboard players add @s ca.lifetime 1

function cartographer_mob_abilities:projectiles/behavior/boomerang/travel

execute if score @s ca.lifetime matches 16 run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,tag=ca.sh_boomerang,limit=1,sort=nearest] eyes

execute if score @s ca.lifetime matches 32.. run kill @s