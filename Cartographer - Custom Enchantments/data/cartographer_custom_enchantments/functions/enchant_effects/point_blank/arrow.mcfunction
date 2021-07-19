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

execute as @s[scores={ca.point_blank=1..,ca.lifetime=7..}] run scoreboard players set @s ca.point_blank 0
execute as @s[scores={ca.point_blank=1..},nbt={inGround:1b}] run scoreboard players set @s ca.point_blank 0

execute as @s[scores={ca.lifetime=..6}] at @s run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 3 2 normal
execute as @s[scores={ca.lifetime=6}] at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0.15 4 normal