execute as @s store result score @s ca.arrow_dmg run data get entity @s damage 10

execute as @s[scores={ca.point_blank=1},tag=!encumbering_arrow,tag=!trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 4
execute as @s[scores={ca.point_blank=2},tag=!encumbering_arrow,tag=!trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 8
execute as @s[scores={ca.point_blank=3},tag=!encumbering_arrow,tag=!trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 12

execute as @s[scores={ca.point_blank=1},tag=encumbering_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 2
execute as @s[scores={ca.point_blank=2},tag=encumbering_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 4
execute as @s[scores={ca.point_blank=3},tag=encumbering_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 6

execute as @s[scores={ca.point_blank=1},tag=trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 6
execute as @s[scores={ca.point_blank=2},tag=trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 12
execute as @s[scores={ca.point_blank=3},tag=trueshot_arrow] store result entity @s damage double 0.1 run scoreboard players remove @s ca.arrow_dmg 18