scoreboard players set @s ca.lifetime 1

execute if score $ranged ca.point_blank matches 1 run scoreboard players set @s ca.point_blank 1
execute if score $ranged ca.point_blank matches 2 run scoreboard players set @s ca.point_blank 2
execute if score $ranged ca.point_blank matches 3 run scoreboard players set @s ca.point_blank 3

execute if entity @s[scores={ca.point_blank=1..}] run tag @s add custom_arrow

execute as @s store result score @s ca.arrow_dmg run data get entity @s damage 10

execute if score $ranged ca.point_blank matches 1 as @s store result entity @s damage double 0.1 run scoreboard players add @s ca.arrow_dmg 14
execute if score $ranged ca.point_blank matches 2 as @s store result entity @s damage double 0.1 run scoreboard players add @s ca.arrow_dmg 28
execute if score $ranged ca.point_blank matches 3 as @s store result entity @s damage double 0.1 run scoreboard players add @s ca.arrow_dmg 42