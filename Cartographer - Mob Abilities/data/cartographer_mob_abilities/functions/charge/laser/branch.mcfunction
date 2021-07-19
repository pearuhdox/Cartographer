execute positioned as @e[type=#cartographer_core:hostile,tag=laser,limit=1,distance=..2] run tp @s ~ ~ ~ facing entity @p feet
scoreboard players set @s ca.raycast 32
execute positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/laser/raycast
