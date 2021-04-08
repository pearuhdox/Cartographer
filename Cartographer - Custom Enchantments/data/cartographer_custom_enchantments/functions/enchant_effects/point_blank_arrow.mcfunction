execute as @s store result score @s helper_arrow_dmg run data get entity @s damage 10

execute as @s[scores={point_blank=1}] store result entity @s damage double 0.1 run scoreboard players remove @s helper_arrow_dmg 2
execute as @s[scores={point_blank=2}] store result entity @s damage double 0.1 run scoreboard players remove @s helper_arrow_dmg 4
execute as @s[scores={point_blank=3}] store result entity @s damage double 0.1 run scoreboard players remove @s helper_arrow_dmg 6

execute as @s[scores={point_blank=1..,helper_lifetime=7..}] run scoreboard players set @s point_blank 0
execute as @s[scores={point_blank=1..},nbt={inGround:1b}] run scoreboard players set @s point_blank 0

execute as @s[scores={helper_lifetime=..6}] at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.02 3 normal