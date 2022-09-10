scoreboard players set $run_corpse_@e ca.summon_id 0

execute if score @s ca.lifetime matches 2.. run tp @s ~ ~ ~ ~5 ~
execute if score @s ca.lifetime matches 21.. run tp @s ~ ~ ~ ~30 ~

execute if score @s[tag=corpse_crawler_egg] ca.lifetime matches 61.. run function cartographer_mob_abilities:passive/corpse_crawler/summon/branch

#The data correction is called elsewhere in a different function

execute unless entity @e[distance=..0.5,type=sheep,tag=corpse_crawler_egg_hitbox] run function cartographer_mob_abilities:passive/corpse_crawler/egg/despawn

scoreboard players add @s ca.lifetime 1