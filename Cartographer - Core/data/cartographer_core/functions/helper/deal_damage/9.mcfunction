execute as @s store result score @s helper_health run data get entity @s Health 100

execute as @s if entity @s[scores={helper_health=..900}] run kill @s

execute as @s unless entity @s[scores={helper_health=..900}] store result entity @s Health float 0.01 run scoreboard players remove @s helper_health 900