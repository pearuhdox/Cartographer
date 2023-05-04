scoreboard players remove @s ca.deadeye_time 1

tp @s ^ ^ ^0.75

scoreboard players operation $frost ca.deadeye = @s ca.frost
scoreboard players operation $flame ca.deadeye = @s ca.flame

scoreboard players operation $trueshot ca.deadeye = @s ca.trueshot
scoreboard players operation $curse_encum ca.deadeye = @s ca.curse_encum

scoreboard players operation $power ca.deadeye = @s ca.power
scoreboard players operation $punch ca.deadeye = @s ca.punch

scoreboard players operation $sharpshot ca.deadeye = @s ca.sharpshot
scoreboard players operation $point_blank ca.deadeye = @s ca.point_blank

scoreboard players operation $deadeye ca.damage_queue = @s ca.damage_queue

execute if score @s ca.deadeye_time matches 3.. positioned ^ ^ ^1.5 as @e[type=#bb:hostile,distance=..2] at @s unless score @s ca.deadeye_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/deadeye/hit_found
execute unless score @s ca.deadeye_time matches 3.. run execute positioned ^ ^ ^1.5 as @e[type=#bb:hostile,distance=..3.5] at @s unless score @s ca.deadeye_time matches 1.. run function cartographer_custom_enchantments:enchant_effects/deadeye/hit_found

execute if score @s ca.deadeye_time matches 3.. positioned ~ ~-0.5 ~ run particle minecraft:large_smoke ^ ^ ^1.5 0.5 0 0.5 0.01 8 normal
execute unless score @s ca.deadeye_time matches 3.. positioned ~ ~-0.5 ~ run particle minecraft:large_smoke ^ ^ ^1.5 1.2 0 1.2 0.01 10 normal

#Reduce damage for point blank
execute if score @s ca.point_blank matches 1.. if score @s ca.damage_queue matches 7.. run scoreboard players operation @s ca.damage_queue -= @s ca.point_blank
execute if score @s ca.point_blank matches 1.. if score @s ca.damage_queue matches 7.. run scoreboard players remove @s ca.damage_queue 2


execute if score @s ca.deadeye_time matches 1 run kill @s