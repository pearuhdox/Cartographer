execute if score $laser_bla ca.var matches 1 run tag @s add ca.blazing
execute if score $laser_gla ca.var matches 1 run tag @s add ca.glacial
execute if score $laser_ove ca.var matches 1 run tag @s add ca.overloading
execute if score $laser_ven ca.var matches 1 run tag @s add ca.venemous
execute if score $laser_zep ca.var matches 1 run tag @s add ca.zephyrous
execute if score $laser_hor ca.var matches 1 run tag @s add ca.horrifying
execute if score $laser_vol ca.var matches 1 run tag @s add ca.volatile
execute if score $laser_web ca.var matches 1 run tag @s add ca.webbing
execute if score $laser_cur ca.var matches 1 run tag @s add ca.cursing

execute if score $laser_beam ca.var matches 1 run tag @s add ca.beam

scoreboard players set @s ca.raycast 64

execute if score @s ability_charge matches 1..2 as @s at @s anchored eyes facing entity @p eyes run tp @s ^ ^ ^ ~ ~
execute if score @s ability_charge matches 11..70 as @s at @s anchored eyes facing entity @p feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~
execute if score @s ability_charge matches 71..110 as @s at @s anchored eyes facing entity @p feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^6 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~
execute if score @s ability_charge matches 111.. as @s at @s anchored eyes facing entity @p feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^3 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~

execute positioned ^ ^1 ^ run function cartographer_mob_abilities:animations/laser/raycast
