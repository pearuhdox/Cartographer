data modify storage cartographer_mob_abilities:summoner data set value {}
data modify storage cartographer_mob_abilities:summoner data set from entity @s HandItems[1]

execute unless score @s ca.summon_id matches 1.. run function cartographer_mob_abilities:passive/summoner/find_type

scoreboard players set $swap ca.summon_id 0
scoreboard players operation $swap ca.summon_id = @s ca.summon_id

scoreboard players set $launch ca.summon_id 0
execute if entity @s[tag=ca.launch] run scoreboard players set $launch ca.summon_id 1

execute as @e[type=vex,limit=3,sort=nearest,distance=..4] at @s run function cartographer_mob_abilities:passive/summoner/replace

execute as @e[tag=ca.summoned,tag=!summon_checked,limit=3,sort=nearest,distance=..4] at @s run function cartographer_mob_abilities:passive/summoner/data