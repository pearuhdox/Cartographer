scoreboard players set @s ca.lifetime 1

execute store result score @s ca.ce.true_x run data get entity @s Motion[0] 1000
execute store result score @s ca.ce.true_y run data get entity @s Motion[1] 1000
execute store result score @s ca.ce.true_z run data get entity @s Motion[2] 1000
execute store result score @s ca.ce.true_dmg run data get entity @s damage 1000

execute store result entity @s Motion[0] double 0.001 run scoreboard players operation @s ca.ce.true_x /= $2 ca.CONSTANT
execute store result entity @s Motion[1] double 0.001 run scoreboard players operation @s ca.ce.true_y /= $2 ca.CONSTANT
execute store result entity @s Motion[2] double 0.001 run scoreboard players operation @s ca.ce.true_z /= $2 ca.CONSTANT

execute store result entity @s damage double 0.0001 run scoreboard players operation @s ca.ce.true_dmg *= $20 ca.CONSTANT

tag @s add encumbering_arrow