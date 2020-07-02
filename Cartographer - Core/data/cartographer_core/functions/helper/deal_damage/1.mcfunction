execute as @s store result score @s helper_health run data get entity @s Health

execute as @s if entity @s[scores={helper_health=..0}] run kill @s

execute as @s unless entity @s[scores={helper_health=..0}] store result entity @s Health float 1 run scoreboard players remove @s helper_health 1