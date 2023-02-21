execute as @s store result score @s ca.arrow_dmg run data get entity @s damage 10

execute as @s[scores={ca.point_blank=1},tag=!encumbering_arrow,tag=!trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 2
execute as @s[scores={ca.point_blank=2},tag=!encumbering_arrow,tag=!trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 4
execute as @s[scores={ca.point_blank=3},tag=!encumbering_arrow,tag=!trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 6

execute as @s[scores={ca.point_blank=1},tag=encumbering_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 1
execute as @s[scores={ca.point_blank=2},tag=encumbering_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 2
execute as @s[scores={ca.point_blank=3},tag=encumbering_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 3

execute as @s[scores={ca.point_blank=1},tag=trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 3
execute as @s[scores={ca.point_blank=2},tag=trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 6
execute as @s[scores={ca.point_blank=3},tag=trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 9

#Added for Custom Attributes Self Code Compat
execute if score @s ca.point_blank matches 1 if score @s catt.proj_dmg matches 1.. run scoreboard players remove @s catt.proj_dmg 50
execute if score @s ca.point_blank matches 2 if score @s catt.proj_dmg matches 1.. run scoreboard players remove @s catt.proj_dmg 100
execute if score @s ca.point_blank matches 3.. if score @s catt.proj_dmg matches 1.. run scoreboard players remove @s catt.proj_dmg 150
execute if score @s[tag=catt.checked_point_blank] catt.proj_dmg matches 1.. run data modify entity @s damage set value 0.0d
execute if score @s ca.point_blank matches 3.. if score @s catt.proj_dmg matches 1.. run tag @s add catt.checked_point_blank

execute as @s[scores={ca.point_blank=1..,ca.lifetime=7..}] run scoreboard players set @s ca.point_blank 0
execute as @s[scores={ca.point_blank=1..},nbt={inGround:1b}] run scoreboard players set @s ca.point_blank 0

execute as @s[scores={ca.lifetime=..6}] at @s run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 3 2 normal
execute as @s[scores={ca.lifetime=6}] at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0.15 4 normal