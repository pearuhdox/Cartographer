execute if score $laser_bla ca.var matches 1 run tag @s add ca.blazing
execute if score $laser_gla ca.var matches 1 run tag @s add ca.glacial
execute if score $laser_ove ca.var matches 1 run tag @s add ca.overloading
execute if score $laser_ven ca.var matches 1 run tag @s add ca.venemous
execute if score $laser_zep ca.var matches 1 run tag @s add ca.zephyrous
execute if score $laser_hor ca.var matches 1 run tag @s add ca.horrifying
execute if score $laser_vol ca.var matches 1 run tag @s add ca.volatile

execute positioned as @e[type=#bb:hostile,tag=ca.laser,limit=1,distance=..2] run tp @s ~ ~ ~ facing entity @p feet
scoreboard players set @s ca.raycast 32
execute positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/laser/raycast
