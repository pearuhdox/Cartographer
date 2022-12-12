execute if score $laser_bla ca.var matches 1 run tag @s add ca.blazing
execute if score $laser_gla ca.var matches 1 run tag @s add ca.glacial
execute if score $laser_ove ca.var matches 1 run tag @s add ca.overloading
execute if score $laser_ven ca.var matches 1 run tag @s add ca.venemous
execute if score $laser_zep ca.var matches 1 run tag @s add ca.zephyrous
execute if score $laser_hor ca.var matches 1 run tag @s add ca.horrifying
execute if score $laser_vol ca.var matches 1 run tag @s add ca.volatile
execute if score $laser_web ca.var matches 1 run tag @s add ca.webbing
execute if score $laser_cur ca.var matches 1 run tag @s add ca.cursing

scoreboard players set @s ca.raycast 32
execute facing entity @p feet positioned ^ ^1 ^ run function cartographer_mob_abilities:animations/laser/raycast
