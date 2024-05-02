scoreboard players set @s ca.lifetime 1

execute store result score $dmg ca.focus run data get entity @s damage 100

scoreboard players operation $dmg ca.focus *= $ranged ca.focus
scoreboard players operation $dmg ca.focus /= $100 ca.CONSTANT


execute if score $dmg ca.focus matches 1.. store result entity @s damage double 0.01 run scoreboard players get $dmg ca.focus

tag @s add custom_arrow